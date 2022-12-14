;
; disk test
;

rsym ../../bios.sym

;DSELBF	EQU	$004E
;CR	EQU	$0D
;--------------------
	org $0100


START:	JP	RECOVER

SCRTCH:	DEFS	128			; local stack area
SPAREA	EQU	$

	; include routines to print ascii values
include ../../ASM/bit2040.asm

;START:	jp	STEP4
;
NDRIVE	EQU	1
SECSIZ	EQU	256
SECNUM	EQU	10
NTRACK	EQU	40
NTRYS	EQU	5

BS	EQU	08H		;ASCII 	backspace
TAB	EQU	09H		;	tab
LF	EQU	0AH		;	line feed
FORMF	EQU	0CH		;	form feed
CR	EQU	0DH		;	carriage return
ESC	EQU	1BH		;       escape
CTLX	EQU	'X' and	1fh	;	control	x - delete line
CTLC	EQU	'C' and	1fh	;	control	c - warm boot
EOF	EQU	'Z' and	1fh	;	control	z - logical eof
QUOTE	EQU	27H		;	quote
TILDE	EQU	7EH		;	tilde
DEL	EQU	7FH		;	del

BDOSA	EQU	5
CTLC	EQU	'C' and	1fh	;	control	c - warm boot


STMSG1:	defb	" Trk.: ",0
STMSG2:	defb	" Sec.: ",0
RSTMOK:	defb	"  Read -> ",0
WSTMOK:	defb	" Write -> ",0
VSTMOK:	defb	"Verify -> ",0
ESTMOK:	defb	"ERROR! -> ",0
SGON:	DEFB	"Z80 DarkStar - NE-DOS DISK IMAGE TRANSFER.",CR,LF
	DEFB	"(c) 2006 Piergiorgio Betti <pbetti@lpconsul.net>",CR,LF
MCRLF:	DEFB	CR,LF,0
SDCHO:	DEFB	"Select SOURCE drive : ",$00
DDCHO:	DEFB	"Select DESTINATION drive : ",$00
MEQUAL:	DEFB	"** Source and destination cannot be the same.",CR,LF,0
MCONF:	DEFB	CR,LF,"Press any key to start, CTRL+C to abort.  ",0
MBFSZ:	DEFB	"Buffer size   : ",0
MTRSZ:	DEFB	"Stored tracks : ",0
MCOMP:	DEFB	CR,LF,"Copy complete.",CR,LF,0

;
;       begin the load operation
;
RECOVER:
	LD	SP,SPAREA		; init stack
	LD	HL,SGON
	CALL	ZSDSP
	LD	A,(TMPBYTE)
	BIT	7,A
	JR	Z,RAFSVD
	LD	A,1
	LD	(RAFS),A		; save RAF status
RAFSVD:
	LD	A,(TMPBYTE)
	RES	7,A
	LD	(TMPBYTE),A		; ... and clear it
; 	CALL	TTYI
; 	CP	CTLC
; 	JP	Z,EXIT

	; get source drive
DRVID:	LD	HL,SDCHO		; ask for drive id
	CALL	ZSDSP			;
	CALL	GCHR			;
	CP	$03			; CTRL+C ?
	JP	Z,EXIT			; exit
	CP	'A'			; is A -> P ?
	JP	M,DRVID			;
	CP	'Q'			;
	JP	P,DRVID			; no
	SUB	'A'			; makes number
	LD	(RDSK),A
	CALL	LFEED

	; get destination drive
DDRVID:	LD	HL,DDCHO		; ask for drive id
	CALL	ZSDSP			;
	CALL	GCHR			;
	CP	$03			; CTRL+C ?
	JP	Z,EXIT			; exit
	CP	'A'			; is A -> P ?
	JP	M,DDRVID			;
	CP	'Q'			;
	JP	P,DDRVID		; no
	SUB	'A'			; makes number
	LD	(DDSK),A
	CALL	LFEED
	LD	HL,DDSK
	LD	A,(RDSK)		; are equals ?
	CP	(HL)
	JR	NZ,CONFIRM
	LD	HL,MEQUAL
	CALL	ZSDSP
	JR	DRVID

CONFIRM:
	LD	HL,MCONF
	CALL	ZSDSP
	CALL	GCHR			;
	CP	$03			; CTRL+C ?
	JP	Z,EXIT			; exit
	CALL	LFEED
	CALL	LFEED

	; how many blocks ?
	LD	DE,ENDSTO
	LD	HL,(6)			; bios base
	SBC	HL,DE			; available space in HL

	PUSH	HL			; save in stack
	LD	HL,MBFSZ
	CALL	ZSDSP
	POP	BC			; move size in BC
	PUSH	BC			; saves again
	CALL	BN2A16			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	CALL	LFEED
	POP	BC			; re-get
	LD	DE,SECSIZ*SECNUM	; block (track) size
	CALL	LDIV16			; calculate
	LD	A,C
	LD	(ABLK),A
	CALL	BIN2A8
	LD	HL,MTRSZ
	CALL	ZSDSP
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	CALL	LFEED
	CALL	LFEED

	; read start
	LD	HL,0			; init read counters
	LD	(RTRK),HL
	LD	(DTRK),HL
	LD	(VTRK),HL
	INC	HL
	LD	(RSEC),HL
	LD	(DSEC),HL
	LD	(VSEC),HL
	LD	HL,ENDSTO
	LD	(RDMA),HL
	XOR	A
	LD	(CBLK),A

STEP1:
	CALL	TTYQ
	CP	CTLC
	JP	Z,EXIT

	LD	BC,(RDMA)
	CALL	SETSEK
	CALL	READ256

	CALL	RAVMSG
STEP2:
; 	CALL	GCHR
	LD	HL,(RDMA)	; next DMA addr.
	LD	DE,SECSIZ
	ADD	HL,DE
	LD	(RDMA),HL

	LD	HL,RSEC
	INC	(HL)
	LD	A,(RSEC)
	CP	SECNUM+1	; EOT ?
	JR	Z, STEP3	; NXT TRK
	JR	STEP1		; NXT SEC
STEP3:
	LD	HL,RTRK		; EOD ?
	INC	(HL)
	LD	A,(RTRK)
	CP	NTRACK
	JR	Z,WRITEIMG

	LD	HL,CBLK		; buffer full ??
	INC	(HL)
	LD	A,(ABLK)
	CP	(HL)
	JR	Z,WRITEIMG

	LD	A,1
	LD	(RSEC),A	; LOOP
	JP	STEP1

	; write start
WRITEIMG:
; 	CALL	LFEED
; 	CALL	WBGSAV
	LD	A,NTRYS
	LD	(TRYC),A
	LD	HL,ENDSTO
	LD	(RDMA),HL
	XOR	A
	LD	(CBLK),A
WRTRET:
	LD	A,1
	LD	(DSEC),A	; LOOP
	CALL	WBGSAV
STEP4:
	CALL	TTYQ
	CP	CTLC
	JP	Z,EXIT

	LD	BC,(RDMA)
	CALL	WSETSEK
	CALL	WRITE256

	CALL	WAVMSG
STEP5:
; 	CALL	GCHR
	LD	HL,(RDMA)	; next DMA addr.
	LD	DE,SECSIZ
	ADD	HL,DE
	LD	(RDMA),HL

	LD	HL,DSEC
	INC	(HL)
	LD	A,(DSEC)
	CP	SECNUM+1	; EOT ?
	JR	Z, STEP6	; NXT TRK
	JR	STEP4		; NXT SEC
STEP6:
	CALL	VERIFY
	OR	A
	JR	NZ,WRTRET
	LD	HL,DTRK		; EOD ?
	INC	(HL)
	LD	A,(DTRK)
	CP	NTRACK
	JR	Z,CPYCMP

	LD	HL,CBLK		; buffer empty ??
	INC	(HL)
	LD	A,(ABLK)
	CP	(HL)
	JR	Z,NXTBUF

	; CALL CHKTRK QUI!!!!!!!!
	LD	A,1
	LD	(DSEC),A	; LOOP
	CALL	WBGSAV
	JP	STEP4

	; perform another cycle
NXTBUF:
; 	CALL	VERIFY
	LD	HL,ENDSTO
	LD	(RDMA),HL
	XOR	A
	LD	(CBLK),A
	LD	A,1
	LD	(RSEC),A	; LOOP
; 	CALL	LFEED
	JP	STEP1

CPYCMP:
; 	CALL	VERIFY
	LD	HL,MCOMP
	CALL	ZSDSP
	JP	EXIT1
RECOVEND:
	JP	EXIT

LFEED:
	LD	HL,MCRLF
	CALL	ZSDSP
	RET

VERIFY:
	LD	HL,(BDMA)
	LD	(RDMA),HL
; 	XOR	A
; 	LD	(CBLK),A
	LD	A,1
	LD	(VSEC),A	; LOOP
VSTEP1:
	CALL	TTYQ
	CP	CTLC
	JP	Z,EXIT

	LD	BC,BUFDMA
	CALL	VSETSEK
	CALL	READ256

	LD	HL,BUFDMA
	LD	DE,(RDMA)
	LD	BC,SECSIZ
CTBUF:	LD	A,(DE)
	CPI
	JR	NZ,CTNOK
	INC	DE
	LD	A,B
	OR	C
	JR	NZ,CTBUF
	JR	VSTEP2
CTNOK:
	LD	HL,ESTMOK
	CALL	VAVMS1
	LD	C,LF
	CALL	TTYO
	CALL	LFEED
	LD	A,(TRYC)
	DEC	A
	JP	Z,EXIT
	LD	(TRYC),A
	CALL	WBGRST
	LD	A,1
	RET

VSTEP2:
	CALL	VAVMSG
; 	CALL	GCHR
	LD	HL,(RDMA)	; next DMA addr.
	LD	DE,SECSIZ
	ADD	HL,DE
	LD	(RDMA),HL

	LD	HL,VSEC
	INC	(HL)
	LD	A,(VSEC)
	CP	SECNUM+1	; EOT ?
	JR	Z, VSTEP3	; NXT TRK
	JR	VSTEP1		; NXT SEC
VSTEP3:
	XOR	A
	RET
; 	LD	HL,VTRK		; EOD ?
; 	INC	(HL)
; 	LD	A,(VTRK)
; 	CP	NTRACK
; 	RET	Z
;
; 	LD	HL,CBLK		; buffer full ??
; 	INC	(HL)
; 	LD	A,(ABLK)
; 	CP	(HL)
; 	RET	Z
;
; 	LD	A,1
; 	LD	(VSEC),A	; LOOP
; 	JP	VSTEP1


SETSEK:
; 	LD	BC,BUFDMA		; set DMA to buffer
	CALL	BSETDMA
	LD	A,(RDSK)		; set disk
	LD	C,A
	CALL	BSELDSK			; ... hw
	CALL	SELDSK			; ... logical
	LD	BC,(RTRK)		; set track
	CALL	BSETTRK
	LD	A,(RSEC)		; set sector
	DEC	A
	LD	(HSTLGS),A
	RET

WSETSEK:
; 	LD	BC,BUFDMA		; set DMA to buffer
	CALL	BSETDMA
	LD	A,(DDSK)		; set disk
	LD	C,A
	CALL	BSELDSK			; ... hw
	CALL	SELDSK			; ... logical
	LD	BC,(DTRK)		; set track
	CALL	BSETTRK
	LD	A,(DSEC)		; set sector
	DEC	A
	LD	(HSTLGS),A
	RET

WBGSAV:
	LD	A,(DDSK)		; set disk
	LD	(BDSK),A
	LD	BC,(DTRK)		; set track
	LD	(BTRK),BC
	LD	BC,(DSEC)		; set sector
	LD	(BSEC),BC
	LD	BC,(RDMA)		; set sector
	LD	(BDMA),BC
	LD	A,(CBLK)		; set disk
	LD	(BBLK),A
	RET

WBGRST:
	LD	A,(BDSK)		; set disk
	LD	(DDSK),A
	LD	BC,(BTRK)		; set track
	LD	(DTRK),BC
	LD	(VTRK),BC
	LD	BC,(BSEC)		; set sector
	LD	(DSEC),BC
	LD	BC,(BDMA)		; set sector
	LD	(RDMA),BC
	LD	A,(BBLK)		; set disk
	LD	(CBLK),A
	RET

VSETSEK:
; 	LD	BC,BUFDMA		; set DMA to buffer
	CALL	BSETDMA
	LD	A,(DDSK)		; set disk
	LD	C,A
	CALL	BSELDSK			; ... hw
	CALL	SELDSK			; ... logical
	LD	BC,(DTRK)		; set track
	CALL	BSETTRK
	LD	A,(VSEC)		; set sector
	DEC	A
	LD	(HSTLGS),A
	RET

RAVMSG:
	LD	HL,RSTMOK
	CALL	ZSDSP			;
	LD	HL,STMSG1		; inform user about progress
	CALL	ZSDSP			;
	LD	A,(RTRK)		; track
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	HL,STMSG2		;
	CALL	ZSDSP			;
	LD	A,(RSEC)		; side
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	C,' '
	CALL	TTYO
	LD	C,CR			;
	CALL	TTYO			; at beginning of line
	RET

WAVMSG:
	LD	HL,WSTMOK
	CALL	ZSDSP			;
	LD	HL,STMSG1		; inform user about progress
	CALL	ZSDSP			;
	LD	A,(DTRK)		; track
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	HL,STMSG2		;
	CALL	ZSDSP			;
	LD	A,(DSEC)		; side
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	C,' '
	CALL	TTYO
	LD	C,CR			;
	CALL	TTYO			; at beginning of line
	RET

VAVMSG:
	LD	HL,VSTMOK
VAVMS1:	CALL	ZSDSP			;
	LD	HL,STMSG1		; inform user about progress
	CALL	ZSDSP			;
	LD	A,(DTRK)		; track
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	HL,STMSG2		;
	CALL	ZSDSP			;
	LD	A,(VSEC)		; side
	LD	C,A			;
	CALL	BIN2A8			;
	LD	HL,OVAL16		;
	CALL	ZSDSP			;
	LD	C,' '
	CALL	TTYO
	LD	C,CR			;
	CALL	TTYO			; at beginning of line
	RET

MTRM:	DEFB	CR,LF,CR,LF,"*** TERMINATED...",CR,LF,0
EXIT:
	LD	HL,MTRM
	CALL	ZSDSP
EXIT1:
	LD	A,(RAFS)
	OR	A
	JP	Z,$0000
	LD	A,(TMPBYTE)
	SET	7,A
	LD	(TMPBYTE),A
	JP	$0000

GCHR:
	CALL	TTYI			; take from console
	AND	$7F			;
	CP	$60			;
	JP	M,GCDSP			; verify alpha
	CP	$7B			;
	JP	P,GCDSP			;
	RES	5,A			; convert to uppercase
GCDSP:	PUSH	BC			;
	LD	C,A			;
	CALL	TTYO			;
	LD	A,C			;
	POP	BC			;
	RET				;


ZSDSP:	LD	A,(HL)			; pick char pointed by HL
	OR	A			; is the terminating NUL ?
	RET	Z			; yes
	PUSH	HL			; no
	LD	C,A			;
	CALL	TTYO			; display it
	POP	HL			;
	INC	HL			;
	JP	ZSDSP			;

TTYO:
	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL
	LD	E,C
	LD	C,2
	CALL 	BDOSA
	POP	HL
	POP	DE
	POP	BC
	POP	AF
	RET

TTYI:
	PUSH	BC
	PUSH	DE
	PUSH	HL
TTYI00:	LD	C,6
	LD	E,0FFH
	CALL 	BDOSA
	AND	7FH
	JR	Z,TTYI00
	POP	HL
	POP	DE
	POP	BC
	RET
TTYQ:
	PUSH	BC
	PUSH	DE
	PUSH	HL
	LD	C,11
	CALL	BDOSA
	AND	A
	LD	C,6
	LD	E,0FFH
	CALL	NZ,BDOS
	POP	HL
	POP	DE
	POP	BC
	AND	7FH
	RET

;;
;; DIV16 - 16 BY 16 BIT DIVISION
;;
;; in BC = dividend
;; in DE = divisor
;; ----
;; out BC = quotient
;; out HL = remainder
LDIV16:	LD	A,B
	LD	B,16
	LD	HL,0
LDIVLO:	RL	C
	RLA
	ADC	HL,HL
	SBC	HL,DE
	JR	NC,$+3
	ADD	HL,DE
	CCF
	DJNZ	LDIVLO
	RL	C
	RLA
	LD	B,A
	RET

PHYDOS:
	LD	HL,TR256
	LD	A,(HSTLGS)
	LD	C,A
	LD	B,0
	ADD     HL,BC			; HL = trans sec offset
	LD      L,(HL)
	LD      H,0			; HL = trans(sector)
	LD	(FSECBUF),HL
	RET				; with value in HL

READ256:
	CALL	PHYDOS
	PUSH	IX
	LD	IX,PHY256		; IX point to current CHS info
	LD	A,(FDRVBUF)		; get active drive
	CP	2			; is floppy ?
	JR	C,NRDFLO		; yes
	CP	14			; is hard disk ?
	JR	C,NRDVRT		; yes (fake call: HDD aren't implemented yet)
	JR	NRDVRT			; then is a virtual drive
	;
NRDFLO:	CALL	CHKSID			; side select
	CALL	DRVSEL			; activate driver
	CALL	BREAD			; do read
	LD	(ERFLAG),A		; store error status
	POP	IX
	RET
	;
NRDVRT:	CALL	VDSKRD			; call par. read
	BIT	0,A			; adjust Z flag for error test
	LD	(ERFLAG),A		; store error status
	POP	IX
	RET

WRITE256:
 	CALL	PHYDOS
	PUSH	IX
	LD	IX,PHY256		; IX point to current CHS info
	LD	A,(FDRVBUF)		; get active drive
	CP	2			; is floppy ?
	JR	C,NWRFLO		; yes
	CP	14			; is hard disk ?
	JR	C,NWRVRT		; yes (fake call: HDD aren't implemented yet)
	JR	NWRVRT			; then is a virtual drive
	;
NWRFLO:	LD	A,(FTRKBUF)
	LD	E,A			; save FTRKBUF in case of side switch
	LD	D,RAFRTR		; # retrys
	;
NWRFLT:	CALL	CHKSID			; side select
	CALL	DRVSEL			; activate drive
	CALL	BWRITE			; do write
	LD	(ERFLAG),A		; store error status
	JR	NZ,NWRFL2		; Ouch !!
	;
	LD	A,(TMPBYTE)		; check for read-after-write on
	BIT	7,A
	JR	Z,NWRFL2		; off, normal operations
	; read-after-write check
	LD	A,E
	LD	(FTRKBUF),A		; restore FTRKBUF
	CALL	CHKSID			; side select
	CALL	DRVSEL			; activate drive
	CALL	FSEEK			; re-seek
	JR	NZ,NWRFL0
	;
	LD	HL,(FRDPBUF)
	LD	A,FDCREADC		; load read command
	CALL	SFDCCMD			; send to 1771
	JR	NWRAF1
NWRAF2:	RRCA
	JR	NC,NWRAFE
NWRAF1:	IN	A,(FDCCMDSTATR)
	BIT	1,A			; sec found
	JR	Z,NWRAF2
	IN	A,(FDCDATAREG)		; data in
	CP	(HL)			; check it
	JR	NZ,NWRFER		; check failed !
	INC	HL
	JP	NWRAF1
NWRAFE:	CALL	GFDCSTAT
	AND	$5C			; test for other errors
NWRFL0:
	JR	Z,NWRFL2			; OK
NWRFL3:	XOR	A
	OUT	(FDCDRVRCNT),A
	INC	A
	LD	(ERFLAG),A		; store error status
NWRFL2:	POP	IX
	RET
NWRFER:
	DEC	D			; retry ?
	JR	Z,NWRFL3		; no, unrecoverable
	LD	A,E
	LD	(FTRKBUF),A		; restore FTRKBUF
	JR	NWRFLT			; yes, once more
	;
NWRVRT:	CALL	VDSKWR			; call par. write
	BIT	0,A			; adjust Z flag for error test
	LD	(ERFLAG),A		; store error status
	POP	IX
	RET

ENDTXT	EQU	$

RDSK:	DEFB	NDRIVE
DDSK:	DEFB	0
BDSK:	DEFS	1
DSEC:	DEFW	1
RSEC:	DEFW	1
VSEC:	DEFW	1
BSEC:	DEFS	2
RTRK:	DEFW	0
DTRK:	DEFW	0
VTRK:	DEFW	0
BTRK:	DEFS	2
ABLK:	DEFB	0
CBLK:	DEFB	0
BBLK:	DEFS	1
RDMA:	DEFW	0
BDMA:	DEFS	2
RAFS:	DEFB	0
TRYC:	DEFB	NTRYS
BUFDMA:	DEFS	SECSIZ

	; 256 byte/sec. native sector translation table (skew = 6)
; TR256:	DEFB	1,7		 	; sector 1,2
; 	DEFB	3,9		 	; sector 3,4
; 	DEFB	5,2		 	; sector 5,6
; 	DEFB	8,4		 	; sector 7,8
; 	DEFB	10,6		 	; sector 9,10
	; 256 byte/sec. native sector translation table (skew = 0)
TR256:	DEFB	1,2		 	; sector 1,2
	DEFB	3,4		 	; sector 3,4
	DEFB	5,6		 	; sector 5,6
	DEFB	7,8		 	; sector 7,8
	DEFB	9,10		 	; sector 9,10
	;----------------------------------------------
	; Native size ported to 3,5" 80 track double side drive
	; (256 * 10 * 40)
	; non-standard part (Phisical CHS infos)
PHY256:	DEFW	10			; sectors per track
	DEFW	256			; sector lenght
	DEFB	2			; heads
	DEFW	40			; tracks
	DEFB	1			; deblock shift
	DEFB	1			; deblock mask
	DEFB	16			; 128 byte sectors per block

DPBDOS:	DEFW	TR256, 0000
	DEFW	0000,  0000
	DEFW	0000,  0000
	DEFW	0000,  0000

ENDSTO	EQU	$


	END
