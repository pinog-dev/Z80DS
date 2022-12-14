	;NAME VDIAG
	;
	;VERSION 1.0  3/17/78
	;RUNS ON Z80, 800, OR 8085
	;
	ORG 0F900H
	;
	;BIOS LINKAGES
	;
BIOS	EQU	0F000H
CSE	EQU	BIOS+6
CIE	EQU	BIOS+9
COE	EQU	BIOS+0CH
HME	EQU	BIOS+18H
RDE	EQU	BIOS+27H
WRE	EQU	BIOS+2AH
LDE	EQU	BIOS+2DH
SVE	EQU	BIOS+30H
FMATE	EQU	BIOS+33H
SCANE	EQU	BIOS+36H
PTXTE	EQU	BIOS+39H
PACCE	EQU	BIOS+3CH
NSCTRS	EQU	BIOS+3FH
NTRKS	EQU	BIOS+40H
SKNCMD	EQU	BIOS+46H
;
RBASE	EQU	0	; RAM START
TADDR	EQU	RBASE+40H
UNIT	EQU	RBASE+42H
SCTR	EQU	RBASE+43H
TRK	EQU	RBASE+44H
NREC	EQU	RBASE+45H
ERMASK	EQU	RBASE+46H
ERSTAT	EQU	RBASE+47H
IDSV	EQU	RBASE+48H
CMDSV	EQU	RBASE+4CH
RQST	EQU	RBASE+39H
RANDS	EQU	RBASE+38H
NUMB	EQU	RBASE+3AH
;
BFFR1	EQU	RBASE+800H
BFFR2	EQU	RBASE+880H
USRSP	EQU	RBASE+80H
NBYTES	EQU	128
;
X	EQU	60H
STATUS	EQU	X+4
CMD	EQU	X+4
DATA	EQU	X+7
;
; DISK DRIVE EVALUATION EXEC
;
DEXEC:	LXI	SP,USRSP
	LXI	H,MSG1
	CALL	PTXTE	; "ENTER REQUEST #, DRIVE #"
	CALL	SCANE
	JNZ	INERR
	MOV	A,L
	STA	UNIT
	MOV	A,H
	STA	RQST
	CALL	DECODE	; DECODE AND EXECUTE CMD
	CALL	HME
	LXI	H,MSG3
	CALL	PTXTE	; "TASK COMPLETE"
	JMP	DEXEC
	;
INERR	MVI	C,'?'
	CALL	COE
	CALL	CRLF
	JMP	DEXEC
	;
MSG1	DB	'TEST#DRV# (TTDD): ',3
;
MSG3	DB	'TASK DONE',0DH,0AH,03
;
; DECODE REQUEST AND EXECUTE IT
;
DECODE	CPI	0
	JZ	TSTSK	; SEEK TEST
	CPI	1
	JZ	DIAG
	CPI	2
	JZ	DIAG
	CPI	3
	JZ	DIAG
	CPI	4
	JZ	DIAG
	CPI	5
	JZ	FORMT
	CPI	10H
	JZ	LOAD
	CPI	11H
	JZ	SAVE
	CPI	0FFH
	RNZ
	LXI	H,MSG2
	CALL	PTXTE
	CALL	SCANE
	PCHL
;
;
MSG2	DB	'ADDRESS: ',3
;
;
;
; FORMAT A DISKETTE
;
;
FORMT	XRA	A
	STA	TRK
	INR	A
	STA	SCTR
	CALL	HME
FORMT1	CALL	FMATE
	JNZ	ERROR
	LDA	TRK
	INR	A
	STA	TRK
	MOV	B,A
	LDA	NTRKS
	CMP	B
	JNZ	FORMT1
	RET
;
;
;
;
; ERROR PRINT ROUTINE
;
;
ERROR	LXI	H,ERMSG
	CALL	PTXTE	; "DISK ERROR ..."
	LDA	CMDSV
	CALL	PACCE	; PRINT COMMAND
	CALL	SPACE	
	LDA	ERSTAT
	CALL	PACCE	; PRINT STATUS
	CALL	SPACE
	LDA	UNIT
	CALL	PACCE	; UNIT #
	CALL	SPACE
	LDA	TRK
	CALL	PACCE
	CALL	SPACE
	LDA	SCTR
	CALL	PACCE
	CALL	CRLF
	RET
;
;
ERMSG	DB	'CMD STAT DRV TRK SCTR> ',3
;
;
;
;
; READ / WRITE DIAGNOSTIC
; CONTINUES UNTIL A '.' IS ENTERED FROM  KEYBOARD
;
;
;
DIAG	XRA	A
	STA	TRK
	INR	A
	STA	SCTR
	JMP	DIAG1
DIA10	LXI	H,BFFR1
	SHLD	TADDR
	CALL	WRE
	CNZ	ERROR
DIA11	LXI	H,BFFR2
	SHLD	TADDR
	CALL	RDE
	CNZ	ERROR
	LDA	RQST
	CPI	2
	JZ	DIAG3
	CPI	3
	JZ	RINCR
	CPI	4
	JZ	DINCR
	CALL	COMPR	; IF DIAG 1, COMPARE
DIAG3	LXI	H,SCTR
	INR	M	; INC SECTOR
	LDA	NSCTRS
	INR	A
	CMP	M
	JNZ	DIAG1	; IF NOT END OF TRK, JMP
	MVI	M,1	; SET TO SCTR 1
	INX	H	; POINT TO TRK
	INR	M	; INC TRK #
DIAG4	LDA	NTRKS
	CMP	M
	JNZ	DIAG1
	MVI	M,0	; SET TO TRK 00
	MVI	C,'P'
	CALL	COE	; PRINT 'P' EVERY COMPLETE PASS
DIAG1	NOP!NOP!NOP!NOP!NOP!
	IN	1
	ANI	7FH	;STRIP PARITY
	CPI	1BH	;ESCAPPE
	RZ
DIAG2	LDA	RQST
	CPI	2
	JZ	DIA11
	CPI	1
	JZ	DIA10
	CPI	3
	JZ	DIA10
	JMP	DIA10
;
;
;
COMPR	LXI	H,BFFR1
	LXI	D,BFFR2
	MVI	B,NBYTES
CMPR1	LDAX	D
	CMP	M
	MVI	A,0FFH
	STA	ERSTAT
	JNZ	ERROR
	INX	H
	INX	D
	DCR	B
	JNZ	CMPR1
	CALL	INCRD
	RET
;
;
;
;
;
;
;
INCRD	LXI	D,BFFR1
	MVI	B,NBYTES/2
	LDA	RANDS
	CPI	1
	JZ	HERE
	INX	D
HERE	CALL	PRAND
	STAX	D
	INX	D
	INX	D
	DCR	B
	JNZ	HERE
	LDA	RANDS
	CPI	1
	JZ	SKIP
	MVI	A,1
	STA	RANDS
	RET
SKIP	MVI	A,0
	STA	RANDS
	RET
;
;
;
DINCR	CALL	COMPR
	CALL	PRAND
	INR	M	; INC SEED
	ANI	1
	STA	UNIT	; RANDOM UNIT
	JMP	RINCR1
RINCR	CALL	COMPR
RINCR1	LDA	NSCTRS
	INR	A
	MOV	B,A
	CALL	PRAND
	ANI	01FH
	ORA	A
	JZ	RINCR1	; SECTOR 0 ILLEGAL
	STA	SCTR
	CMP	B
	JNC	RINCR1	;IF NO>NSCTRS TRY AGAIN
ONCM	LDA	NTRKS
	MOV	B,A
	CALL	PRAND
	ANI	07FH
	STA	TRK
	CMP	B
	JNC	ONCM	; IF NO>NTRKS TRY AGAIN
	JMP	DIAG1
;
;
;
; PSEUDO RANDOM NUMBER GENERATOR
;
;
PRAND	PUSH	D
	PUSH	B
	LXI	H,NUMB	; LOCATION OF SEED
	MVI	C,0
	MOV	A,M
	ANA	A
	JNZ	NEXT
	MVI	A,0FFH
NEXT	MOV	D,A
	ANI	1DH
	JPE	PAR
	MVI	C,80H
PAR	MOV	A,D
	RRC
	ANI	7FH
	ADD	C
	MOV	M,A
	POP	B
	POP	D
	RET
;
;
;
;
TSTSK	CALL	HME
	LDA	NTRKS
	DCR	A
	OUT	DATA
	LDA	SKNCMD	; SEEK ( NO VERIFY )
	OUT	CMD
	CALL	CSE
	JZ	TSTSK
	CALL	CIE
	CPI	'.'
	RZ
	JMP	TSTSK
;
;
;
;
CRLF	MVI	C,0DH
	CALL	COE
	MVI	C,0AH
	JMP	COE
;;
;
SPACE	MVI	C,' '
	JMP	COE
;
;
;
;
;
;
; LOAD 'N' SECTORS
;
;
LOAD	LXI	H,LDMSG
	CALL	STUFF
	JMP	LDE
;
LDMSG	DB	'ENTER LOAD ADDR: ',3
;
;
;
;
; SAVE 'N' SECTORS
;
;
SAVE	LXI	H,SVMSG
	CALL	STUFF
	JMP	SVE
;
SVMSG	DB	'ENTER SAVE ADDR: ',3
;
;
;
;
; STUFF DISK PARAMS
;
;
;
STUFF	CALL	PTXTE
	CALL	SCANE
	JNZ	INERR
	SHLD	TADDR
	LXI	H,TSMSG
	CALL	PTXTE
	CALL	SCANE
	JNZ	INERR
	SHLD	SCTR	; SECTOR & TRACK
	LXI	H,SZMSG
	CALL	PTXTE
	CALL	SCANE
	JNZ	INERR
	MOV	A,L
	STA	NREC	; # OF SECTORS
	RET
;
TSMSG	DB	'ENTER TRACK/SECTOR (TTSS): ',3
;
SZMSG	DB	'ENTER NUMBER OF SECTORS (NN):',3
	END
