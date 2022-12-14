;			--- DUMP ---
;
;					BY: S. J. SINGER
;
;	THIS PROGRAM IS AN IMPROVED DUMP UTILITY FOR CP/M. ANY CPM FILE
;MAY BE DUMPED TO THE CONSOLE IN A FORMAT SIMILAR TO THAT USED BY THE
;DDT DUMP COMMAND. IN ADDITION, ANY SECTOR OR GROUP OF SECTORS MAY
;BE DUMPED IN THE SAME FORMAT.
;
;			-- OPERATION --
;
;	THE PROGRAM MAY BE RUN EITHER BY TYPING DUMP, OR DUMP FOLLOWED
;BY THE FILE NAME OR TRACK AND SECTOR. IF DUMP  IS TYPED THE PROGRAM
;RESPONDS WITH A HEADING FOLLOWED BY A '*' AND WAITS FOR MORE INPUT. 
;OPERATION IN THIS MODE IS SIMILAR TO OTHER UTILITIES LIKE PIP OR DDT.
;	THE OPERATION DESIRED MAY THEN BE TYPED IN AS FOLLOWS:
;
;		DUMP FILE.NAM
;		DUMP A:FILE.NAM
;		DUMP B:FILE.NAM
;
;	OR DUMP MAY BE TYPED SEPARATELY AS:
;
;		DUMP
;
;		*FILE.NAM
;		*B:FILE.NAM	(THE * IS A PROGRAM PROMPT)
;
;	THE PROGRAM MAY ALSO BE USED TO DUMP DISK SECTORS DIRECTLY,
;DUMP ANY CP/M EIGHT SECTOR GROUP, A MAP OF THE GROUP ALLOCATIONS FOR THE
;ENTIRE DISK OR THE DIRECTORY SORTED ALPHABETICALLY.
;
;		DUMP TRACK 3 SECTOR 7
;		DUMP TRACK 5   SECTOR  3 - 9
;		DUMP TRACK   6   (DUMPS ALL 26 SECTORS)
;		DUMP GROUP  19
;		DUMP MAP
;		DUMP DIR	(DUMPS DIRECTORY)
;
;	THE WORDS TRACK, SECTOR AND GROUP MAY BE ABREVIATED AS FOLLOWS
;
;		DUMP G 4
;		DUMP T 7 S 3-4
;		*TRACK 5 S 6
;		*SECTOR 2- 9  T 14
;
;
;		DUMP B:  TRACK 3
;		DUMP A: T 9   S 4-6
;		DUMP B:   G  5
;		DUMP B:MAP
;
;	NOTE THAT THE FORMAT IS QUITE FREE. SPACES ARE USUALLY IGNORED
;THEY ARE ONLY REQUIRED AFTER THE WORDS TRACK AND SECTOR OR T AND S,
;AND AFTER THE WORD DUMP.
;	A LIMITED EDITING FEATURE IS INCLUDED IN THE DUMP UTILITY TO
;ALLOW CHANGING DATA ON THE DISK. THE EDIT FEATURE WORKS AS FOLLOWS.
;ANY SINGLE SECTOR ON EITHER DRIVE MAY BE EDITED BY REQUESTING DISPLAY
;OF THE SECTOR FOLLOWED BY THE WORD EDIT.
;
;		DUMP B:TRACK 4 SECTOR 2  EDIT
;
;	THE REQUESTED SECTOR WILL BE DISPLAYED FOLLOWED BY AN EDIT PROMPT
;
;	EDIT -
;
;	ENTER THE ADDRESS OF THE FIRST BYTE TO BE CHANGED. THE PROGRAM WILL
;RESPOND BY TYPING BACK THE ADDR ENTERED AND THE PRESENT CONTENTS OF THAT
;ADDRESS. TO CHANGE THE CONTENTS OF THE ADDRESS ENTER THE NEW BYTE FOLLOWED
;BY A CARRIAGE RETURN. THE PROGRAM WILL DISPLAY THE NEXT ADDRESS AND ITS
;CONTENTS. TO STOP ENTERING DATA TYPE A PERIOD. THE PROGRAM WILL REDISPLAY
;THE SECTOR SHOWING THE CHANGES MADE. THE EDIT FEATURE WORKS ALMOST EXACTLY
;LIKE THE S ENTRY FEATURE IN DDT. TYPING ONLY A CARRIAGE RETURN OMITS ENTRY.
;	TYPING A PERIOD MERELY REDISPLAYS THE SECTOR FROM MEMORY, IT DOES
;NOT CAUSE IT TO BE WRITTEN BACK ON THE DISK. WHEN EDITING IS COMPLETE,
;REDISPLAY THE SECTOR BY TYPING A PERIOD AND TYPE EITHER
;
;		WRITE		(WRITE SECTOR BACK ON DISK)
;		STOP		(STOP EDITING WITHOUT WRITING ON DISK)
;
;	ALL EDIT ENTRIES MUST BE MADE IN HEX. ENTERING NON HEX CHARACTERS
;RESULTS IN AN ERROR MESSAGE. THE PERMISSABLE ADDRESS RANGE IS 0000 TO 007F.
;LARGER ADDRESSES GIVE AN ERROR MESSAGE. WHEN ENTERING A GROUP OF BYTES THE
;ADDRESSES ARE COMPUTED MODULO 128, THE NEXT ADDRESS AFTER 007F IS 0000.
;	THE EDIT FEATURE SHOULD BE USED WITH CAUTION SINCE IT IS POSSIBLE
;TO EDIT CP/M TO "DEATH" BY CHANGING A SINGLE BYTE. ONE OCCASIONAL VALUABLE
;USE IS TO RESTORE FILES THAT HAVE BEEN ACCIDENTALLY ERASED. ERASING A FILE
;USING THE ERA COMMAND DOES NOT ERASE THE DATA FROM THE DISK, BUT ONLY ENTERS
;AN E5 INTO THE FIRST BYTE OF THE DIRECTORY. TO RESTORE A FILE, DISPLAY
;THE DIRECTORY BY DISPLAYING GROUPS 0 AND 1. FIND THE SECTOR CONTAINING THE
;NAME OF THE FILE TO BE RESTORED AND DISPLAY IT USING THE EDIT FEATURE
;CHANGE THE BYTE PRECEEDING THE FILE NAME FROM E5 TO 00 AND WRITE THE SECTOR
;BACK ON THE DISK. THIS WILL RESTORE THE FILE PROVIDED NONE OF THE SECTORS
;IN THE FILE WERE CHANGED AFTER THE FILE WAS "ERASED".
;
;	AN ADDITIONAL FEATURE OF DUMP IS THE ABILITY TO VALIDATE A DISK.
;
;		DUMP VALIDATE
;		DUMP A:VALIDATE
;		DUMP B:VALIDATE
;
;	THIS CAUSES THE ENTIRE DISK SELECTED TO BE READ ONE SECTOR AT A
;TIME. THE SECTOR NUMBER OF ANY SECTOR CAUSING A READ ERROR WILL BE DISPLAYED.
;WHEN VALIDATING THE PROGRAM READS EVERY FIFTH SECTOR FOR SPEED.
;
;	AS WITH OTHER CP/M UTILITIES ^S "FREEZES" THE DISPLAY, AND ^C
;RETURNS TO THE MONITOR. DUMP CONTAINS MANY ERROR AND CONSISTANCY
;CHECKS. THE RESULTING MESSAGES SHOULD BE SELF EXPLANATORY.
;
;	DUMP WAS ASSEMBLED USING THE CP/M MACRO ASSEMBLER, AND USES A LARGE
;NUMBER OF MACROS INCLUDED IN A LIBRARY CALLED MACRO.LIB
;
$-PRINT
	MACLIB	MACRO		;INCLUDE MACRO LIBRARY
	ORG	100H		;SET PROG START
	LXI	H,0
	DAD	SP		;GET STACK POINTER
	SHLD	OLDSTK
	LXI	SP,NEWSTK	;SET UP NEW STACK
	DISKIO	?DRIVE		;GET CURRENTLY LOGGED DRIVE NO
	STA	NEWDRV		;ALSO SAVE IN NEW DRIVE NO
	LDA	81H		;CONSOLE INPUT ALREADY HERE ?
	ORA	A
	JZ	SIGNON		;BUFFER EMPTY, INPUT FROM CONSOLE
	LDA	80H		;GET NO OF CHAR INPUT
	ORI	80H		;ADD 128
	MOV	L,A		;TO L
	XRA	A		;ZERO
	MOV	H,A		;HL CONTAINS ADDR OF END OF BUFFER
ZBFF:	INR	L
	JZ	START		;REMAINDER OF BUFFER ZEROED
	MOV	M,A
	JMP	ZBFF		;LOOP
SIGNON:	PRINT	<CR,LF,'CP/M DUMP UTILITY VERS 1.3',CR,LF>
	PRINT	<'COPYRIGHT 1978 BY S. J. SINGER',CR,LF>
NEWIN:	PRINT	<CR,LF,'*'>
	MVI	A,0FFH		;SET SWITCH TO RETURN HERE AGAIN
	STA	INFLAG
	LXI	SP,NEWSTK	;RESET STACK POINTER
	XRA	A
	STA	VALFLG		;RESET VALIDATION ERROR FLAG
	LXI	H,0
	SHLD	LINE		;SET LINE COUNT TO ZERO
	FILL	80H,0FFH	;ZERO INPUT BUFFER
	INPUT	80H		;READ FILE NAME
;
;  SELECT DISK DRIVE AND SET UP FILE CONTROL BLOCK
;
START:	FILL	FCB,FCB+32	;ZERO FILE CONTROL BLOCK
	MATCH	82H,'A:'	;DRIVE A
	JZ	ADISK
	MATCH	82H,'B:'	;DRIVE B
	JZ	BDISK
	JMP	GETNAM		;NO DRIVE SPECIFIED
ADISK:	XRA	A
	STA	NEWDRV		;SELECT DRIVE A
	JMP	DOWN
BDISK:	MVI	A,1
	STA	NEWDRV		;SELECT DRIVE B
DOWN:	MOVE	82H,80H,40H	;SHIFT BUFFER DOWN TWO BYTES
;
;  SEARCH FOR DIRECT READ OF TRACK AND SECTOR OR VALIDATE
;
GETNAM:	INSTR	82H,40H,'VALIDATE'
	JC	VALID		;VALIDATE DISK
	INSTR	82H,40H,'GROUP'
	JC	GROUP		;DISPLAY CPM 8 SECTOR GROUP
	INSTR	82H,40H,'G '	;SEARCH FOR 'G'
	JC	GROUP		;DISPLAY GROUP
	INSTR	82H,40H,'MAP'	;ALLOCATION MAP
	JC	MAP		;DISPLAY GROUP ALLOCATION MAP
	INSTR	82H,40H,'DIR'	;DIRECTORY REQUEST
	JC	DIR		;DISPLAY DIRECTORY
	INSTR	82H,40H,'TRACK'	;SEARCH FOR TRACK
	JC	TRK1
	INSTR	82H,40H,'T '	;SEARCH FOR 'T'
	JNC	FILNAM		;NO TRACK GO TO READ FILE
TRK1:	SCAN			;FIND AND CONVERT NUMBER
	DECIN
	JC	INERR		;INPUT ERROR ON CARRY
	STA	TRACK		;SAVE TRACK NO
	INSTR	82H,40H,'SECTOR'	;SEARCH FOR SECTOR
	JC	SEC1
	INSTR	82H,40H,'S '	;TRY 'S'
	JNC	WHLTRK		;DUMP ENTIRE TRACK
SEC1:	SCAN	
	DECIN
	JC	INERR		;INPUT ERROR ON CARRY
	STA	BSEC		;BEGINNING SECTOR
	STA	ESEC		;SAVE IN END SECTOR ALSO
	XCHG			;SET BUFFER POINTER FOR SCAN
	SHLD	IPOINT		;SAVE BUFFER POINTER FOR EDIT
	INSTR	,40H,'-'	;SEARCH FOR '-'
	JNC	EDIT		;CHECK FOR EDITION OF SECTOR
	SCAN
	DECIN			;SCAN AND CONVERT ANOTHER NO
	JC	INERR		;ERROR IF CARRY SET
	STA	ESEC		;SAVE IN END SECTOR
	LXI	H,BSEC		;POINTS TO BSEC
	CMP	M		;COMPARE BEGIN AND END
	JP	DOREAD		;OK IF END>=BEGIN
	MOV	B,A		;OTHERWISE
	MOV	A,M		;SWITCH THEM
	STA	ESEC
	MOV	M,B
DOREAD:	CALL	RDISK0		;READ DIRECT
	JMP	ENDFIL		;BACK FOR MORE INPUT
EDIT:	LHLD	IPOINT		;RESET BUFFER POINTER
	INSTR	,40H,'EDIT'	;CHECK EDIT FUNCTION
	JNC	DOREAD		;GO TO DISPLAY SECTOR
	CALL	RDISK0		;DISPLAY SECTOR
EDIT1:	PRINT	<CR,LF,'EDIT - '>
	FILL	INBUF,INBUF+9
	INPUT	INBUF,6		;INPUT MAXIMUM 6 CHAR
	INSTR	INBUF,8,'WRITE'	;WRITE EDITED SECTOR ON DISK?
	JC	WRTDSK		;WRITE BUFFER BACK ON DISK
	INSTR	INBUF,8,'STOP'	;STOP EDITING WITHOUT WRITING?
	JC	ENDFIL		;EXIT
	HEXIN	INBUF+2		;CONV ASCII TO HEX
	JNC	CKLIM		;IF NO ERROR, CHECK ADDR
	LDAX	D		;GET ASCII CHAR
	CPI	'.'		;CHECK FOR EXIT CHAR
	JZ	EDIT3		;BACK FOR MORE EDITING
	JMP	ADERR		;ADDRESS ERROR
CKLIM:	LXI	D,0080H		;CHECK ADDR LIMIT
	CPHL
	JP	ADERR		;ADDRESS ERROR
	SHLD	IPOINT		;SAVE ADDRESS
	PRINT	CRLF,$
PTX:	HEXOUT	IPOINT+1
	HEXOUT	IPOINT		;ECHO THE ADDRESS
	PRINT	SPACE,$
	LHLD	IPOINT		;ECHO PRESENT CONTENTS
	LXI	D,0080H
	DAD	D		;COMPUTE MEMORY ADDR
	MOV	A,M		;GET BYTE FROM MEMORY
	HEXOUT
	PRINT	SPACE,$
	FILL	INBUF,INBUF+5	;ZERO INPUT BUFFER
	INPUT	INBUF,4		;INPUT 4 CHAR MAX
	HEXIN	INBUF+2		;CONVERT
	JNC	EDIT2		;HEX CHAR
	LDAX	D		;GET ASCII CHAR
	CPI	'.'		;PERIOD ENDS INPUT
	JZ	EDIT3		;BACK FOR MORE EDITING
	JMP	HEXERR		;ERROR NOT HEX CHAR
EDIT2:	LDA	INBUF+1		;LOAD NO OF CHAR TYPED
	ORA	A
	JZ	EDITX		;NO REPLACEMENT IF JUST CR
	MOV	A,L		;CONVERTED CHAR BACK TO A
	LHLD	IPOINT		;LOAD MEMORY BUFFER POINTER
	LXI	D,0080H		;OFFSET
	DAD	D		;CALC MEMORY ADDR
	MOV	M,A		;STORE NEW INPUT TO MEMORY
EDITX:	PRINT	CRLF,$
	LDA	IPOINT		;LEAST SIGNIFICANT HALF OF ADDR
	INR	A		;INCR BY ONE
	ANI	7FH		;COUNT MOD 128
	STA	IPOINT
	JMP	PTX		;INPUT MORE DATA
EDIT3:	LXI	H,0
	SHLD	LINE		;RESET LINE NO TO ZERO
	CALL	PRTSEC		;PRINT BUFFER WITH HEADING
	JMP	EDIT1		;BACK FOR ADDITIONAL EDITING
WRTDSK:	CALLBIOS DWRITE		;WRITE BUFFER BACK ON DISK
	JMP ENDFIL		;EXIT
;
;  READ TRACK AND SECTOR DIRECT
;
RDISK0:	CALL	FIXB
RDISK:	SETSEC	BSEC		;SET SECTOR
	JC	BADSEC		;WRONG SECTOR NO
TRK2:	SETTRK	TRACK		;SET TRACK
	JC	BADTRK		;WRONG TRACK NO
	LDA	NEWDRV
	MOV	E,A
	DISKIO	LOGIN			;SELECT NEW DEIVE IF SPECIFIED
	CALLBIOS DREAD		;READ TRACK AND SECTOR
;
;  PRINT DRIVE, TRACK AND SECTOR HEADING
;
PRTSEC:	LDA	NEWDRV		;NEW DRIVE NO
	ORA	A
	JNZ	PRNB		;PRINT DRIVE B
	PRINT	<CR,LF,'               DRIVE A -'>
PRNTRK:	PRINT	' TRACK '
	LXI	H,0
	LDA	TRACK
	MOV	L,A
	DECOUT
	PRINT	'  SECTOR '
	LXI	H,0
	LDA	BSEC
	MOV	L,A
	DECOUT
	PRINT	CRLF,$
	CALL	PRTBUF		;PRINT IT
	LXI	H,BSEC		;ADDR OF SECTOR NUMBER
	LDA	ESEC		;END SECTOR NUMBER
	CMP	M		;COMPARE THEM
	RZ			;EXIT IF THEY ARE EQUAL
	INR	M		;INCR BSEC
	JMP	RDISK
PRNB:	PRINT	<CR,LF,'               DRIVE B -'>
	JMP	PRNTRK		;PRINT TRACK AND SECTOR
;
;  DUMP ENTIRE TRACK IF NO SECTOR INPUT
;
WHLTRK:	MVI	A,1		;BEGIN SECTOR
	STA	BSEC
	MVI	A,26		;END SECTOR
	STA	ESEC
	CALL	RDISK0		;TO READ DISK
	JMP	ENDFIL		;BACK FOR MORE INPUT
;
;  FILL IN FCB FOR NAMED FILE
;
FILNAM:	FILFCB	FCB,82H	;FILL IN FCB NAME FROM INPUT BUFFER
	JC	NAMERR		;ERROR IN FILE NAME
	MATCH	FCB+9,'COM'	;TEST FOR COM FILE
	JNZ	SELDR
	LXI	H,100H	
	SHLD	LINE		;SET LINE NO. TO 100
SELDR:	LDA	NEWDRV		;SELECT NEW DRIVE
	MOV	E,A
	DISKIO	LOGIN
	DISKIO	OPEN,FCB	;0PEN FILE
	CPI	255		;CHECK FILE PRESENT
	JZ	OPNERR		;EXIT IF ERROR
RDFILE:	DISKIO	READ,FCB	;READ A BLOCK
	ORA	A		;ZERO INDICATES SUCESSFUL READ
	JNZ	ENDFIL		;1 INDICATES EOF
	CALL	PRTBUF		;DO PRINT SUBROUTINE
	JMP	RDFILE		;BACK FOR NEXT BLOCK
ENDFIL:	LDA	INFLAG		;SEE WHERE TO GO
	ORA	A
	JZ	MONITOR
	JMP	NEWIN
;
;
;  PRTBUF - PRINT BUFFER IN HEX AND ASCII
;
PRTBUF:	MVI	B,8		;8 LINES
	LXI	H,80H		;INITIAL BUFFER POINTER
	SHLD	IPOINT		;STORAGE FOR POINTER
BPRN:	LHLD	IPOINT		;LOAD POINTER
	MVI	C,16		;CHAR PER LINE
	LDA	LINE+1		;LINE NUMBER
	SAVE	B,H
	HEXOUT
	LDA	LINE		;SECOND TWO DIGITS
	HEXOUT
	PRINT	'  '
	RESTORE	H,B
PLOOP:	MOV	A,M		;GET A BYTE
	SAVE	B,H
	HEXOUT
	PRINT	SPACE,$
	RESTORE	H,B
	INX	H		;INCR MEMORY POINTER
	MOV	A,C
	CPI	9		;CHECK 8 CHAR
	JNZ	DECC		;SKIP IF NOT
	SAVE	B,H
	PRINT	SPACE,$
	RESTORE	H,B
DECC:	DCR	C		;DECR CHAR COUNT
	JNZ	PLOOP		;PRINT SOME MORE
	SAVE	B
	PRINT	SPACE,$
	RESTORE	B
	LHLD	IPOINT		;RESET POINTER FOR ASCII
	MVI	C,10H		;RESET CHAR COUNT
PLOOP1:	MOV	A,M		;GET A BYTE
	ANI	7FH		;MASK OFF HIGH BIT
	CPI	7FH		;DELETE CODE
	JZ	PERIOD		;PRINT PERIOD FOR DELETE
	CPI	20H		;TEST FOR CONTROL CHAR
	JP	SKIPX		;SKIP SUBSTITUTION
PERIOD:	MVI	A,2EH		;ASCII PERIOD
SKIPX:	SAVE	B,H
	CHAROUT			;PRINT IT SAVE REGS
	RESTORE	H,B
	INX	H		;INCR MEMORY POINTER
	MOV	A,C
	CPI	9		;CHECK 8 CHAR
	JNZ	DECC2
	SAVE	B,H
	PRINT	SPACE,$
	RESTORE	H,B
DECC2:	DCR	C		;DECR CHAR COUNT
	JNZ	PLOOP1		;PRINT SOME MORE
	SAVE	B
	PRINT	CRLF,$		;CARRIAGE RETURN
	CALL	PRNCON		;PRINT CONTROL?
	POP	B
	INDEX	LINE,16		;INCR LINE NO BY 16
	DCR	B		;DECR	LINE COUNT
	RZ			;RETURN IF LINE COUNT ZERO
	INDEX	IPOINT,16	;INCR POINTER BY 16
	JMP	BPRN		;LOOP BACK
;
;    THIS SECTION VALIDATES A DISK
;
VALID:	MVI	A,1		;START WITH SECTOR 1
	STA	SNUM
	XRA	A		;START WITH TRACK 0
	STA	TNUM
	LDA	NEWDRV		;SELECT NEW DRIVE
	MOV	E,A
	DISKIO	LOGIN
RS0:	SETTRK	TNUM
	JC	BADTRK
RS1:	SETSEC	SNUM
	JC	BADSEC
	CALLBIOS DREAD
	ORA	A
	CNZ	VALERR		;ERROR IF NOT ZERO
	CALL	PRNCON		;ESCAPE ON CONTROL C
	LDA	SNUM		;SECTOR NO
	ADI	5		;INCR BY 5
	STA	SNUM		;STORE IT BACK
	SBI	27		;CALC SECTOR MOD 26
	JM	RS1		;SECTOR OK IF MINUS
	INR	A		;SECTOR MOD 26
	STA	SNUM		;STORE IT BACK
	CPI	1		;ARE WE BACK TO ONE YET
	JNZ	RS1		;READ SOME MORE
	LDA	TNUM		;TRACK NUMBER
	INR	A		;INCR BY ONE
	CPI	77		;CHECK LIMIT
	JZ	VALOUT		;TO EXIT
	STA	TNUM		;STORE BACK TRACK NO
	JMP	RS0		;BACK TO READ ROUTINE
VALOUT:	LDA	VALFLG		;CHECK ERROR FLAG
	ORA	A
	JNZ	ENDFIL
	PRINT	<CR,LF,'SUCCESSFUL VALIDATION'>
	LDA	NEWDRV
	ORA	A
	JNZ	VAL2
	PRINT	' DRIVE A'
	JMP	ENDFIL
VAL2:	PRINT	' DRIVE B'
	JMP	ENDFIL
VALERR:	PRINT	<CR,LF,'ERROR - TRACK '>
	LDA	TNUM
	LXI	H,0
	MOV	L,A
	DECOUT
	PRINT	'  SECTOR '
	LXI	H,0
	LDA	SNUM
	MOV	L,A
	DECOUT
	PRINT	CRLF,$
	MVI	A,-1
	STA	VALFLG		;SET ERROR FLAG
	RET
;
;  PRINT CONTROL AND ESCAPE
;
PRNCON:	MVI	C,11
	CALL	5
	ANI	1
	RZ			;RETURN
	CHARIN			;READ CONSOLE
	CPI	3		;TEST FOR CONTROL C
	JZ	ENDFIL		;EXIT IF CONTROL C
	RET
;
;    THIS SECTION DISPLAYS A CPM GROUP OF 8 SECTORS
;
GROUP:	SCAN			;GET THE GROUP NO
	DECIN			;CONVERT TO BINARY
	JC	INERR		;INPUT ERROR IF CARRY SET
	STA	G		;SAVE GROUP NO
	ADI	13		;CHECK LEGAL RANGE
	JC	BADGRP
	XRA	A
	STA	S		;SET SECTOR COUNT TO 0
	CALL	FIXB		;RESTORE DRIVE B IF SELECTED
GRP1:	CALL	GRPTS		;CONVERT TO TRACK AND SECTOR
	CALL	RDISK		;PRINT THE SECTOR
	LDA	S		;CHECK SECTOR COUNT
	INR	A
	STA	S		;INCR S BY 1
	CPI	8		;CHECK LIMIT
	JNZ	GRP1		;PRINT ANOTHER SECTOR
	JMP	ENDFIL		;BACK FOR MORE INPUT
;
;   GRPTS  CONVERT CPM GROUP AND SECTOR NUMBER TO TRK AND SEC
;
GRPTS:	MVI	H,0		;ZERO H
	LDA	G		;GROUP NO
	MOV	L,A		;TO L
	MOV	D,H		;ZERO	D
	DAD	H
	DAD	H
	DAD	H		;SHIFT LEFT 3
	LDA	S		;GET SECTOR NO
	MOV	E,A		;TO DE
	DAD	D		;HL HAS G*8+S
	LXI	D,-26		;DIVISOR
	MVI	A,1		;CONTAINS DIVIDEND
DIV:	DAD	D		;SUB 26
	INR	A
	JC	DIV		;LOOP TILL MINUS
	LXI	D,TABLE+26	;INDEX INTO TABLE
	DAD	D
	STA	TRACK		;STORE TRACK NO
	MOV	A,M		;GET SECTOR NO
	STA	BSEC		;SAVE IN BEGINNING SECTOR
	STA	ESEC		;SAVE IN END SECTOR TOO
	RET
$+PRINT
;
;    THIS ROUTINE DISPLAYS THE DISK SECTOR ALLOCATION MAP
;
MAP:	LDA	NEWDRV
	MOV	E,A
	DISKIO	LOGIN		;LOG IN SELECTED DRIVE
	DISKIO	?ALLOC		;GET POINTER TO ALLOCATION MAP
	MOV	H,B
	MOV	L,A		;TO HL
	SHLD	IPOINT		;SAVE MAP POINTER
	LXI	H,0		;ZERO HL
	SHLD	G		;ZERO COUNT OF UNUSED GROUPS
	PRINT	<CR,LF,LF,'             GROUP ALLOCATION MAP DRIVE -'>
	LDA	NEWDRV		;LOGGED DRIVE
	ORA	A
	JNZ	DRB		;DRIVE B
	PRINT	<' A',CR,LF,LF>
	JMP	MAP1
DRB:	PRINT	<' B',CR,LF,LF>
MAP1:	LHLD	IPOINT		;POINTER TO DISK ALLOCATION MAP
	MVI	D,8		;NO OF LINES
MAP2:	MVI	C,4		;WORDS PER LINE
MAPX:	SAVE
	PRINT	'            '
	RESTORE
MAP3:	MVI	B,8		;BITS PER WORD
	MOV	A,M		;GET A BYTE FROM ALLOC MAP
MAP4:	RAL			;SHIFT LEFT THRU CARRY
	SAVE	B,D,H,PSW
	JC	MAP5		;PRINT A ONE
	PRINT	'0'		;PRINT A ZERO
	LDA	G		;UNUSED GROUPS
	INR	A		;ADD 1
	STA	G		;STORE IT BACK
	JMP	MAP6
MAP5:	PRINT	'1'		;PRINT A ONE
MAP6:	RESTORE	PSW,H,D,B
	SAVE	PSW		;SAVE BIT MAP BYTE
	MOV	A,B		;BIT COUNT
	CPI	7
	JNZ	MAPY
	MOV	A,C		;WORD COUNT
	CPI	2
	JNZ	MAPY
	MOV	A,D		;LINE COUNT
	CPI	1
	JNZ	MAPY
	RESTORE	PSW
	JMP	MAP7		;TO PRINT UNUSED GROUPS
MAPY:	RESTORE	PSW
	DCR	B		;DCR BIT COUNT
	JNZ	MAP4		;PRINT MORE BITS
	DCR	C		;DECR WORD COUNT
	INX	H		;INCR ALLOC MAP POINTER
	JNZ	MAP3
	SAVE
	PRINT	CRLF,$
	RESTORE
	DCR	D		;DECR LINE COUNT
	JMP	MAP2
MAP7:	PRINT	<CR,LF,LF,'          '>
	DECOUT	G		;PRINT NO OF UNUSED SECTORS
	PRINT	<' GROUPS REMAINING ON DISK OUT OF 243',CR,LF>
	JMP	ENDFIL		;EXIT
;
;    THIS ROUTINE SORTS AND DISPLAYS THE DIRECTORY
;	(NOT IMPLEMENTED IN THIS VERSION)
;
DIR:	JMP	ENDFIL		;EXIT
;
;    THIS ROUTINE RESTORES DRIVE B
;
FIXB:	LDA	NEWDRV		;CHECK DRIVE NO
	ORA	A
	RZ			;RETURN IF DRIVE A
	LDA	NEWDRV		;SELECT DRIVE B
	MOV	E,A
	DISKIO	LOGIN
	XRA	A
	STA	TNUM		;SELECT TRACK ZERO
	INR	A		;SELECT SECTOR 1
	STA	SNUM
	SETSEC	SNUM
	SETTRK	TNUM
	CALLBIOS DHOME		;HOME DRIVES
	CALLBIOS DREAD		;READ TRACK ZERO DIRECT
	RET
;
;  ERROR AND EXIT ROUTINES
;
;
INERR:	PRINT	<CR,LF,'INPUT ERROR'>
	JMP	ENDFIL
;
BADSEC:	PRINT	<CR,LF,'INCORRECT SECTOR NUMBER'>
	JMP	ENDFIL
;
BADTRK:	PRINT	<CR,LF,'INCORRECT TRACK NUMBER'>
	JMP	ENDFIL
;
BADGRP:	PRINT	<CR,LF,'INCORRECT GROUP NUMBER (GREATER THAN 242)'>
	JMP	ENDFIL
;
OPNERR:	LDA	NEWDRV		;CURRENT DRIVE NO
	ORA	A
	JNZ	OPNER1
	PRINT	<CR,LF,'NO FILE BY THAT NAME ON DRIVE A'>
	JMP	ENDFIL
OPNER1:	PRINT	<CR,LF,'NO FILE BY THAT NAME ON DRIVE B'>
	JMP	ENDFIL
;
RDERR:	PRINT	<CR,LF,'DISK DEAD ERROR'>
	JMP	MONITOR
NAMERR:	PRINT	<CR,LF,'ERROR IN FILE NAME'>
	JMP	ENDFIL
;
ADERR:	PRINT	<CR,LF,LF,'ADDRESS ERROR'>
	JMP	EDIT1		;ADDRESS ERROR ON EDIT
;
HEXERR:	PRINT	<CR,LF,'  ERROR - HEX INPUT ONLY',CR,LF>
	JMP	PTX
;
MONITOR: PRINT	CRLF,$
	LDA	DRVNO		;RESTORE LOGGED DRIVE NO
	MOV	E,A
	DISKIO	LOGIN
	LHLD	OLDSTK
	SPHL			;RESET OLD STACK POINTER
	RET
;
;
;   DATA ALLOCATIONS
;
FCB	EQU	5CH		;FILE CONTROL BLOCK
SPACE:	DB	' $'		;ASCII SPACE
CRLF:	DB	0DH,0AH,24H	;ASCII CR LF
I:	DW	0		;PSEUDO INDEX REGISTER
LINE:	DW	0		;LINE NUMBER FOR LISTING
IPOINT:	DW	00		;VARIABLE BUFFER POINTER
INBUF:	DS	10		;USED AS CONSOLE INPUT BUFFER
LASTIN:	DB	0		;LAST CONSOLE INPUT CHAR
INFLAG:	DB	0		;FLAG, RET FOR MORE CONSOLE INPUT
DRVNO:	DB	0		;STORAGE FOR ORIGINALLY LOGGED DRIVE
NEWDRV:	DB	0		;STORAGE FOR NEW DRIVE NO
TRACK:	DB	0		;SELECTED TRACK
BSEC:	DB	0		;SELECTED BEGINNING SECTOR
ESEC:	DB	0		;SELECTED ENDING SECTOR
TNUM:	DB	0		;TRACK NO FOR VALIDATE
SNUM:	DB	0		;SECTOR NO FOR VALIDATE
VALFLG:	DB	0		;VALIDATION ERROR FLAG
G:	DB	0		;CPM GROUP NO
S:	DB	0		;SECTOR NO WITHIN GROUP G
COUNT:	DB	0		;COUNT OF DIRECTORY ENTRIES
OLDSTK:	DW	0		;STORAGE FOR OLD STACK POINTER
ENDSTK:	DS	24		;STORAGE FOR NEW STACK
NEWSTK:	DW	0		;NEW STACK
INB:	DW	0		;STORES POINTER TO INPUT BUFFER AREA
OUTB:	DW	0		;STORES POINTER TO DIRECTORY BUFFER AREA
TABLE:	DB	01H		;SECTOR LOOK UP TABLE
	DB	07H
	DB	0DH
	DB	13H
	DB	19H
	DB	05H
	DB	0BH
	DB	11H
	DB	17H
	DB	03H
	DB	09H
	DB	0FH
	DB	15H
	DB	02H
	DB	08H
	DB	0EH
	DB	14H
	DB	1AH
	DB	06H
	DB	0CH
	DB	12H
	DB	18H
	DB	04H
	DB	0AH
	DB	10H
	DB	16H
PDIR	DW	0		;POINTER TABLE TO DIRECTORY (64 ENTRIES MAX)
DIRBUF:	EQU	PDIR+130	;START OF AREA USED TO STORE AND SORT DIRECTORY
	END
