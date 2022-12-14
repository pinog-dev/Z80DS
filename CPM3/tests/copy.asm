	TITLE	"ZSDOS File Copy Program"
;=======================================================================;
;				C O P Y					;
;-----------------------------------------------------------------------;
; Derived from MCOPY 4.0 by Richard Conn with Mods by Bruce Morgen(4.8),;
; Howard Goldstein (4.6), Michael Bate (4.4,5), Steven M. Cohen (4.3),	;
; Jay Sage, and Joe Wright (4.2)					;
;-----------------------------------------------------------------------;
; Changes for ZSDOS and DSLIB Copyright (C) 1988  by Harold F. Bower	;
;			All rights reserved				;
; This program is made available for non-commercial use.  Any commercial;
; use must be authorized by the express written consent of the author.	;
;-----------------------------------------------------------------------;
; COPY is a program which copies files between drives or between User	;
; areas.  If Date/Time Stamping is used, Create and Modify Stamps will	;
; be preserved.  Stamps are accessed through DSLIB routines.		;
;									;
; COPY MUST be linked with The Libraries, Version 4 as:			;
;									;
;	ZML COPY,DSLIB/,Z3LIB/,SYSLIB/					;
;									;
; Revisions:								;
;	1.72- Replaced DDIRQ & DDIRPACK library routines with source	;
;		modified to handle Joe Wright's NZTIME stamps along	;
;		with P2Dos, DateStamper(tm) and DosDisk(tm) Stamps.	;
;						  17 Jul 93  HFB	;
;	1.71- Deleted unique code in favor of GETMTOP/GZMTOP, deleted	;
;		ZFPARS subroutine for calls to ZPRSFN.	24 Mar 91, HFB	;
;	1.70- Added separate existence test for R/O files controlled by	;
;		new O switch.  R/O source files not erased by X option. ;
;		M option no longer restricts copy to one group of       ;
;		files.  Set attributes call only done when absolutely   ;
;		necessary for speed improvement.  Disk reset done for	;
;		all DOS's to ensure proper operation under DOSDISK or	;
;		SPEEDUP RSX.  Initialization improved; CRASHES UNDER	;
;		vanilla CCP fixed.  Top of memory calculation uses	;
;		extended environment if available.  Date comparisons	;
;		now done on all systems that support stamping, not just	;
;		ZSDOS.  Bug affecting ZRDOS Public restoration fixed.	;
;		Unnecessary external declarations removed.		;
;							1-9 Mar 91, HG	;
;	1.64- Changed local stack calculations		23 Jul 89, HFB	;
;	1.63- Corrected operation w/"vanilla" CP/M	16 Jul 89, HFB	;
;	1.62- Fixed not restoring entry DU w/o ZCPR3	 7 Jun 89, HFB	;
;	1.61- Fixed error in Help Name printout		 3 Jun 89, HFB	;
;	1.6 - Modified to operate without ZCPR3, maximum use of Vers 4	;
;		libraries, auto-search for COPY.CFG.	26 May 89, HFB	;
;	1.5 - Fixed obscure bug in buffer calcs, added Jay Sage's patch ;
;		to allow COPY DIR:FN.FT to copy to default DIR: rather	;
;		than BACKUP:, Added logic to inhibit /X if /M active.	;
;						  12 Mar-2 Apr 89, CWC  ;
;	1.4 - Corrected glitch in date comparisons	11 Dec 88, HFB	;
;	1.3 - Unlinked 'E' disable from 'R' and 'A', corrected lack of	;
;		sensing 'R' and 'X', Fall back to Create if no Modify	;
;		date, and print "undated" if neither present, ignore	;
;		erase with X-option if Verify Error.   3-5 Dec 88, HFB	;
;	1.2 - Added 'R' (Replace) option, changed 'X' option to Erase	;
;		source after copy. Release version	 2 Dec 88, HFB	;
;	1.1a- Fix glitch on DS only operation, allow rename in same	;
;		user area with different name		25 Nov 88, HFB	;
;	1.1 - Formal release version			17 Nov 88, HFB	;
;	1.0a-e -  Bug fix in E & N Options, Added Archive, Fixed /M bug	;
;		w/test in mcpy28, Restored CRC bypass if not verifying,	;
;		corrected glitch if no space on dest, Added File Exclude;
;		list, File rename, Archive only if file exists, test	;
;		dates on each file, Add Source open time to Access field;
;						 25 Sep-15 Nov 88, HFB	;
;	1.0 - Initial Release				18 Sep 88	;
;=======================================================================;

	include darkstar.equ

VERS	EQU	17		; Initial Release
rev	equ	'2'		; Bug fix revision
DATE	  MACRO
	DEFB	'17 Jul 93'	; Prompt Date for easy access
	  ENDM
CDATE	  MACRO
	DEFB	'18 Oct 14'	; Custom Prompt Date
	  ENDM
CVERS	EQU	11

; SPECIAL Constants

PLIM	EQU	4*48		; Size of buffer in pages (4 * nk)
				;	[may be changed]
FNSIZE	EQU	16		; Number of bytes in basic Nam.Typ fields
ESIZE	EQU	FNSIZE+15	; Number of bytes/entry + Date Stamps

; CP/M Constants

WB	EQU	0		; CP/M warm boot
BDOSE	EQU	WB+5		; Bdos entry point
FCB	EQU	WB+5CH		; Specified FCB
BUFF	EQU	WB+80H		; Default buffer and input line

; DOS Functions Used

SDMA	EQU	26		; Dos Command to set DMA transfer addr
SRCHF	EQU	17		; Dos Command to Search for First file match
SRCHN	EQU	18		; Dos Command to Search for Next file match

; ASCII Constants, et al

ON	EQU	0FFH		; On code
OFF	EQU	0		; Off code
CR	EQU	0DH		; <cr>
LF	EQU	0AH		; <lf>
TAB	EQU	09H		; Horizontal tab
CTRLC	EQU	'C'-'@'		; ^c
OPTC	EQU	'/'		; Option delimiter
OPTS	EQU	0000H		; Skippable option table value

; Library Routines used in this Program

	EXT	RETUD, LOGUD, PUTUD, GETUD, GETMTOP, INITFCB	; Syslib
	EXT	F$EXIST, SETDMA, BDOS, CIN, COUT, CONDIN, CRLF	;   "
	EXT	MOVEB, EPRINT, EPSTR, PFN1, F$DELETE, F$OPEN	;   "
	EXT	F$MAKE, F$CLOSE, F$READ, F$WRITE, PAFDC, CAPS	;   "
	EXT	CRC3INIT, CRC3CLR, CRC3UPD, CRC3DONE, CODEND	;   "
	EXT	DIRMAX, DIRBUF, DPARAMS, @FNCMP, SORT, SSBINIT	;(DDIRQ)

	EXT	Z3INIT, ZPRSFN, GETQUIET, GETEFCB		; Z3Lib
	EXT	GETMSG, PUTER2, STOPZEX, WHRENV			;   "
	EXT	DIRTDU, DUNDR, GZMTOP				;   "

	EXT	GSTAMP, PSTAMP, TIMINI, DOSTYP, TIMTYP, RCLOCK	; Dslib
	EXT	FINDCK, CKTDF, OPENTD, RWTD, CLOSTD, FSTNXT	;(DDIRQ)
	EXT	P2UTIM, M2UTIM, BIN2BCD				;(DDIRQ)

;------------------------------------------------------------------
; External ZCPR3 Environment Descriptor

	JP	START

	DEFB	'Z3ENV'		; This is a ZCPR3 utility
	DEFB	1		; External environment descriptor
Z3EADR:	DEFW	0001		; Dummy value to force WHRENV search

; This section aligns to locations needed for ZCNFG auto-search for
; configuration file name.  It is aligned to Type-4 header values.

	DEFW	0000		; Filler for ZCNFG file name offset
	DEFB	'COPY    ',0	; Search for COPY.CFG

; User-Definable Initial Flag Conditions
;  The default conditions for MCOPY may be readily patched by the user
;  via DDT for his desired default values

DEFTBL:
DVERFLG: DEFB	ON		; Set verify
DINSP:	 DEFB	OFF		; Set no inspect
DSYSEXC: DEFB	OFF		; Set no $SYS file exclusion by default
DNCOPY:	 DEFB	OFF		; Set no multiple copies by default
DEXIST:	 DEFB	ON		; Existence testing on
DEXTRO	 DEFB	ON		; Existence testing, R/O files, on
DARCHV:	 DEFB	OFF		; Do not operate in Archive mode
DREPL:	 DEFB	OFF		; Do Not restrict copy to Existing files
;---- All above entries copied to CPYTBL
TYPDAT:	 DEFB	OFF		; Type of stamps to select in Source
				; OFF = P2D/DosDisk, ON = DateStamper
USEDDU:	 DEFB	OFF		; If on, default DU: given in next 3 fields
DDUSER:	 DEFB	0		; Default destination user is 0
DDDISK:	 DEFB	'B'-'A'		; Default destination disk is B
BACKDIR: DEFB	'BACKUP  '	; Name of backup directory
EXCLUD:	 DEFB	'!!?????????'	; 8-name File Exclusion list
	 DEFB	'[??????]???'
	 DEFB	'????????$?$'
	 DEFB	'           '
	 DEFB	'           '
	 DEFB	'           '
	 DEFB	'           '
	 DEFB	'           '
	 DEFB	0		; List terminator

; Beginning of COPY Program

START:
				; Set up Dynamic (whew!) Buffers
	LD	(STACK),SP	; Save incoming stack pointer
	LD	SP,STACK	; ..and set a local stack
	LD	HL,DATABG	; Set program data area to 0
	LD	DE,DATABG+1
	LD	BC,STACK-DATABG-1
	LD	(HL),0
	LDIR
	CALL	CODEND		; Determine free space
	CALL	CRC3INIT	; Create CRC table
	INC	H		; Allow 2 pages for CRC table
	INC	H
	LD	(INLINE),HL	; Ptr to input line
	LD	L,128
	LD	(FCBS),HL	; Ptr to source FCB
	LD	L,128+36
	LD	(FCBD),HL	; Ptr to dest FCB
	INC	H
	LD	L,0
	LD	(FREEBUF),HL	; Free space buffer

	CALL	EPRINT		; Print Banner
	DEFB	'COPY  Version '
	DEFB	VERS/10+'0','.',VERS MOD 10 + '0',rev,' '
	DATE
	DEFB	0
	CALL	EPRINT		; Print Custom Banner
	DEFB	CR,LF,'Z80DS Custom version '
	DEFB	CVERS/10+'0','.',CVERS MOD 10 + '0'
	DEFB	' by P.Betti '
	CDATE
	DEFB	0

	LD	HL,(Z3EADR)	; Get candidate ZCPR3 environment
	CALL	WHRENV
	LD	(Z3EADR),HL	; ..and store validated ENV addr
	CALL	Z3INIT		; Initialize the ZCPR3 ENV and Z3LIB vectors
	CALL	TIMINI		; Initialize the Dos & Time System
	LD	A,(Z3EADR+1)	; Do we have a valid ENV?
	OR	A		;  (Page must be Non-Zero if valid)
	JR	NZ,MSGS		; Have ENV, go do msg stuff
	DEC	A
	LD	(NOMSGS),A	; No env means no msg buffer
	JR	SDFLGS

MSGS:	CALL	STOPZEX		; Prevent ZEX input

	CALL	GETQUIET	; Get ZCPR3 quiet flag
	LD	(QUIET),A	; ..and set local flag

	CALL	GETMSG		; See if there is a message buffer
	JR	NZ,HAVMSGS
	LD	A,0FFH		; No message buffer - set indicator
	LD	(NOMSGS),A
	JR	SDFLGS

HAVMSGS: XOR	A		; There is a message buffer - clear
	CALL	PUTER2		; the error flag

; Set Default Flags

SDFLGS:	LD	HL,DEFTBL	; Copy default options to mem.
	LD	DE,CPYTBL
	LD	B,TBLLEN
	CALL	MOVEB

; Check for Backup Directory and establish it as default
;  If No Backup Directory or No ZCPR3, select default stored

	CALL	RETUD		; Set Current DU in BC just in case
	LD	A,B		; Save disk
	LD	(CDISK),A
	LD	A,(USEDDU)	; Fixed default for DU:?
	AND	A
	JR	Z,DEFBAK	; ..jump if not and set current dest

DEFBK0:	LD	A,(Z3EADR+1)	; Any valid ENV?
	OR	A
	JR	Z,DEFBK1	; ..get stored default if not
	LD	HL,BACKDIR	; Pt to directory name
	CALL	DIRTDU		; Does it exist?
	JR	NZ,DEFBAK	; ..jump if found and select
DEFBK1:	LD	BC,(DDUSER)	; Otherwise use default DU
DEFBAK:	LD	(DUSER),BC

	CALL	PUTUD		; Save current Drive/User position
	LD	DE,(INLINE)	; Input line save buffer
	LD	HL,BUFF+1	; Pt to command line characters
	LD	B,127		; Save 127 bytes (arbitrary)
	CALL	MOVEB
	EX	DE,HL		; Hl pts to input line

; Set other flags (always defaults to "off")

	XOR	A		; A=0
	LD	(NOREPL),A	; Turn off "no copy if exists" option
	LD	(XMOVE),A	; ..and "remove source after copy"

; Check for empty Command Line and process Command Mode if so
; On Entry, HL pts to first char of string from CLINE

START1:	LD	A,(HL)		; Get char
	OR	A		; Eol?
	JP	Z,MHELP		; Print help message if no input
	INC	HL		; Pt to next
	CP	' '		; Just spaces?
	JR	Z,START1

; Command Line was Not Empty -- Check for HELP request

	DEC	HL		; Pt to first char
	CP	OPTC		; If opening option, must be help
	JP	Z,MHELP

; See if Options are available in the Command Line

	LD	(MFPTR),HL	; Set ptr to first char of file name specs
				; ..Skip to end of File Name Specs
	LD	A,(BUFF)	; Tail char. count
	LD	C,A		; To C
	XOR	A		; Search for terminating null
	LD	B,A		; BC now has count
	CPIR			; Search..
	JP	NZ,MHELP	; Not found, something screwy
	DEC	HL		; Get last real char.
	DEC	HL
	LD	A,(HL)
	CP	':'		; Was it a dest. DU:/DIR: ?
	JR	Z,OVRIDE	; If so, non-option
	LD	A,' '		; Search back for next blank
	LD	C,OPTLEN+1	; Range in (B)C
	CPDR			; Search..
	JR	NZ,OVRIDE	; Not found, too long for option
	INC	HL		; Bump point to potential option
	INC	HL
	CALL	OPTQ		; Test it thoroughly
	JR	NZ,OVRIDE	; Treat as option if Z returned

; Scan for Option

OPTION:	LD	A,(HL)		; Get option char
	OR	A		; Eol?
	JR	Z,OVRIDE	; Do mcopy
	INC	HL		; Pt to next
	PUSH	HL		; Save ptr
	LD	HL,OPTTAB	; Pt to option table
	CALL	CMDER		; Process command
	POP	HL		; Get ptr
	JR	OPTION

; Since the no replace mode is incompatible with the exist test
; mode, if norepl flag is on turn exist off

OVRIDE:	LD	A,(ARCHIV)	; Is this an Archive opn?
	OR	A
	JR	NZ,OVRID1	; ..Supercede other ops if so
	LD	A,(REPLAC)	; Is this copy if Exist?
	OR	A
	JR	Z,MCOP0V	; ..jump if not
OVRID1:	XOR	A
	LD	(NOREPL),A	; ..and No Replace is off
MCOP0V:	LD	A,(NCOPY)
	OR	A
	JR	Z,OVRID2	; Test for multiple copy
	XOR	A
	LD	(XMOVE),A	; clear source delete if multiple
OVRID2:	JP	MCOPY0

; Command Processor -- Command letter in A, HL pts to Table

CMDER:	LD	B,A		; Command in b
CMDER1:	LD	A,(HL)		; Get command letter
	OR	A		; Done?
	JR	Z,OHELP
	CP	B		; Match?
	INC	HL		; Pt to address
	JR	NZ,CMDER3
	LD	E,(HL)		; Get it in DE
	INC	HL
	LD	D,(HL)
	EX	DE,HL		; HL pts to command address
	LD	A,L
	OR	H		; Test for OPTS
	RET	Z		; Return w/no action if so
	LD	A,(HL)		; Otherwise get option byte
	CPL			; Flip it
	LD	(HL),A		; Put it back
	RET

CMDER3:	INC	HL		; Skip to next entry in table
	INC	HL
	JR	CMDER1

; Option Command Table

OPTTAB:	DEFB	' '		; Skip blanks
	DEFW	OPTS
	DEFB	'A'		; Archive mode
	DEFW	ARCHIV
	DEFB	'E'		; Exist test
	DEFW	EXIST
	DEFB	'I'		; Inspect
	DEFW	INSP
	DEFB	'M'		; Multiple copy
	DEFW	NCOPY
	DEFB	'N'		; No copy if file already on dest.
	DEFW	NOREPL
	DEFB	'Q'		; Quiet
	DEFW	QUIET
	DEFB	'S'		; System Exclude
	DEFW	SYSEXC
	DEFB	'V'		; Verify
	DEFW	VERFLG
	DEFB	'X'		; Remove Source after copy
	DEFW	XMOVE
	DEFB	'R'		; Copy ONLY if Dest. Exists
	DEFW	REPLAC
	DEFB	'O'		; Existence test for R/O files
	DEFW	EXRO
	DEFB	0		; End of table

; Invalid Option Char --  Adjust Stack and Print Help

OHELP:	LD	A,(QUIET)
	OR	A
	LD	A,7
	CALL	Z,COUT		; Beep if not muzzled
	CALL	EPRINT
	DEFB	CR,LF,'Option error!',CR,LF,0

; Print Help Message  (NOTE: DUSER set correctly by the time we get here)

MHELP:	CALL	EPRINT
	DEFB	CR,LF,'Syntax:'
	DEFB	CR,LF,'  ',0
	CALL	COMNAM		; "COPY" or EFCB name
	CALL	EPRINT
	DEFB	' dir:[filename.typ]=[dir:]filename.typ,... [/]o...'
	DEFB	CR,LF,TAB,TAB,'(or)'
	DEFB	CR,LF,'  ',0
	CALL	COMNAM		; "COPY" or EFCB name
	CALL	EPRINT
	DEFB	' [dir:]filename.typ dir:[filename.typ],... [/]o...'
	DEFB	CR,LF,TAB,TAB,'(or)'
	DEFB	CR,LF,'  ',0
	CALL	COMNAM		; "COPY" or EFCB name
	CALL	EPRINT
	DEFB	' [dir:]filename.typ,... /o...'
	DEFB	CR,LF,TAB,'(Copies to ',0

	LD	BC,(DUSER)	; get default destination DU:
	CALL	PRNDU		; ..print it
	INC	B		; make drive one based for this
	LD	A,(Z3EADR+1)	; Do we have a valid ENV?
	OR	A
	CALL	NZ,DUNDR	; Check for NDR for this one if ENV Ok
	JR	Z,GOTBAK	; ..jump if no ENV or Name
	INC	HL		; point to name
	CALL	PRNNAM		; ..and print up to 8 chars

GOTBAK:	CALL	EPRINT
	DEFB	')'
	DEFB	CR,LF,'Options:'
	DEFB	CR,LF,'  A -- ',0  ; Copy only Non-Archive?
	LD	A,(ARCHIV)
	OR	A
	CALL	NZ,SAYNO	; ..FF is No copy if archived
	CALL	EPRINT
	DEFB	'Archive Bit Control'
	DEFB	CR,LF,'  E -- ',0
	LD	A,(EXIST)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Existence Test'
	DEFB	CR,LF,'  I -- ',0
	LD	A,(INSP)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Inspect Files'
	DEFB	CR,LF,'  M -- ',0
	LD	A,(NCOPY)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Multiple Copy'
	DEFB	CR,LF,'  N -- NO Copy if Destination Exists'
	DEFB	CR,LF,'  O -- ',0
	LD	A,(EXRO)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Existence test - R/O files'
	DEFB	CR,LF,'  Q -- ',0
	LD	A,(QUIET)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Quiet'
	DEFB	CR,LF,'  R -- ',0
	LD	A,(DREPL)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Replace Only Files existing'
	DEFB	CR,LF,'  S -- ',0
	LD	A,(SYSEXC)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'System Files excluded'
	DEFB	CR,LF,'  V -- ',0
	LD	A,(VERFLG)
	OR	A
	CALL	NZ,SAYNO
	CALL	EPRINT
	DEFB	'Verify'
	DEFB	CR,LF,'  X -- Delete Source After Copy',CR,LF
	DEFB	LF,'NOTES: "R" and/or "A" turns off "N", "M" turns off "X"',0
	JR	RETSYS		; Return to Command Processor

SAYNO:	CALL	EPRINT
	DEFB	'NO ',0
	RET

; **** MCOPY of COMMAND LINE ****

MCOPY0:	LD	SP,STACK	; Reset the Stack
	LD	A,(DOSTYP)	; Check Dos type
	SUB	'R'		; Is it ZRDOS?
	JR	NZ,NOTZRD	; ..jump if not
	LD	HL,(Z3EADR)
	LD	DE,07EH
	ADD	HL,DE		; Point HL at PUBLIC bytes
	LD	E,(HL)		; Get first PUBLIC byte in E
	LD	(HL),A		; Replace with a zero
	INC	HL		; Point to second byte
	LD	D,(HL)		; Get into D
	LD	(HL),A		; Replace with a zero
	LD	(PUBS),DE	; Save for exit

NOTZRD:	CALL	COPY		; Do the copy
CPM:	LD	DE,(PUBS)
	LD	A,E
	OR	D
	JR	Z,NOPUB
	LD	HL,(Z3EADR)
	LD	BC,07EH
	ADD	HL,BC
	LD	(HL),E
	INC	HL
	LD	(HL),D
NOPUB:	CALL	GETUD		; Restore the entry DU condition
RETSYS:	LD	SP,(STACK)	; Reset stack
	RET			; Return to opsys

; **** Begin Multiple Copy Procedure ****

COPY:	LD	A,(NCOPY)	; Are we doing multiple copies?
	OR	A
	JR	Z,NOPAUS	; ..jump if not
	CALL	EPRINT
	DEFB	CR,LF,' ...Any key starts copy, ^C Quits - ',0
	CALL	GETCH		; Get response in Uppercase
	CALL	CRLF		; Go to New Line
	CP	CTRLC		; Is it an abort request (^c)?
	RET	Z		; ..exit here if so
NOPAUS:	LD	HL,(MFPTR)	; Pt to first file name
	LD	(NXTPTR),HL	; Set ptr to next file name
	XOR	A		; A=0
	LD	(VERCNT),A	; Zero error count
	LD	(NORST),A	; Clear "no reset" flag

; **** Main Copy Loop ****

MCOPY:	LD	HL,(NXTPTR)	; Get ptr to next file name
	LD	A,(HL)		; Get first char
	CP	' '+1		; Done if <sp> or less
	JR	NC,MCOPY1	; Continue with procedure

; MCOPY of File Specs is now done
; Done with Copy Procedure -- Continue?

COPYT:	LD	A,(VERFLG)	; Verify?
	OR	A		; 0=no
	JR	Z,COPYT1
	CALL	EPRINT		; New line & a blank
	DEFB	CR,LF,' ',0
	LD	A,(HAVFIL)	; Did we do anything?
	OR	A
	JR	Z,COPYT1	; ..jump if not
	LD	A,(VERCNT)	; Get error count
	CALL	PAFDC		; Print as decimal
	CALL	EPRINT
	DEFB	' Errors',0
COPYT1:	LD	A,(NCOPY)	; Multiple copies?
	OR	A		; 0=no
	RET	Z
	JR	COPY		; Copy again from the beginning

; Begin Copy of File Group

MCOPY1:	CP	','		; Skip comma separator if there
	JR	NZ,MCPY0
	INC	HL		; Pt to char after comma
MCPY0:	PUSH	HL		; Preserve regs
	LD	B,11
	LD	HL,(FCBD)	; Clear dest FileName
	INC	HL
INITLZ:	LD	(HL),' '
	INC	HL
	DJNZ	INITLZ		; ..loop til done
	POP	HL		; Restore input pointer
	LD	A,(HL)		; Get next char
	CP	' '+1		; Check for error
	JP	C,FORMERR
	CALL	GETUD		; Return home
	LD	DE,(FCBS)	; Pt to source FCB
	XOR	A
	CALL	ZPRSFN		; Extract file name data
	CALL	DUCVRT		; Convert DU into BC
	LD	A,(HL)		; Get delimiter
	CP	','		; End of element?
	JR	Z,MCOPY2	; Form is dirs:fn.ft
	CP	'='		; If '=', we have a new disk/user
	JR	Z,NEWDU
	CP	' '		; Test for reversed syntax
	JR	NZ,MCOPY2	; Nope, default b/u dest.
	INC	HL		; Point to dest. DU:/DIR:
	LD	A,(HL)		; One more end-of-element test
	CP	','
	JR	Z,MCOPY2
	CP	' '+1		; Invalid char. test
	JP	C,FORMERR
	PUSH	BC		; Save parsed DU in BC
	LD	DE,(FCBD)	; Set Destination FCB
	XOR	A
	CALL	ZPRSFN		; Extract file name data
	CALL	DUCVRT		; Convert DU into BC
	LD	(DUSER),BC	; Poke as dest.
	POP	BC		; Get back src. DU
	JR	MCOPY2		; and proceed..

; Form is DIRD:=DIRS:FN.FT, So set Dest Disk/User

NEWDU:	LD	(DUSER),BC
	PUSH	HL		; Preserve regs
	PUSH	BC
	LD	DE,(FCBD)	; ..and copy Source to dest
	LD	HL,(FCBS)
	LD	BC,12
	LDIR
	POP	BC		; Restore entry regs
	POP	HL

; Now derive DIRS:FN.FT Form after the '='

	INC	HL		; Pt to char beyond '='
	LD	A,(HL)		; Get char
	CP	' '+1		; Format error?
	JP	C,FORMERR
	LD	DE,(FCBS)	; Load FCB
	XOR	A
	CALL	ZPRSFN		; Get source name
	CALL	DUCVRT		; Convert to DU in BC

; Save ptr to next char after DIRS:FN.FT, and set source Disk/User

MCOPY2:	LD	(NXTPTR),HL	; Save ptr to next char
	LD	(SUSER),BC

	LD	HL,(FCBD)	; Check for dest renaming
	LD	A,' '		; ..by looking for spaces
	CALL	SCAN11
	SUB	11		; Sub no entry cnt fm space
	LD	(RENFLG),A	; ..and save as flag
	JR	Z,CKSAMU	; Jump if not renaming
	LD	HL,(FCBD)	; Check for ambiguous dest fn
	CALL	SCANQQ		; ..by counting "?"s
	JP	NZ,AMBERR	; ..jump error if ambiguous
	LD	HL,(FCBS)	; Check for ambiguous source
	CALL	SCANQQ		; ..by counting "?"s
	JP	NZ,AMBERR	; ..jump Error if ambiguous
	JR	MCPYOK		; Else jump to Ok procedure

CKSAMU:	LD	BC,(SUSER)	; Get Source DU
	LD	HL,(DUSER)	; ..and Dest DU
	OR	A
	SBC	HL,BC		; Dest dir must not equal source dir
	JR	NZ,MCPYOK	; Not same, say its ok to go
	CALL	EPRINT
	DEFB	CR,LF,'Src=Dest Err',0
	JP	SETEFLAG	; Set Error flag & exit

MCPYOK:	LD	A,(ARCHIV)	; Are we in Archival mode?
	OR	A
	JR	Z,COPYAA	; ..jump if not
	CALL	EPRINT		; Print archiving msg
	DEFB	CR,LF,'Archiving ',0
	JR	COPYBB

COPYAA:	CALL	EPRINT
	DEFB	CR,LF,'Copying ',0
COPYBB:	CALL	PRTS2D		; Print "Source to Dest" msg
	LD	C,13		; Prepare to Reset disk system
	LD	A,(NORST)	; Is this first copy operation?
	OR	A
	CALL	Z,BDOSE		; Do reset if so
	CALL	DFLTAD		; Set to default DMA addr
	CALL	SETSR0		; Log Source, Set FCB & Init it
	LD	HL,(FREEBUF)	; Pt to buffer area
	OR	0FFH		; Store Non-Zero wo we won't reset again
	LD	(NORST),A	; Store a non-zero so we won't reset again
	CALL	DDIRQ		; Load dir, select files, sort, etc
	JP	Z,TPAOVFL	; Tpa overflow error?
	LD	A,B		; Do we have any files?
	OR	C
	JR	Z,SYSOK0	; Jump if No files
	CALL	CHKXCL		; Check for excluded files
	LD	A,(ARCHIV)	; Copy only Non-Archived Files?
	OR	A
	CALL	NZ,SELARC	; ..reselect directory if so
	LD	A,B		; And see if any remain selected
	OR	C
	JR	NZ,MCPY24	; ..jump if so
SYSOK0:	LD	(NORST),A	; Clear flag - disk reset before next copy
	CALL	SETEFLAG	; Set Error flag
	CALL	EPRINT
	DEFB	CR,LF,' NO Files -- ^C to Abort ',0
	CALL	GETCH		; Get response
	CP	CTRLC		; Abort?
	JP	Z,COPYT		; End test
	JP	MCOPY		; Continue with next

MCPY24:	LD	A,(INSP)	; Inspect files?
	OR	A		; 0=No
	CALL	NZ,INSPF	; Inspect files if option selected
	LD	A,B		; Did we select any files?
	OR	C
	LD	(HAVFIL),A
	JR	Z,SYSOK0	; ..jump if not
	PUSH	HL		; Save ptr and count
	PUSH	BC
	LD	DE,ESIZE	; Skip to end of loaded files and mark..
				; ..start of Work area
MCPY25:	ADD	HL,DE		; Pt to next
	DEC	BC		; Count down
	LD	A,B		; Done?
	OR	C
	JR	NZ,MCPY25

; ..a better way to size the copy buffer would be to examine the alloc
;  size of the source and target disks and use n*maxalc for buffer
;  size, where n is adjusted to the amount of free memory available.

	LD	(WORKBF),HL	; Save ptr to beginning of work buffer
	INC	H		; Round buffer to page boundry
	CALL	GETTOP		; Get Page of lowest OS component in A
	SUB	H		; Compute size of buffer area
	JP	C,TPAOVFL	; Abort if not enough tpa
	LD	L,PLIM		; Set page limit
	CP	L		; PLIM pages left?
	JR	C,PAGOK		; If smaller than PLIM, use it
	LD	A,L		; Otherwise use PLIM (why PLIM?)
PAGOK:	ADD	A,A		; Convert to # records
	JR	NC,PAGOK0	; ..jump if less than 256 records
	LD	A,0FFH		; Else set to 255 record limit
PAGOK0:	LD	(PAGLIM),A	; Set page limit
	POP	BC		; Restore ptrs
	POP	HL

; Main Copying Loop
;   File names are pted to by HL and BC=Number of Files

MCPY26:	XOR	A		; Clear the Verify error flag
	LD	(CPYERR),A
	PUSH	HL		; Save regs
	PUSH	BC
	CALL	ABORTCK		; Check for abort
	XOR	A		; Set flag for replacement abort check
	LD	(REPLCK),A
	LD	A,(TIMTYP)	; Can we do date stamping?
	LD	(DSFLAG),A	; Set indicator accordingly
	CALL	MCOPYX		; Copy Source (HL) to Dest using work buffer
	CALL	PRDONE		; Print done message
	LD	A,(REPLCK)	; Did we abort a replace request?
	OR	A
	JR	Z,MCPY28	; ..bypass messages if so
	LD	A,(DSFLAG)	; Is DS function alive?
	OR	A
	JR	Z,NODATE	; If not, no DS msg
	LD	A,(QUIET)
	OR	A		; Are we operating Quietly?
	JR	NZ,NODATE	; ..jump and don't print if Quiet
	CALL	EPRINT
	DEFB	' (Dated)',0
NODATE:	CALL	ABORTCK		; Check for abort
	LD	A,(LSTCPY)	; Last file copied?
	OR	A		; 0=no
	LD	A,(VERFLG)	; Verify?
	JR	Z,MCPY28
	OR	A		; 0=no
	CALL	NZ,MCOPYV	; Do verify if active

	LD	A,(XMOVE)	; Should we erase source file?
	OR	A
	JR	Z,MCPY28	; ..jump error msg if not
	LD	A,(CPYERR)	; Was there an error in Verify?
	OR	A
	JR	NZ,MCPY28	; ..don't erase if so
	CALL	SETSR0		; Log Source, Get FCB & Init it
	LD	HL,9
	ADD	HL,DE
	BIT	7,(HL)		; See if file is R/O
	JR	NZ,MCPY28	; Don't delete if R/O
	CALL	F$DELETE	; Delete the file
	CALL	EPRINT		; Clue that file erased
	DEFB	' (X)',0

MCPY28:	POP	BC		; Get regs
	POP	HL
	LD	DE,ESIZE	; Pt to next file
	ADD	HL,DE		; Hl pts to next file
	DEC	BC		; Count down
	LD	A,B
	OR	C
	JR	NZ,MCPY26
	JP	MCOPY		; Copy next file spec

;.....
; Copy Source file pted to by HL to Destination

MCOPYX:	XOR	A		; Set no copy of last file
	LD	(LSTCPY),A	; Set flag

	LD	A,(RENFLG)	; Are we renaming?
	OR	A		; ..set flags
	LD	DE,(FCBD)	; Set Destination FCB
	LD	B,12
	CALL	Z,MOVEB		; Move Drive Name&Typ if not
	LD	DE,(FCBS)	; Set Source FCB
	CALL	MOVEB
	LD	BC,FNSIZE	; Offset to Stamp starting addr
	ADD	HL,BC
	LD	(SRCTD),HL	; ..and save
	CALL	SETDS0		; Set Dest FCB & Init it
	LD	H,D		; Copy FCB ptr to HL
	LD	L,E
	LD	B,11
CLRATT:	INC	HL		; Bump to next filename character
	RES	7,(HL)		; Clear attribute bit
	DJNZ	CLRATT
	CALL	DFLTAD		; Limit "E5" schmutz to 80H-FFH
	LD	C,17
	CALL	BDOS		; Search for the file
	INC	A		; Was it found?
	LD	H,A		; Save the flag in H
	LD	A,(REPLAC)	; Are we replacing existing?
	OR	A
	LD	A,H		; ..preparing found test
	JR	Z,NOTX00	; ..jump if no replace
	OR	A		; Found?
	RET	Z		; ..return if no file

NOTX00:	CALL	EPRINT
	DEFB	CR,LF,' -> ',0
	INC	DE		; Point to first char of FileName
	CALL	PFN1		; ..and print
	DEC	DE		; Back up to Drive byte
	LD	A,H		; Retrieve flag
	DEC	A		; Was file found?
	JP	M,FNF		; ..jump if File not found (0ffh)
	RRCA			; Convert directory code to offset in buffer
	RRCA
	RRCA
	ADD	A,BUFF+9	; Point to T1 (R/O)
	LD	L,A
	LD	H,0
	LD	A,(HL)
	AND	80H		; Isolate R/O bit
	LD	(ROFLG),A	; Save as a flag
	LD	B,A		; Stash in B for a moment
	LD	A,(EXRO)	; Get R/O exist test flag
	AND	B		; And with R/O status
	LD	B,A		; Save result
	LD	A,(EXIST)	; Now get exist test flag
	OR	B		; Or with previous result
	LD	(RPQFLG),A	; RPQFLG = ((EXRO AND ROFLG) OR EXIST)
	LD	A,(NOREPL)	; Don't copy if already there?
	OR	A		; 0=copy anyway
	JR	NZ,FFND		; ..jump & check file found by PUBlic if so
ISX00:	LD	A,(QUIET)	; Are we operating Quietly?
	OR	A
	JR	NZ,FFND		; ..jump to bypass messages if so
	PUSH	DE
	LD	HL,DESTTD	; Get Timestamp here
	CALL	GETSTMP		; .using DSLIB function
	POP	DE
	CALL	EPRINT
	DEFB	'  Replac',0
	LD	HL,SUFFX1	; Assume ?e are prompting for overwrite
	LD	A,(RPQFLG)	; ..now test our assumption
	OR	A
	JR	NZ,EXIST0	; Jump if we want to pause
	LD	HL,SUFFX2	; ..else print "ing"
EXIST0:	CALL	EPSTR
	LD	A,(DSFLAG)	; Are we still using Stamps?
	OR	A
	JR	Z,FFND		; ..jump if not
	PUSH	DE		; Save FCB
	LD	HL,(SRCTD)	; Get the vector to source Stamps
	CALL	CHKDAT		; Set Mod/Create Date & check valid
	JR	Z,UNDAT		; ..print Undated if No date
	EX	DE,HL		; Put Source Date addr in DE
	LD	HL,DESTTD	; Set Dest date & check validity
	CALL	CHKDAT
	JR	Z,UNDAT		; ..print Undated if No date
	LD	B,5		; ..for 5 bytes
CTDLP:	LD	A,(DE)
	CP	(HL)		; Are they the same?
	JR	C,NEWER		; .jump here if Newer version
	JR	NZ,OLDER	; ..jump here if Older version
	INC	HL		; Else
	INC	DE		; .bump ptrs cause same
	DJNZ	CTDLP		; ..and loop til done (Same)
	CALL	EPRINT
	DEFB	'Same',0
	JR	DATEX		; Rejoin code

NEWER:	CALL	EPRINT
	DEFB	'Newer',0
	JR	DATEX

OLDER:	CALL	EPRINT
	DEFB	'Older',0
	JR	DATEX

UNDAT:	CALL	EPRINT
	DEFB	'Undated',0
DATEX:	POP	DE		; Restore FCB

FFND:	LD	A,(ROFLG)
	OR	A		; Was file R/O
	JR	Z,NORO		; Jump if not
	CALL	EPRINT
	DEFB	' R/O',0
NORO:	LD	HL,7		; Offset to PUBlic/Path bit
	ADD	HL,DE
	BIT	7,(HL)		; Was it found via Public or Path?
	JR	Z,NOTPUB	; ..jump if not
	CALL	EPRINT		; Else print additional prompt
	DEFB	' (Public)',0
NOTPUB:	LD	A,(NOREPL)	; Are we in a No Replacement mode?
	OR	A
	JR	Z,FFND0		; Jump if not
	CALL	EPRINT
	DEFB	' Can''t!',0
	RET			; Return with no action (no replace)

FFND0:	LD	A,(RPQFLG)	; Do we need to propt user?
	OR	A
	JR	Z,EAT1		; Jump if not to copy
	CALL	EPRINT
	DEFB	' (Y/[N])? ',0
	CALL	GETCH		; Get response
	CP	CR		; Yes?
	CALL	NZ,COUT		; ..echo if Not CR
	CP	'Y'		; Is it an explicit Yes?
	RET	NZ		; ..return if no replace

EAT1:	LD	A,(ROFLG)	; Is this an R/O file?
	OR	A
	JR	Z,EAT1A		; No need to set attributes if not
	LD	HL,9		; Offset to R/O attribute
	ADD	HL,DE
	RES	7,(HL)
	CALL	DOATTR		; Make file R/W
EAT1A:	CALL	F$DELETE	; ..and delete it
FNF:	CALL	EPRINT
	DEFB	'..',0
	LD	A,0FFH		; Set copy of last file
	LD	(LSTCPY),A	; Set flag
	LD	(REPLCK),A	; ..and another to show No Replacement Abort
	CALL	INITFCB		; Insure clean FCB
	CALL	F$MAKE		; Create new file
	INC	A		; Check for full directory
	JP	Z,DIRFUL	; Report it

; Open Source File in prep for Copy

	CALL	CRC3CLR		; Clear CRC value in case we're verifying
	CALL	SETSR0		; Log Source, Initialize & Set FCB
	CALL	F$OPEN		; Open file

; This loop, which starts at MCPYX, Copies the file from Source to Dest

MCPYX:	CALL	SETSRC		; Log Source & Set Src FCB
	LD	HL,(WORKBF)	; Pt to buffer to copy into
	CALL	LOAD		; Load file into workbf
	LD	A,(BCNT)	; If count=0, then done
	OR	A
	JR	Z,MC2DONE

; Copy to Disk

	CALL	LOGD		; Log in destination
	LD	HL,(WORKBF)	; Pt to buffer
MCPYD1:	CALL	SETDMA		; Set dma address pted to by HL
	LD	DE,128		; Incr HL by 128
	ADD	HL,DE		; HL pts to next block
	LD	DE,(FCBD)	; Write to destination file
	CALL	F$WRITE
	OR	A		; Ok?
	JP	NZ,MCPYDERR

; Count down to next block

	LD	A,(BCNT)	; Get block count
	DEC	A		; Count down
	LD	(BCNT),A
	JR	NZ,MCPYD1
	LD	A,(CONT)	; Continue?
	OR	A		; Cont if not zero
	JR	NZ,MCPYX

; End of Copy Loop

MC2DONE: CALL	SETSRC		; Log source & Set FCB
	CALL	F$CLOSE

	CALL	SETDST		; Log Dest & Set FCB
	CALL	F$CLOSE

; 	PUSH	DE
; 	LD	HL,TMPTIM	; Set Addr for Date & Time
; 	CALL	RCLOCK		; Attempt a clock read
; 	JR	NZ,NOCLOK	; ..jump if not good read
;
; 	LD	HL,(SRCTD)	; Set source TD
; 	LD	DE,5		; ..offset to Last Access
; 	ADD	HL,DE
; 	EX	DE,HL		; Put in DE reg for dest
; 	LD	HL,TMPTIM	; Point to source tim & dat
; 	LD	BC,5		; Move 5 bytes
; 	LDIR
; NOCLOK:	POP	DE
	PUSH	DE		; ..save pointer for attr set
	CALL	INITFCB		; Initialize FCB to start
; 	LD	HL,(SRCTD)	; Get addr of New file's Stamp
; 	CALL	PUTSTMP		; Attempt Put Stamp to Disk
	CALL	CRC3DONE	; Get CRC value in case Verifying
	LD	(CRCVAL),HL	; Save CRC value or junk if Not Verifying
			;..fall thru, set Attr of Dest to those of Source
	LD	DE,(FCBS)	; Source FCB contains orig attributes
	INC	DE		; Point to 1st attr
	LD	HL,(FCBD)	; Get destination FCB
	INC	HL		; ..and pt to 1st attr
	LD	C,0		; Clear C. Will have count of attributes set
	CALL	CKATTR		; Check/Set 1st attr
	INC	DE		; Go to Attr F3
	INC	HL
	LD	B,8		; Do 8 and end at Archive
CKATTL:	CALL	CKATTR		; Do a bit/byte
	DJNZ	CKATTL		; ..and loop til done
	POP	DE		; ...restore FCB pointer
	LD	A,C		; Any Attributes Set?
	OR	A
	CALL	NZ,DOATTR	; Set the attributes if any need setting
	LD	A,(ARCHIV)	; Are we in Archiving Mode?
	OR	A
	RET	Z		; ..return if not
	CALL	SETSRC		; Log source & Set FCB
	LD	HL,11		; Else offset to Archive Bit
	ADD	HL,DE
	SET	7,(HL)		; ..and Show that it has been Archived
DOATTR:	CALL	INITFCB		; Init FCB pted to by DE
	LD	C,30		; Set file attributes
	JP	BDOS		; MCOPYX returns to caller via BDOS

; Little routine to help with attribute setting

CKATTR:	LD	A,(DE)		; Get source byte
	RLA			; ..and test attr
	JR	NC,CKATT0	; Jump if not set
	SET	7,(HL)		; ..else set dest attr
	INC	C		; ..and count it
CKATT0:	INC	DE		; Advance to next byte
	INC	HL
	RET

;.....
; Check validity of Mod/Create dates
; Enter: HL --> Create Date in std datespec
; Exit : HL --> Valid Mod/Create date field, or Create field if invalid
;	 AF = A=0, Zero flag set (Z) if invalid
;		A <> 0, Zero Flag Clear (NZ) if date valid

CHKDAT:	PUSH	DE		; Preserve other regs
	EX	DE,HL		; Put Create date addr in DE
	LD	HL,10		; Set offset to Modify field
	ADD	HL,DE		; ..and offset to Modify Date
	LD	A,(HL)		; Is it valid?
	INC	HL
	OR	(HL)		; Or Year and Month
	DEC	HL		; ..back up to Year
	JR	NZ,CHKDA0	; Jump if Date valid
	EX	DE,HL		; ..else put Create date addr in HL
	LD	A,(HL)		; Check validity
	INC	HL
	OR	(HL)
	DEC	HL
CHKDA0:	POP	DE		; Restore regs
	RET			; ..with flags set

;.....
; Convert Z3 FCB DU into DU in BC

DUCVRT:	PUSH	HL		; Save regs
	PUSH	DE
	LD	A,(DE)		; Get disk
	OR	A		; Current?
	JR	NZ,DUCV1
	LD	A,(CDISK)	; Get current
	INC	A		; Add 1 for a=1
DUCV1:	DEC	A		; A=0
	LD	B,A
	LD	HL,13		; Offset to user
	ADD	HL,DE
	LD	C,(HL)		; Get user
	POP	DE		; Restore regs
	POP	HL
	RET

; Format Error

FORMERR: CALL	EPRINT
	DEFB	CR,LF,' Error: ',0
	JP	EPSTR		; Print error & return

; TPA Overflow

TPAOVFL: CALL	EPRINT
	DEFB	CR,LF,'TPA Ovfl',0
	JR	BADCOPY

; Write Error

MCPYDERR: CALL	EPRINT
	DEFB	CR,LF,'Disk Full or Write Error !',0
	CALL	SETDST		; Log in Dest & Set FCB
	CALL	F$CLOSE		; ..and close the file
	CALL	INITFCB		; Initialize the FCB
	CALL	F$DELETE	; ...then Kill it
BADCOPY: CALL	SETEFLAG	; Set ZCPR3 Error flag
	JP	CPM		; ..and return to OS

; Directory Full Error

DIRFUL:	CALL	EPRINT
	DEFB	CR,LF,'Directory Full',0
	JR	BADCOPY

;.....
; Load Buffer pted to by HL from file whose FCB is pted to by DE
;   On Output, BCNT=Number of blocks loaded (up to 128) and
;   CONT=0 if Done or 128 if Not Done

LOAD:	XOR	A		; A=0
	LD	(BCNT),A	; Set block count
	LD	(CONT),A	; Turn off continuation flag

; Main Copy Loop

MCPY:	CALL	SETDMA		; Set DMA to block pted to by HL
	CALL	F$READ		; ..and Read block
	OR	A		; End of file?
	RET	NZ		; ..return if so
	LD	A,(VERFLG)	; Doing verify?
	OR	A		; ..set flags
	JR	Z,LOAD1		; ...jump w/no CRC if No ver
	PUSH	HL		; Save ptr to DMA
	LD	B,128		; Update CRC for 128 bytes
MCPYCRC: LD	A,(HL)		; Get byte
	CALL	CRC3UPD		; Update CRC
	INC	HL		; Pt to next
	DJNZ	MCPYCRC		; ..Count down and loop til done
	POP	HL		; Retrieve ptr to DMA
LOAD1:	LD	BC,128		; Set # bytes in Sector
	ADD	HL,BC		; ..and pt to nxt log sctr
	LD	A,(BCNT)	; Get block count
	INC	A		; Increment it
	LD	(BCNT),A	; ..and store
	LD	B,A		; Block count in B
	LD	A,(PAGLIM)	; Get page limit (in records)
	CP	B		; Buffer full?
	JR	NZ,MCPY		; ..loop if not
	LD	(CONT),A	; Else set continuation flag
	RET

; Verify Phase

MCOPYV:	LD	A,(QUIET)	; Check for quiet
	OR	A		; Nz=quiet
	JR	NZ,MCPYV
	CALL	EPRINT
	DEFB	'  Verify..',0
MCPYV:	CALL	CRC3CLR		; Clear crck value
	CALL	SETDS0		; Log in Dest, Set FCB & Init
	CALL	F$OPEN		; Open file

; **** Main Verify Loop ****

VERLOOP: LD	HL,(WORKBF)	; Load input buffer from destination
	LD	DE,(FCBD)
	CALL	LOAD		; Load and compute CRC value
	LD	A,(BCNT)	; Done if no bytes loaded
	OR	A
	JR	Z,VERCRC
	LD	A,(CONT)	; Continue?
	OR	A		; 0=no
	JR	NZ,VERLOOP

; Verify Done

VERCRC:	CALL	CRC3DONE	; Update complete, value in HL
	LD	DE,(CRCVAL)	; Get old CRC value into DE
	XOR	A		; Clears carry flag
	SBC	HL,DE		; Compare HL to DE
	JP	Z,PRDONE	; Print done msg or fall thru to error msg
			;..else fall thru to Verify Error
	LD	HL,VERCNT	; Increment error count
	INC	(HL)
	CALL	EPRINT
	DEFB	' ..Bad',0
	LD	A,0FFH		; Set flag to show error in Verify
	LD	(CPYERR),A
SETEFLAG:
	LD	A,(NOMSGS)	; Set error flag if there
	OR	A		; Is a message buffer
	RET	NZ
	CPL
	JP	PUTER2

; **** MCOPY Utilities ****
;.....
; Allow user to inspect files for Copy
;   First file name pted to by HL, BC = Number of files
;   On Exit, BC = Number of selected files

INSPF:	CALL	EPRINT
	DEFB	CR,LF,' Inspect -- '
	DEFB	'Yes, No (def), Skip Rest',0
	PUSH	HL		; Save ptr to first file
	PUSH	BC		; Save file count
	LD	DE,ESIZE	; Entries are esize bytes apart
INSPF0:	RES	7,(HL)		; Clear MSB to mark file for no copy
	ADD	HL,DE		; Pt to next
	DEC	BC		; Count down
	LD	A,B		; Done?
	OR	C
	JR	NZ,INSPF0
	POP	BC		; Restore and save again
	POP	HL
	PUSH	HL
	PUSH	BC
INSPF1:	CALL	CRLF		; New line
	EX	DE,HL		; Put FN in DE
	INC	DE		; ..and point to Name
	CALL	PFN1		; Print it
	DEC	DE		; Re-align ptr to file entry
	EX	DE,HL		; Restore regs
	CALL	EPRINT
	DEFB	' - (Y/N/S)? ',0
	CALL	GETCH		; Get response
	CALL	COUT		; Echo
	CP	'S'		; Skip?
	JR	Z,INSPFA
	CP	'Y'		; Yes?
	JR	NZ,INSPF2
	SET	7,(HL)		; Mark File
INSPF2:	LD	DE,ESIZE	; Pt to next file
	ADD	HL,DE
	DEC	BC		; Count down
	LD	A,B		; Done?
	OR	C
	JR	NZ,INSPF1
INSPFA:	POP	BC		; Get count
	POP	HL		; Get ptr to first file
	JP	DIRPAK		; Repack directory

;.....
; Select only files which do Not have Archive Bit set
; Enter:HL --> First name in Directory
;	BC = Number of Files
; Exit :BC = New Number of Files
;	HL --> First name in Directory

SELARC:	PUSH	HL		; Save values
	PUSH	BC
SELAR0:	RES	7,(HL)		; Set initially for No Select
	EX	DE,HL		; Put file pointer in DE
	LD	HL,11		; ..and offset by Archive Bit
	ADD	HL,DE
	BIT	7,(HL)		; Is it already Archived?
	JR	NZ,SELAR1	; ..jump if so to bypass
	LD	L,E		; Else copy record start to HL
	LD	H,D
	SET	7,(HL)		; ..and select it
SELAR1:	LD	HL,ESIZE	; Offset to Next record
	ADD	HL,DE
	DEC	BC		; Decrement count
	LD	A,B		; Are we out of records?
	OR	C
	JR	NZ,SELAR0	; ..loop if Not
	JR	INSPFA		; Else exit by repacking directory

;.....
; Delete files from the directory list in the EXCLUDE list
; Enter:HL --> First name in Directory
;	BC = Number of files
; Exit :BC = New number of files
;	HL --> First name in Directory

CHKXCL:	PUSH	HL		; Save values
	PUSH	BC
CHKEX0:	LD	DE,EXCLUD	; Point to Exclude List
	CALL	CHKXXX		; Does it Match?
	JR	Z,CHKEX1	; ..jump if so (no select)
	SET	7,(HL)		; Else select it
CHKEX1:	EX	DE,HL		; Advance to next entry
	LD	HL,ESIZE
	ADD	HL,DE
	DEC	BC		; Decrement file count
	LD	A,B		; Are we out of records?
	OR	C
	JR	NZ,CHKEX0	; ..loop if not
	JR	INSPFA		; Else exit by repacking dir

; Check current entry against exclude list

CHKXXX:	PUSH	BC		; Preserve regs
	PUSH	HL
CHKXX0:	INC	HL		; Step by User #
	LD	B,11		; Compare FN and FT
	LD	A,(DE)		; Any entry here?
	CP	' '		; ..not if 1st char is space
	JR	Z,CHKXX2	; ...jump if no entry
CHKXX1:	LD	A,(DE)		; ..char by char
	CP	'?'		; Accomodate wildcard char
	JR	Z,CHKX??	; ..jump if wild
	SUB	(HL)		; Else compare to entry char
	AND	7FH		; ...masking MSB
	JR	NZ,CHKXX2	; Jump if not equal
CHKX??:	INC	HL		; Bump ptrs
	INC	DE
	DJNZ	CHKXX1		; ..loop til all checked
	XOR	A		; Clear A in case "?" at end
CHKXX3:	POP	HL		; Restore regs..
	POP	BC		; ..leaving flags set
	RET

CHKXX2:	INC	DE		; Advance past Exc chars
	DJNZ	CHKXX2		; ..and loop til done
	POP	HL		; Restore Dir entry ptr
	PUSH	HL		; ..keeping it on stack
	LD	A,(DE)		; Are we at table end?
	OR	A
	JR	NZ,CHKXX0	; ..check another name if not
	OR	0FFH		; Signify no match
	JR	CHKXX3		; Else exit here

;.....
; Log in Source User/Disk

SETSR0:	LD	DE,(FCBS)	; Get Source FCB addr
	CALL	INITFCB		; ..and Initialize it
	LD	A,(SDRIVE)	; Load Source drive byte
	INC	A		; ..prepared for FCB drive #
	LD	(DE),A		; ...and save
SETSRC:	LD	DE,(FCBS)	; Get Source FCB addr again
LOGS:	LD	BC,(SUSER)
	JR	LOGDS

;.....
; Log in Destination User/Disk

SETDS0:	LD	DE,(FCBD)	; Get Destination FCB addr
	CALL	INITFCB		; ..and Initialize it
SETDST:	LD	DE,(FCBD)	; Get Dest FCB addr again
LOGD:	LD	BC,(DUSER)
LOGDS:	JP	LOGUD

;.....
; Check for Abort from Keyboard

ABORTCK: CALL	CONDIN		; Conditional input
	RET	Z
	CP	CTRLC		; Abort?
	RET	NZ		; ..return if not
	CALL	EPRINT		; Else say we are aborting
	DEFB	CR,LF,'Abort',0
	JP	CPM		; ..and qui

;.....
; Get a character from the keyboard converting to uppercase

GETCH:	CALL	CIN		; Get a char
	JP	CAPS		; Convert to Uppercase and return

;.....
; Print Done Message

PRDONE:	LD	A,(QUIET)	; Check for quiet
	OR	A		; Nz=quiet
	RET	NZ
	LD	A,(LSTCPY)	; Last file copied?
	OR	A		; 0 = no
	JR	NZ,DID
	LD	A,(NOREPL)	; Not copied because already there?
	OR	A		; Nz = yes
	RET	Z
	CALL	EPRINT
	DEFB	' Already Present',0
	RET

DID:	CALL	EPRINT
	DEFB	'Ok',0
	RET

;.....
; Set DMA Address to Default buffer (80H)

DFLTAD:	LD	HL,BUFF
	JP	SETDMA		; Set it and return

;.....
; Print error on Ambiguous Rename attempt w/secondary utility ID print

AMBERR:	CALL	EPRINT
	DEFB	CR,LF,'Can''t Rename Ambiguously -- ',0
PRTS2D:	LD	BC,(SUSER)	; Print Source File ID
	CALL	PRNDU		; Print source DU w/":"
	LD	DE,(FCBS)	; Print file spec
	INC	DE		; Pt to file Name
	CALL	PFN1		; ..and print
	CALL	EPRINT
	DEFB	' to ',0
	LD	BC,(DUSER)
	CALL	PRNDU		; Print Dest DU w/":"
	LD	A,(RENFLG)	; Are we renaming?
	OR	A
	RET	Z		; ..return if not
	LD	DE,(FCBD)	; Else print Dest file spec
	INC	DE		; Pt to File Name
	JP	PFN1		; ..print and return via Stack

;.....
; PRINT "DU:" from values in BC register

PRNDU:	LD	A,B
	ADD	A,'A'
	CALL	COUT
	LD	A,C
	CALL	PAFDC
	LD	A,':'
	JP	COUT

;.....
; Print actual COMfile name if we can,
; otherwise print "COPY"

COMNAM:	LD	A,(Z3EADR+1)	; Do we have an environment?
	OR	A
	CALL	NZ,GETEFCB	; .Get EFCB name if so
	JR	Z,NOEFCB	; ..Print "COPY" if Not
PRNNAM:	LD	B,8
COMNML:	INC	HL
	LD	A,(HL)
	AND	7FH
	CP	' '
	CALL	NZ,COUT
	DJNZ	COMNML
	RET

NOEFCB:	CALL	EPRINT
	DEFB	'COPY',0
	RET

;.....
; Scan 11-char string for specified character ("?")
; Enter: HL --> Start of string -1
; Exit :  B = 0
;	  A = Count of specified character
; Destroys HL & C.  DE unaffected

SCANQQ:	LD	A,'?'		; Set search for Quest Mrks
SCAN11:	INC	HL		; Advance to name field
	LD	BC,11*256+0	; Counter (B) = 11, (C) = 0
SCAN1A:	CP	(HL)		; Compare a char
	JR	NZ,SCAN1B	; ..jump if not same
	INC	C		; Else bump found counter
SCAN1B:	INC	HL		; ..point to next
	DJNZ	SCAN1A		; Loop til done
	LD	A,C		; Set results in reg
	OR	A		; ..and set flags
	RET

;.....
; AI (allegedly intelligent) routine to check for a string
; containing legal option letters ONLY.

OPTQ:	LD	A,(HL)
	SUB	OPTC		; Slash is explicit option delim
	JR	NZ,NOSLSH	; If not slash, do char. check
	LD	(HL),A		; If slash, null it out (A = 0)
	DEC	HL
	LD	(HL),A		; Null out leading space
	INC	HL		; Adjust pointer to options
	INC	HL
	RET			; Return with Z flag

NOSLSH:	LD	D,H		; Copy into de
	LD	E,L
	XOR	A		; Search for terminating null
	LD	BC,OPTLEN	; Range for search
	CPIR			; Do short search
	JR	Z,DOOPTQ	; Found null, proceed
	EX	DE,HL		; Otherwise too long for options
	RET			; Return with NZ

DOOPTQ:	PUSH	DE
	DEC	DE
BLOOP:	INC	DE
	LD	A,(DE)
	OR	A
	JR	Z,OQDONE	; End of string, return with Z
	LD	B,OPTLEN
	LD	HL,OPTLTR
LLOOP:	CP	(HL)
	JR	Z,BLOOP
	INC	HL
	DJNZ	LLOOP		; If B ticks down, a failure!
	DEC	B		; Cheap NZ return

OQDONE:	POP	HL
	RET

;.....
; Consolidated vectors to Get and Put stamps with Error Detection

PUTSTMP: CALL	PSTAMP		; Attempt Put Stamp to Disk
	JR	GETST0		; ..and vector down to Error stuff

GETSTMP: CALL	GSTAMP		; Try to Get File Stamp
GETST0:	RET	NZ		; ..return if Good
	LD	(DSFLAG),A	; Else disable stamping w/0 in A
	RET			; ..and return

;.....
; Get base of Lowest Operating System component (CCP or RSX) which
; is the Top of memory usable for a copy buffer.

GETTOP:	PUSH	HL		; Save HL around this call
	LD	HL,(Z3EADR)	; Get Z3 environment (if any)
	LD	A,L
	OR	H
	PUSH	AF		; Save flag state
	CALL	NZ,GZMTOP	; .check extended ENV if in Z-System
	POP	AF
	CALL	Z,GETMTOP	; ..else calculate base/rsx
	LD	A,H		; Get returned Page for exit
	POP	HL		; .restore regs
	RET			; ..and back

;.....
; Text and character variables

OPTLTR:	DEFB	'AEIMNOQRSVX'	; Added 'R' and 'X'
OPTLST:	DEFS	0
OPTLEN	EQU	OPTLST-OPTLTR

; Various message suffixes

SUFFX1:	DEFB	'e ',0
SUFFX2:	DEFB	'ing ',0

;====================================================================
; Extracted from DDIRQ routine in DSLIB, which is based on SDIRQ.Z80
;  Ver 1.5 (Syslib) by Richard Conn.		Harold F. Bower
;====================================================================
; Entry: HL - Points to Memory Buffer
;	 DE - Points to FCB for selection (36 bytes)
; Exit :  A <> 0, Zero Flag Clear (NZ) if Ok
;	      A = 0 and Zero flag Set (Z) if TPA Overflow
;	 HL - Points to first file in Buffer
;	 BC - Contains number of files in Buffer
; Special Requirements: DMA address set to default of 80H.
;====================================================================

DDIRQ:	PUSH	DE		; Save ptr to FCB
	LD	(TFCB),HL	; Set ptr to temp FCB
	LD	A,(TYPDAT)	; Get DS Flag
	OR	A		; Going for DateStamper Stamps?
	JR	Z,DDIRV0	; ..jump if P2Dos type
	PUSH	HL		; Save regs while we test for DS Routines
	PUSH	DE
	PUSH	AF		; ..including flag byte in A
	CALL	FINDCK		; Is DateStaper alive and well?
	JR	Z,NODS		; ..jump to P2D if not
	CALL	CKTDF		; Do we have a valid !!!TIME&.DAT file?
	JR	Z,NODS		; ..jump to MS/P2D if not
	POP	AF		; Else we have everything ready for DS, Do it
	JR	DSOK		; ..bypass defaulting to P2D and continue

NODS:	POP	AF		; Restore flag byte
	XOR	A		; ..Clear since No DS
DSOK:	POP	DE		; Restore rest of regs
	POP	HL
DDIRV0:	LD	(S2FLG),A	; ..and save
	LD	BC,36		; Offset to after FCB
	ADD	HL,BC		; ..useable memory now starts at (HL)
	CALL	DPARAMS		; Set parameters to logged disk

; Set values in the Sort Selection Block

	EX	DE,HL		; Save in DE while we set up SSB
	LD	HL,(DIRMAX)	; Get Max Number of DIR entries
	LD	(FCOUNT),HL	; ..save in SSB
	LD	HL,ESIZE	; Get size of records
	LD	(ELSIZ),HL	; ..save in SSB
	LD	HL,0		; Let SSBINIT set buffer addr
	LD	(DSTART),HL
	DEC	L		; (0-->FF) Use pointers for sorting, Re-Order
	LD	(PTRFLG),HL	; ..place in POINTR (L) and NOREC (H) in SSB
	LD	HL,DICOMP	; Address User Compare routine
	LD	(COMPIT),HL	; ..place addr in SSB
	EX	DE,HL		; Put Memory base back in HL
	LD	DE,SSB		; .point to SSB
	CALL	SSBINIT		; ..and Initialize the sort routine
	LD	(DIRBUF),HL	; Save returned Record Buffer Address
	POP	DE		; Get ptr to FCB
	CALL	NZ,DIRLOAD	; Load directory w/o sizing info (if space)
	RET	Z		; Abort if TPA overflow
	LD	DE,SSB		; Set parm for Sort routine
	CALL	SORT		; ..and do it!
	LD	HL,(DSTART)	; .and load exit parms
	LD	BC,(FCOUNT)
	OR	0FFH		; Set Ok status and return
	RET


; Build Directory Table at DIRBUF
;   This is the optimal Directory Load Routine; It only loads unique file names
; from disk, but the information is not sufficient to compute the file sizes
;
; On Input : HL pts to Directory Buffer (ESIZE x N Max)
;	     DE pts to FCB (Only 12 bytes needed)
; On Output: BC is Number of Files
;	     A = 0 and Zero Flag set if TPA Overflow

DIRLOAD: LD	(DSTART),HL	; Set start of Buffer area
	INC	DE		; Pt to file name
	LD	HL,(TFCB)	; Pt to TFCB
	XOR	A		; Else set for current user
	LD	(HL),A		; Stash User Selects
	INC	HL		; Pt to File Name in TFCB
	LD	BC,11		; 11 Chars
	EX	DE,HL
	LDIR			; Copy the Name and Type
	EX	DE,HL

	LD	B,24		; 24 chars (Incl Zero EX)
	XOR	A		; Zero rest of TFCB

DLLOOP1: LD	(HL),A		; Store Zero
	INC	HL		; Pt to next
	DJNZ	DLLOOP1		; Count down

	LD	L,A		; Initialize counters (A has null)
	LD	H,A
	LD	(FCOUNT),HL	; Total Files on Disk = 0

; Begin by setting default DMA address to 80H

	LD	DE,BUFF		; Set DMA address to default
	LD	C,SDMA
	CALL	BDOSE

; Now we begin scanning for files to place into the memory buffer

	LD	C,SRCHF		; Search for file
	JR	DIRLP1

DIRLP:	CALL	PENTRY		; Place entry in Dir
	JR	Z,DIRDNX	; Memory Overflow Error
	LD	C,SRCHN		; Search for Next match
DIRLP1:	LD	DE,(TFCB)	; Pt to FCB
	CALL	FSTNXT
	CP	255		; Done?
	JR	NZ,DIRLP

	LD	A,(S2FLG)	; Loading P2D/NZTIME Stamps?
	OR	A
	JR	Z,DIRPDN	; ..jump to exit if so

; We are using DateStamper stamps, so append stamps to FN.FT string

	XOR	A		; Open T&D for Read-only
	CALL	OPENTD		; ..don't check errs cause CKTD was Ok
	LD	BC,(FCOUNT)	; Load this many records
	LD	HL,(DSTART)	; ..starting with this entry
	LD	DE,0FFFFH	; Set dummy Random record # to force read

TDLOOP:	LD	A,B		; Are we done?
	OR	C
	JR	Z,DIRDDN	; ..exit if so
	PUSH	BC		; Save count
	LD	BC,FNSIZE	; Offset to RR #
	ADD	HL,BC
	LD	A,(HL)		; Get Index #
	PUSH	HL		; Save index to entry TD Field
	PUSH	AF		; ..and index
	INC	HL
	LD	A,(HL)		; Get RR # to HL
	INC	HL
	LD	H,(HL)
	LD	L,A
	OR	A		; Compare current (DE) w/desired (HL)
	SBC	HL,DE
	ADD	HL,DE
	JR	Z,SAMREC	; ..jump if we already have the record
	EX	DE,HL		; Else put rec in DE
	PUSH	DE		; ..and save
	XOR	A
	CALL	RWTD		; Read the T&D file ignoring errors
	LD	(TDBUF),HL	; Save TD buffer start addr
	JR	NZ,TDRDOK	; ..jump if T&D File Read Ok
	LD	B,128		; Else Null record (A already = 0)
TDNULL:	LD	(HL),A
	INC	HL
	DJNZ	TDNULL		; Loop til sector filled
TDRDOK:	POP	DE		; ..and restore RR #
SAMREC:	POP	AF		; Restore record Index
	ADD	A,A		; ..and mult by 16 to get relative addr
	ADD	A,A
	ADD	A,A
	ADD	A,A
	LD	C,A
	LD	B,0
	LD	HL,(TDBUF)
	ADD	HL,BC		; HL Now points at source T&D string in Buffer
	EX	DE,HL		; Swap regs..
	EX	(SP),HL		; ..to put RR # on stack, DEst adr in HL
	EX	DE,HL		; ...then Dest in DE, source in HL
	LD	BC,15		; Move all three stamps
	LDIR
	EX	DE,HL		; HL --> Next Dir entry
	POP	DE		; DE = RR # in Buff
	POP	BC		; BC = Count
	DEC	BC
	JR	TDLOOP		; ..and loop til done

; Now we are done with the Load -- Set up Return Values

DIRDDN:	CALL	CLOSTD		; Close the T&D tile for safety
DIRPDN:	OR	0FFH		; Set Flags NZ for Load Ok
DIRDNX:	LD	BC,(FCOUNT)	; Get total number of files in BC
	RET


; PENTRY -- Place entry in Directory Buffer if not an erased entry

; On Input:  A = 0-3 for Adr index in Buff of Entry FCB
;	     FCOUNT = Number of files in Dir so far
; On Output: FCOUNT = Number of files in dir so far
;	     A = 0 and Zero Flag Set if Memory Overflow Error

PENTRY:	LD	(INDX),A	; Save index in case of P2Dos Stamp load
	PUSH	DE		; Save any DS Indices
	PUSH	BC
	RRCA			; Multiply by 32 for Offset computation
	RRCA
	RRCA
;;	AND	60H		; A = Byte Offset
	LD	DE,BUFF		; Pt to Buffer Entry
	LD	L,A		; Let HL = Offset
	LD	H,0
	ADD	HL,DE		; HL = Ptr to FCB

	LD	A,(HL)
	CP	20H		; Is it CP/M Plus Volume or T&D?
	JP	NC,PEDONE	; ..jump if so

; HL = Adr of FCB in BUFF.  Check for attributes of file

	PUSH	HL		; Save ptr
	LD	BC,10		; Pt to System Attribute
	ADD	HL,BC
	BIT	7,(HL)		; Check for System Attribute
	POP	HL		; Restore ptr
	JR	Z,ATDIR		; ..jump if Not System File (Selflg in A)
	LD	A,(SYSEXC)
	OR	A		; Are we including SYStem Files?
	JR	NZ,PEDONE	; ..jump if Not
			;..Else fall thru to continue

; Increment total number of files

ATDIR:	LD	DE,(FCOUNT)	; Total Files = Total Files + 1
	INC	DE
	LD	(FCOUNT),DE

; Copy FCB pted to by HL into Directory Buffer

	LD	DE,(DIRBUF)	; Pt to Next Entry location
	LD	BC,FNSIZE	; Number of Bytes/Entry
	LDIR			; Copy FCB into Memory Buffer
	POP	BC		; Restore any DS indices
	POP	HL
	LD	A,(S2FLG)	; Which method do we use?
	OR	A
	JR	Z,USEMS		; ..jump if using MS/P2Dos/NZTime stamps
	EX	DE,HL		; Put destination in HL
	LD	(HL),B		; Stash index into T&D sector
	INC	HL
	LD	(HL),E		; ..and T&D Sector number
	INC	HL
	LD	(HL),D
	INC	HL
	EX	DE,HL		; Put Buffer pointer back in DE
	LD	B,ESIZE-FNSIZE-3
	JR	FILLIT		; Null out remaining

USEMS:	LD	HL,BUFF+16	; Point to DosDisk Flag bytes
	LD	A,(HL)		; Get first byte
	CP	0FDH		; Is it the MS-DOS 40-byte flag?
	JR	NZ,USEP2D	; ..jump if not
	INC	HL		; Else check second byte to be sure
	SUB	(HL)
	JR	NZ,USEP2D	; ..jump if no match
	LD	B,10		; Ok, so null Create and Access fields
	CALL	NULLIT
	LD	HL,BUFF+22	; Point to source MS-DOS DateSpec
	CALL	M2UTIM		; ..and do the conversions to DE
	JR	P2DONE		; Continue with common code

USEP2D:	LD	HL,BUFF+60H	; Point to P2D Time indicator
	LD	A,(HL)
	AND	7FH		; Mask difference between Z2D and NZTime
	CP	21H		; Is there a valid time stamp flag?
	JR	NZ,NOTP2D	; ..jump if not
	LD	A,(INDX)	; Else calculate offset to correct entry
	LD	C,A
	ADD	A,A		; *2
	ADD	A,A		; *4
	ADD	A,C		; *5
	ADD	A,A		; *10
	INC	A		; +1
	LD	C,A		; Entries start at offset=1,11,21 decimal
	LD	B,0
	LD	A,(HL)		; Get Flag Byte (A1=NZTime, 21=P2Dos)
	ADD	HL,BC		; Point to Stamp field for desired entry
	RLA			; Is it NzTime?
	JR	C,USENZT	; ..jump if NZTime Stamping
	CALL	P2UTIM		; ..and parse Create Stamp to Table
	LD	B,5		; Null the Last Accessed field
	CALL	NULLIT
	CALL	P2UTIM		; Parse Modify Stamp
	JR	P2DONE		; ..and continue

NOTP2D:	LD	B,ESIZE-FNSIZE	; Set count to fill entire field
FILLIT:	CALL	NULLIT		; Fill rest of time with Nulls
P2DONE:	LD	(DIRBUF),DE	; Set ptr to Next Entry
	CALL	GETMTOP		; Return highest avail addr in HL
	LD	A,H		; Get CCP page in A
	DEC	A		; ..and back one page in front of it
	CP	D		; Is ptr to next entry beyond this?
	RET	Z

	DEFB	11H		; Fall thru trashing DE

; Done with PENTRY and No Error

PEDONE:	POP	BC		; Clear the stack
	POP	DE
	OR	0FFH		; Set NZ for No Error
	RET

; Gather File Stamps from NZTime-stamped directory

USENZT:	LD	(IPTR),HL	; Save Pointer to input NZTime stamps
	LD	L,(HL)
	LD	A,(INDX)	; Get Index number (0,1,2)
	LD	B,A		; .save
	LD	A,8
	SUB	B		; Compute current byte when starting
	LD	C,A		;  save
	INC	B
	DEC	B		; Is Input byte already aligned?
	JR	Z,USENZ1	; ..jump if so
USENZ0:	ADD	HL,HL		; Else rotate input byte (H is don't care)
	DJNZ	USENZ0		; ..looping til done
USENZ1:	LD	A,3		; Get all three stamps
USENZ2:	LD	(LPCTR),A	; Set Outer Loop Counter
	LD	B,7
	CALL	GBITS		; Get Year (7 bits)
	LD	B,4
	CALL	GBITS		; Month (4 bits)
	LD	B,5
	CALL	GBITS		; Day (5 bits)
	LD	B,5
	CALL	GBITS		; Hour (5 bits)
	LD	B,6
	CALL	GBITS		; Minute (6 bits)
	LD	A,(LPCTR)
	DEC	A		; Have we done all 3 fields?
	JR	NZ,USENZ2	; .loop if Not (saving new count)
	JR	P2DONE		; ..jump to exit when finished

;========================================================================
; NAME - DICOMP.  Compare the directory entry pointed to by HL with that
;		addressed by DE.
; Entry: HL - Points to one FCB extracted entry
;	 DE - Points to second FCB extracted entry
; Exit :  F - Carry Set (C) means (DE) < (HL)
;		Zero Set (Z) means (DE) = (HL)
;		Non-Zero (NZ) and No Carry (NC) mans (DE) > (HL)
;========================================================================

DICOMP:	PUSH	BC		; Save count
	LD	B,11		; 11 bytes for FN and FT
	PUSH	HL
	PUSH	DE
	INC	HL		; Pt to FN
	INC	DE
	CALL	@FNCMP		; Do comparison
	POP	DE
	POP	HL
	JR	NZ,CMPEX
	LD	A,(DE)		; Compare User Number
	CP	(HL)
	JR	NZ,CMPEX	; ..exit if No match
	PUSH	HL		; Else save ptrs
	PUSH	DE
	LD	BC,14
	EX	DE,HL		; Swap
	ADD	HL,BC		; .offset File 1 to DM
	EX	DE,HL		; ..swap
	ADD	HL,BC		; ...offset File 2 to DM
	LD	A,(DE)
	CP	(HL)		; Compare Data Modules
	JR	NZ,CMPEX0	; ..jump if Not Same
	DEC	HL		; Else back down to EXT
	DEC	HL
	DEC	DE
	DEC	DE
	LD	A,(DE)		; Fetch EX file 1
	CP	(HL)		; ..compare to EX file 2 and return status
CMPEX0:	POP	DE		; Restore regs
	POP	HL
CMPEX:	POP	BC		; Restore Count
	RET			; ..and exit

;.....
; Fill the string addressed by DE with a zero for B bytes

NULLIT:	XOR	A		; Load a cheap Null
NULL0:	LD	(DE),A		; Stuff a byte
	INC	DE		; ..and advance
	DJNZ	NULL0		; Loop til done
	RET

;.....
; NZTime Support Routine.  Gather # of bits speced from NZTIM, Return BCD Digit
; ENTER: L = Current working byte
;	DE = Ptr to Dest of Univ stamps
;	 C = Bit # currently in position (8..1)
;	 B = Number of bits to gather
; EXIT : A = BCD Conversion of # bits from entry

GBITS:	LD	H,0		; Clear Bit Accumulator
GBITS0:	ADD	HL,HL		; Shift B7 of L into B0 of H, H shifts left
	DEC	C		; Have we shifted last of input Byte?
	JR	NZ,GBITS1	; ..jump if Not

	PUSH	HL		; Else need a byte, save regs
	LD	HL,(IPTR)	; Get input ptr
	INC	HL		; .go to next byte
	LD	A,(HL)		; ..fetch
	LD	(IPTR),HL	; ...save updated ptr
	POP	HL		; .(restore regs)
	LD	L,A		; Place new Input byte for shifting
	LD	C,8		;  and init Bits Remaining counter

GBITS1:	DJNZ	GBITS0		; ..Shift another if not done
	LD	A,H		; Else get completed output byte
	CALL	BIN2BCD		; .make BCD for Universal
	LD	(DE),A		; ..store in Output
	INC	DE		; ...and advance to next digit
	RET

;====================================================================
; Adapted from SDIR09.Z80 Ver 1.5 by Richard Conn to handle larger
; records needed by DSLib "type" routines.			HFB
;====================================================================
; Entry: HL - Points to a Directory Buffer
;	 BC - Contains the total number of files in Buffer
; Exit : BC - Number of Selected files.  Buffer is restructured
; Uses : BC
; Special Requirements: Required side effect is that the Flag
;	Extent (Set by DIR:) be correct.  In most cases, default
;	of 0 is Ok, except when extent size is greater than 16K
;====================================================================

DIRPAK:	PUSH	HL		; Save Regs
	PUSH	DE
	PUSH	AF
	PUSH	BC		; Save counter
	LD	BC,0
	LD	(FCOUNT),BC	; Init file count
	LD	E,L		; Copy Buffer start to DE
	LD	D,H

DPLOOP:	POP	BC		; Get counter
	LD	A,B		; Check for Done
	OR	C
	JR	Z,DPDONE
	DEC	BC		; Count down
	PUSH	BC		; Save counter
	LD	BC,ESIZE	; Set number of bytes in entry
	BIT	7,(HL)		; Does 1st byte indicate file is selected?
	JR	Z,DPNEXT	; ..jump and advance to next if not

; Found Selected Entry

	RES	7,(HL)		; Clear MSB of selected entry
	LDIR			; Copy the entry to current bottom of byffer
	LD	BC,(FCOUNT)	; Increment File Count
	INC	BC
	LD	(FCOUNT),BC
	JR	DPLOOP		; Continue

; Skip to Next Entry

DPNEXT:	ADD	HL,BC		; Skip over entry
	JR	DPLOOP		; Continue

; Compression Complete -- Set up returned values

DPDONE:	LD	BC,(FCOUNT)	; Put File Count in BC
	POP	AF		; Restore regs
	POP	DE
	POP	HL
	RET

;++++++++++++++++++++++++++++++++++++++++++++++++++++++
;		   D a t a    A r e a
;++++++++++++++++++++++++++++++++++++++++++++++++++++++

	DSEG

;---- Data Storage/Buffers for DDIRQ Routine ----

IPTR:	DEFS	2		; Pointer for NZTime conversion
LPCTR:	DEFS	1		; Loop Counter for NZTime conversion

INDX:	DEFS	1		; Directory index into sector
S2FLG:	DEFS	1		; Secondary Select Flag (Sort & Stamp method)
TFCB:	DEFS	2		; Address of Temporary FCB

SSB:				;\ Sort Selection Block:
DSTART:	DEFS	2		;| Pointer to first Directory Entry
FCOUNT:	DEFS	2		;| Tot Number of Files/Number of Selected Files
ELSIZ:	DEFS	2		;| Size of each element
COMPIT:	DEFS	2		;| Addr of compare routine
ORDBUF:	DEFS	2		;| Addr of Order buffer
PTRFLG:	DEFS	1		;| FF=Use ptrs, 0=No ptrs
	DEFS	1		;/ If Ptrflg<>0, FF=No reorder, 0=Reorder

TDBUF:	DEFS	2		; Temp storage loc'n for T&D Sector Buffer adr

;---- End of Data area used by DDIRQ routine ----
; Pointers

DATABG	EQU	$
MFPTR:	DEFS	2		; Ptr to first char of next fn spec
NXTPTR:	DEFS	2		; Ptr to next fn spec in line
WORKBF:	DEFS	2		; Ptr to beginning of work buffer

;   ----- Do Not Change following values -----
CPYTBL:				; ..flags copied from default table
VERFLG:	DEFS	1		; Verify
INSP:	DEFS	1		; Inspect
SYSEXC:	DEFS	1		; Exclude system files
NCOPY:	DEFS	1		; Multiple copy
EXIST:	DEFS	1		; Test for existence flag
EXRO:	DEFS	1		; Test for R/O existence flag
ARCHIV:	DEFS	1		; Archive flag
REPLAC:	DEFS	1		; Replace flag (Copy if exists)
TBLLEN	EQU	$-CPYTBL
;	----- End of no change area -----

; Disks and Users

CDISK:	DEFS	1		; Current disk
SUSER:	DEFS	1		; Source user
SDRIVE:	DEFS	1		; ..Source disk
DUSER:	DEFS	1		; Destination user
	DEFS	1		; ..Destination disk

; CRC Value

CRCVAL:	DEFS	2		; CRC check value

; FCBS & FCBD

FCBS:	DEFS	2		; Source FCB
FCBD:	DEFS	2		; Destination FCB

; Counts and Flags

PAGLIM:	DEFS	1		; Max number of pages in work buffer
LSTCPY:	DEFS	1		; Last file was copied flag
VERCNT:	DEFS	1		; Error count
BCNT:	DEFS	1		; Block count
CONT:	DEFS	1		; Continue flag (0=no, 0FFH=yes)
NOMSGS:	DEFS	1		; 0FFH if there is no ZCPR3 message buffer
NORST:	DEFS	1		; Disk reset flag (0=do reset)
ROFLG:	DEFS	1		; Dest file R/O flag
RPQFLG:	DEFS	1		; Replace queery flag (0=replace w/o asking)
XMOVE:	DEFS	1		; Delete source after copy flag (Move)
QUIET:	DEFS	1		; Quiet
NOREPL:	DEFS	1		; No copy if file already on dest. flag
DSFLAG:	DEFS	1		; DateStamper active flag
TMPTIM:	DEFS	6		; Temporary Clock Date/Time buffer
SRCTD:	DEFS	15		; Source Time & Date buffer
DESTTD:	DEFS	15		; Destination Time &Date Buffer
HAVFIL:	DEFS	1		; Flag to indicate filecount. 0=No Files
RENFLG:	DEFS	1		; 0 = No rename, <>0 for rename opn
REPLCK:	DEFS	1		; Flag for Replacement abort (MCOPYX sets)
CPYERR:	DEFS	1		; 0=No error in Verify, FF=Verify err

; Dynamic Buffers

INLINE:	 DEFS	2		; Input line buffer
FREEBUF: DEFS	2		; Free space buffer
PUBS:	 DEFS	2		; ZRDOS PUBLIC bytes from ENV+0FEH
	 DEFS	64		; Space for local Stack
STACK:	 DEFS	2		; Opsys stack ptr

; Print a string in [HL] up to '$'
PSTRING:
	LD	A,(HL)
	CP	'$'
	RET	Z
	LD	C,A
	CALL	BBCONOUT
	INC	HL
	JP	PSTRING

;;
;; Inline print
;;
DINLINE:
	EX	(SP),HL			; get address of string (ret address)
	CALL	PSTRING
	EX	(SP),HL			; load return address after the '$'
	RET				; back to code immediately after string

PHEX:	PUSH	AF
	PUSH	BC
	PUSH	AF
	RRCA
	RRCA
	RRCA
	RRCA
	CALL	ZCONV
	POP	AF
	CALL	ZCONV
	POP	BC
	POP	AF
	RET
;
ZCONV:	AND	0FH		;HEX to ASCII and print it
	ADD	A,90H
	DAA
	ADC	A,40H
	DAA
	LD	C,A
	CALL	BBCONOUT
	RET

OLDSTACK:
	DEFW	0
	DEFS	40
NEWSTACK:
	DEFW	0


	END

