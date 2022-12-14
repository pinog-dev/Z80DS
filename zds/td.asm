;	TITLE	"TD - Display & Set ZSDOS Time/Date"
;***************************************************************
; TD.Z80
; GET/SET TIME/DATE FOR ZSDOS/ZDDOS
; Derived by Cameron W. Cotrill from DATE.MAC by HAJ TEN BRUGGE
;   Copyright (C) 1988 by Cameron W. Cotrill and Harold F. Bower
;
; Revisions:
;   1.0 - Initial Release			16 Sep 88
;   1.1 - Modified for Z80 DS - P. Betti	11 Feb 08
;***************************************************************

VER	EQU	10

; Equates

CR	EQU	0DH
LF	EQU	0AH
TAB	EQU	09H
TBUF	EQU	80H
BELL	EQU	7
BDOS	EQU	5

GETTD	EQU	98		; ZSDOS Get Time & Date function
SETTD	EQU	99		; ZSDOS Set Time & Date function

	org	$100
; Opening Message

ENTER:	JP	BEGIN		; Bypass US/EUR flag

	DEFB	'Z3ENV'
	DEFB	1
ENVADR:	DEFW	0

; User Patch area to configure Date Display parameters

	DEFB	'EUR>'		; Tag for easy location with debugger
FORM:	DEFB	$FF		; 0=US date format, FF=European date format

; Program execution begins here

BEGIN:	LD	(STACK),SP
	LD	SP,STACK	; Switch to local stack
	XOR	A
	LD	(TDFLAG),A	; Clear data for go
	LD	C,12
	CALL	BDOS		; Get CP/M compatible Dos version
	CP	22H
	JR	NZ,BADDOS	; Can't be ZSDOS
	LD	C,48
	CALL	BDOS		; Get enhanced Dos type
	AND	A
	JR	Z,BADDOS	; Can't be version 0
	LD	A,H
	AND	A
	JR	Z,BADDOS	; Screen out ZRDOS
	LD	A,(TBUF)	; Get length of command tail
	ADD	A,TBUF+1	; Add to start of buffer
	LD	H,0
	LD	L,A		; Make as word in HL
	LD	(HL),0		; Zero terminate command line
	LD	HL,TBUF+1	; Point to start of command
	CALL	BLANK		; HL points to first non-space
	CP	'/'		; Test for help
	JP	NZ,START0	; Skip if no help
	LD	DE,EXPLA
PERR:	CALL	WRTLIN		; Output Help to Console
	LD	DE,EXPLA0	; Set default second part of message
	LD	A,(FORM)	; Is it US Format?
	OR	A
	JR	Z,PERR0		; ..jump if so
	LD	DE,EXPLA1	; Else set European form
PERR0:	CALL	WRTLIN
EXIT:	LD	SP,(STACK)
	RET

BADDOS:	LD	DE,BADDM
	JR	PERR0

BADDM:	DEFB	BELL,'SORRY! ZSDOS or ZDDOS is required to run this program!'
CRLMSG:	DEFB	CR,LF,'$'

; Help Message

EXPLA:	DEFB	LF,'TD, Version ',VER/10+'0','.',VER MOD 10 +'0'
	DEFB	' - Time/Date utility for ZSDOS'
	DEFB	CR,LF
	DEFB	'  Syntax:'
	DEFB	CR,LF,TAB
	DEFB	'TD                     - gives current date and time'
	DEFB	CR,LF,TAB
	DEFB	'TD //                  - display this help info'
	DEFB	CR,LF,TAB
	DEFB	'TD s[et]               - set date and time in dialog mode'
	DEFB	CR,LF,TAB
	DEFB	'TD c[ontinuous]        - display date and time continuously'
	DEFB	CR,LF,'$'

EXPLA0:	DEFB	TAB,'TD mm/dd/yy [hh:mm:ss] - set date and time for RTC'
	DEFB	CR,LF,TAB
	DEFB	'TD mm/dd/yy [+XXXX]    - set date and time for relative clock'
	DEFB	CR,LF,'$'

EXPLA1:	DEFB	TAB,'TD dd.mm.yy [hh:mm:ss] - set date and time for RTC'
	DEFB	CR,LF,TAB
	DEFB	'TD dd.mm.yy [+XXXX]    - set date and time for relative clock'
	DEFB	CR,LF,'$'

; No Clock Error

NOCLK:	LD	DE,CLKERM
	JP	PERR0		; Print error message and exit

CLKERM:	DEFB	BELL,CR,LF,'*** NO Clock Driver Installed!!!',CR,LF,'$'

NOSET:	LD	DE,NSETM
	JP	PERR0

NSETM:	DEFB	BELL,CR,LF,'*** Clock does NOT Support SET!!!',CR,LF,'$'

; Parse Command Line

START0:	AND	A		; Get time if no args
	JR	Z,GET
	CP	'C'		; Test if continuous
	JR	Z,CONT		; Do if so
	CALL	CHKWHL		; Abort Now if User isn't Wheel
	CP	'S'		; Else test for interactive set
	JR	Z,DOSET		; Do set if so
	CALL	RDCLK		; Get time from clock
	CALL	GETDAT		; Clock exists, get the date
	JP	C,ERROR		; C = day, B = month, E = year
	CALL	CHKDAT		; Test if ok
	JP	NC,ERROR	; Gag if wrong
	CALL	STOMDY		; Else store
	CALL	BLANK		; Scan for first
	AND	A
	JR	Z,START1	; Skip to set if date only
	CALL	GETTIM		; Else get
	JP	C,ERROR
	CALL	BLANK
	AND	A
	JP	NZ,ERROR	; Gag if left over input
	CALL	CHKTIM		; Validate time
	JP	NC,ERROR
	CALL	STOHMS
START1:	LD	DE,PRESS	; Press any key message
	CALL	WRTLIN		; Output it
	CALL	GETCHR		; Wait for user to enter a char
	CALL	WRCLK		; Ok,set it
	LD	DE,CRLMSG	; Roll console up to new line
	CALL	WRTLIN

GET:	CALL	RDCLK		; Read the clock
	CALL	PRDMJ		; Print t/d
	JP	EXIT		; Exit now

;.....
; Display Time/Date until user keypress

CONT:	CALL	RDCLK
CONT2:	CALL	PRDMJ		; Else print time/date
	LD	A,(RELCLK)
	AND	A
	JP	NZ,EXIT		; Don't loop if rel clock
CONT0:	LD	C,11
	CALL	BDOS		; See if user has had enough
	OR	A		; By testing console status
	JR	NZ,CONT1	; Exit if any key pressed
	LD	A,(SECOND)	; Get current seconds count
	PUSH	AF
	CALL	RDCLK
	POP	AF
	LD	B,A
	LD	A,(SECOND)	; Get new seconds count
	CP	B		; See if same
	JR	Z,CONT0		; Loop if same
	LD	A,CR
	CALL	OUTCH		; Print a CR
	JR	CONT2		; And output the time

CONT1:	CALL	GETCHR		; Eat character user typed
	JP	EXIT

; Prompted Setting of Clock

DOSET:	CALL	RDCLK		; be sure we have one
	CALL	WRCLK		; ..that sets
	LD	A,(FORM)	; Are we using European format?
	OR	A
	LD	DE,EURDAT	; (Set European prompt)
	JR	NZ,EUR4		; ..jump if so
	LD	DE,DATMSG	; Prompt for date
EUR4:	CALL	WRTLIN
	CALL	GETLIN		; ..and get user input line
	LD	DE,TIMEDT
	CALL	RDCLK		; Get current t/d from DOS
	LD	A,(TBUF+1)	; Get length
	ADD	A,82H
	LD	H,0
	LD	L,A		; Point to end of user input
	LD	(HL),0		; Null terminate it
	LD	HL,TBUF+2
	CALL	BLANK		; Scan for first non-space char
	AND	A
	JR	Z,SET0		; Skip if no input
	CALL	GETDAT		; Else parse date from user input
	JR	C,ERROR		; Exit if error
	CALL	BLANK
	AND	A
	JR	NZ,ERROR	; Or if params still remain
	CALL	CHKDAT		; Insure it's ok
	JR	NC,ERROR
	CALL	STOMDY		; Store if ok
SET0:	LD	A,0FFH
	LD	(TDFLAG),A	; Flag entering time now
	LD	A,(RELCLK)
	AND	A		; Test for relative clock
	LD	DE,TIMMSG	; Assume real clock
	JR	Z,SET2		; Jump if we assumed correctly
	LD	DE,RTIMSG	; Else load the correct message
SET2:	CALL	WRTLIN		; Tell user to enter time now
	CALL	GETLIN		; ..and get input string
	LD	A,(TBUF+1)
	ADD	A,82H
	LD	H,0
	LD	L,A
	LD	(HL),0		; Zero terminate user input
	LD	HL,TBUF+2
	CALL	BLANK		; Find first non-blank char
	AND	A
	JR	Z,SET1		; Skip to set if no input
	CALL	GETTIM		; Else parse time from the buffer
	JR	C,ERROR
	CALL	BLANK
	AND	A		; Insure no input left over
	JR	NZ,ERROR	; Gag if there is
	CALL	CHKTIM		; Validate user time
	JR	NC,ERROR
	CALL	STOHMS		; Save if ok
SET1:	CALL	WRCLK
	JP	GET

ERROR:	LD	DE,ERRMSG	; Let user know he messed up
	CALL	WRTLIN		; Output to CON:
	LD	A,(TDFLAG)
	OR	A
	JP	Z,DOSET
	JR	SET0


ERRMSG:	DEFB	BELL,'*** Error in Data Input',CR,LF,'$'

DATMSG:	DEFB	'Enter today''s date (MM/DD/YY): $'
EURDAT:	DEFB	'Enter today''s date (DD.MM.YY): $'

TIMMSG:	DEFB	'Enter the time (HH:MM:SS): $'

RTIMSG:	DEFB	'Enter the relative time (+XXXX): $'

PRESS:	DEFB	'Press any key to set time $'

;.....
; Get Date -  C = Day, B = Month, E = Year

GETDAT:	LD	A,(HL)		; Get next char
	INC	HL		; Bump pointer
	OR	A		; Test for end of string
	SCF
	RET	Z		; Exit if end
	CALL	DIGIT		; Test if 2nd char is digit
	JR	C,GETDAT	; Get next if not digit
	DEC	HL		; Else back pointer up
	CALL	NUMBER		; Process as a number
	RET	C		; Exit if error
	LD	B,E		; Month
GETDT0:	LD	A,(HL)
	INC	HL
	OR	A
	SCF
	RET	Z		; Return if out of data
	CALL	DIGIT
	JR	C,GETDT0
	DEC	HL
	CALL	NUMBER
	RET	C
	LD	C,E		; Day
GETDT1:	LD	A,(HL)
	INC	HL
	OR	A
	SCF
	RET	Z		; Return if out of data
	CALL	DIGIT
	JR	C,GETDT1
	DEC	HL
	CALL	NUMBER		; Year
	PUSH	AF		; Save flags for format check
	LD	A,(FORM)	; Are we using European format?
	OR	A
	JR	Z,EUR5		; ..jump if not
	LD	A,C		; Else reverse Day and Month
	LD	C,B
	LD	B,A
EUR5:	POP	AF		; Restore flags
	RET

;.....
; Get Time B=Hour, C=Minute, E=Seconds

GETTIM:	LD	A,(RELCLK)	; Test for relative clock
	AND	A
	JR	NZ,GETREL	; Do differently for rel clock
	LD	A,(HL)
	INC	HL
	OR	A
	SCF
	RET	Z		; Exit if no user time entry
	CALL	DIGIT		; Insure digit
	JR	C,GETTIM	; Loop if error
	DEC	HL		; Back up
	CALL	NUMBER		; Get hours
	RET	C		; Exit if error
	LD	B,E		; Hour
GETT0:	LD	A,(HL)
	INC	HL
	OR	A
	SCF			; Exit if no minutes
	RET	Z
	CALL	DIGIT		; Else insure it's a digit
	JR	C,GETT0		; Loop if not
	DEC	HL		; Back pointer up to digit
	CALL	NUMBER
	RET	C		; Exit if error
	LD	C,E		; Minute
	LD	E,0
GETT1:	LD	A,(HL)
	OR	A
	RET	Z		; Exit w/o error if no seconds
	INC	HL
	CALL	DIGIT		; Else test for digit
	JR	C,GETT1		; Loop if not digit
	DEC	HL
	CALL	NUMBER		; Second
	RET

GETREL:	XOR	A		; Init result
	LD	B,80H
	LD	C,A
	LD	E,A
	LD	A,(HL)		; Check first char
	CP	'+'		; For relative clock prefix
	SCF			; Prep for error exit
	RET	NZ		; Get out if was error
GETRE1:	INC	HL		; Else bump to first digit
	LD	A,(HL)
	CALL	DIGIT		; Carry clear if digit
	CCF
	RET	NC		; No errors generated here
	AND	0FH		; Convert to binary
	PUSH	HL		; Save pointer
	LD	H,B
	LD	L,C		; Xfer running sum to HL
	ADD	HL,HL		; *2
	PUSH	HL		; Save *2 result
	ADD	HL,HL		; *4
	ADD	HL,HL		; *8
	POP	BC		; Restore *2 result
	ADD	HL,BC		; Now *10
	LD	C,A
	LD	B,0
	ADD	HL,BC		; Add in new digit
	LD	B,H
	LD	C,L		; Move back to BC
	SET	7,B		; Insure rel flag set
	POP	HL		; Restore pointer
	JR	GETRE1		; And back for more

; Check Date - C = Day, B = Month, E = Year
;  Carry Set if OK

CHKDAT:	LD	A,B
	CP	10H
	JR	C,CHKDA1	; Get rid of BCD Bias
	SUB	6
CHKDA1:	DEC	A		; Insure month >0
	CP	12		; Insure month <= 12
	RET	NC		; Quit if not
	PUSH	HL
	LD	HL,DM		; Point to days of the month data
	ADD	A,L
	LD	L,A
	LD	A,0
	ADC	A,H
	LD	H,A		; Index to days of the month
	LD	A,C		; Get day
	DEC	A		; 0 base
	CP	(HL)		; Test if in bounds
	POP	HL
	RET

; Check time B=Hour, C=Minute, E=Second
;  Carry Set if OK

CHKTIM:	LD	A,(RELCLK)
	AND	A
	JR	NZ,CHKTI1	; Do differently if rel
	LD	A,B
	CP	24H		; Test hours
	RET	NC
	LD	A,C
	CP	60H		; Test minutes
	RET	NC
	LD	A,E
	CP	60H		; Test seconds
	RET

CHKTI1:	PUSH	HL
	RES	7,B		; Clear flag for compare
	LD	HL,9999		; Max rel clock count
	AND	A
	SBC	HL,BC
	CCF			; Comp for wrong way compare
	POP	HL
	SET	7,B		; Set rel flag again
	RET

; Days/Month

DM:	DEFB	31H,29H,31H,30H,31H,30H,31H,31H,30H,31H,30H,31H

;.....
; Print: Days,Month,Year

PRDMJ:	LD	A,' '
	CALL	OUTCH		; Space off one
	PUSH	HL
	PUSH	DE
	LD	A,(FORM)	; Is it European format?
	OR	A
	JR	NZ,EUR0		; ..jump if so

EUR2:	LD	A,(MONTH)
	CP	10H		; See if >SEPT
	JR	C,PRDMJ0
	SUB	6		; If so, Get rid of BCD bias
PRDMJ0:	LD	E,A
	LD	D,0		; Put month in DE
	LD	HL,MONTHS-3
	ADD	HL,DE
	ADD	HL,DE
	ADD	HL,DE		; Index into month table
	LD	A,(HL)
	INC	HL
	CALL	OUTCH
	LD	A,(HL)
	INC	HL
	CALL	OUTCH
	LD	A,(HL)
	CALL	OUTCH		; Print month abbreviation
	POP	DE
	POP	HL
	LD	A,' '
	CALL	OUTCH		; Space off one
	LD	A,(FORM)	; Is it European format?
	OR	A
	JR	NZ,EUR3		; ..jump if so

EUR0:	LD	A,(DAY)
	CALL	OUTBCD		; Print day
	LD	A,(FORM)	; Is it European format?
	OR	A
	JR	NZ,EUR1		; ..jump if European
	LD	A,','
	CALL	OUTCH
EUR1:	LD	A,' '
	CALL	OUTCH		; Space off one
	LD	A,(FORM)	; Is it European format?
	OR	A
	JR	NZ,EUR2		; ..jump if so

EUR3:	LD	A,(YEAR)
	PUSH	AF
	CP	78H		; See which century
	LD	A,20H
	JR	C,PRDMJ1	; If 21st
	LD	A,19H
PRDMJ1:	CALL	OUTBCD		; Print prefix
	POP	AF
	CALL	OUTBCD		; Now last two digits
	LD	A,' '
	CALL	OUTCH
	CALL	OUTCH		; Separate time from date
	LD	A,(RELCLK)
	AND	A
	JP	NZ,PRREL	; Use different print routine for rel time
	LD	A,(HOUR)
	CALL	OUTBCD		; Output hour
	LD	A,':'
	CALL	OUTCH		; Separate with a colin
	LD	A,(MINUTE)
	CALL	OUTBCD		; Output minute
	LD	A,':'
	CALL	OUTCH		; Separate with a colin
	LD	A,(SECOND)
	CALL	OUTBCD		; Now output seconds
	LD	A,' '
	JP	OUTCH		; Print space and return


;.....
; Days in Week

MONTHS:	DEFB	'JanFebMarAprMayJunJulAugSepOctNovDec'

;.....
; Output BCD char

OUTBCD:	PUSH	AF		; Save packed BCD on stack
	RRCA
	RRCA
	RRCA
	RRCA			; Swap nibbles
	CALL	OUTBC1		; Mask, convert Hi-nib to ascii & send
	POP	AF
OUTBC1:	PUSH	AF		; Restore BCD
	AND	0FH		; Mask so low digit remains
	ADD	A,'0'		; Convert to ascii
	CALL	OUTCH		; Send to console
	POP	AF
	RET			; And return to caller

;.....
; Input Number - Returns result in E

NUMBER:	CALL	BLANK		; Skip to first non-blank
	LD	A,(HL)		; Get first non-blank
	CALL	DIGIT		; Test if digit
	RET	C		; Quit if not
	AND	0FH		; Convert ascii to bcd
	LD	E,A
	LD	D,0		; Make as word in hl
NUMB0:	INC	HL		; Point to next char in buffer
	LD	A,(HL)
	CALL	DIGIT		; Test if digit
	CCF			; Set carry if digit
	RET	NC		; Quit if not
	EX	DE,HL		; Put result so far in hl
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL
	ADD	HL,HL		; Shift result 1 packed bcd digit left
	AND	0FH		; Convert what we got to bcd
	ADD	A,L
	LD	L,A		; Add new digit in
	EX	DE,HL		; Result back to de
	LD	A,D
	OR	A		; Test MSB for 0
	SCF			; Indicate error
	RET	NZ		; Exit if >2 non-zero digits
	JR	NUMB0		; Else get next char

;.....
; Blank Input

BLANK:	LD	A,(HL)
	CP	' '		; Test for space
	JR	Z,BLANK0	; It is, skip it
	CP	TAB		; Else test for tab
	RET	NZ		; Exit if not tab or space
BLANK0:	INC	HL
	JR	BLANK

;.....
; Test digit - Carry Clear if Digit

DIGIT:	CP	'0'
	RET	C
	CP	'9'+1
	CCF
	RET

;.....
; Routine to Read the Clock

RDCLK:	PUSH	HL
	LD	DE,TIMEDT	; Point to time/date buffer
	LD	C,GETTD
	CALL	BDOS		; Read the clock
	DEC	A		; Was it a good read?
	JP	NZ,NOCLK	; ..Exit if no Clock
	LD	A,(HOUR)
	AND	80H		; Test for relative clock
	LD	(RELCLK),A	; Save Rel clock flag
	POP	HL
	RET

;.....
; Routine to set the Clock

WRCLK:	LD	DE,TIMEDT
	LD	C,SETTD		; Set this sucker
	CALL	BDOS
	DEC	A		; Test if error
	RET	Z		; ..return if Ok
	JP	NOSET		; Else it's a set error

;.....
; Store Month, Day and Year in Buffer

STOMDY:	PUSH	HL
	LD	HL,DAY
	LD	(HL),C		; Store day
	DEC	HL
	LD	(HL),B		; Month
	DEC	HL
	LD	(HL),E		; And year
	POP	HL
	RET

;.....
; Store Hours, Minutes, and seconds in Buffer

STOHMS:	PUSH	HL
	LD	HL,HOUR
	LD	(HL),B		; Store hour
	INC	HL
	LD	(HL),C		; Minute
	INC	HL
	LD	(HL),E		; And seconds
	POP	HL
	RET

;.....
; Print Relative Stamp

PRREL:	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL

	LD	A,'+'
	CALL	OUTCH		; Prefix with a +
	LD	HL,HOUR
	LD	A,(HL)
	RES	7,A		; Clear Rel count flag for dsp
	INC	HL
	LD	L,(HL)		; Get Rel count
	LD	H,A		; Into HL
	LD	DE,-1000
	CALL	SUBTR
	LD	DE,-100
	CALL	SUBTR
	LD	DE,-10
	CALL	SUBTR
	LD	A,L		; Remainder
	ADD	A,'0'		; Ascii bias
	CALL	OUTCH		; Display

	POP	HL
	POP	DE
	POP	BC
	POP	AF
	RET

SUBTR:	LD	C,'0'-1		; Ascii count
SUBT2:	INC	C
	ADD	HL,DE		; Really subtract
	JR	C,SUBT2		; Keep going
	SBC	HL,DE		; One too many,add back
	LD	A,C		; Ascii count
	JR	OUTCH		; Else display and return

;.....
; Check whether or not we have Wheel privileges

CHKWHL:	PUSH	BC
	PUSH	HL
	LD	HL,(ENVADR)	; Get ENV Address
	LD	B,A		; Save A Reg
	LD	A,H
	OR	L		; Test if ENV valid
	LD	A,B		; Restore A Reg
	JR	Z,WHLOK		; No ENV, Assume Wheel Set
	LD	BC,29H
	ADD	HL,BC		; Else point to Wheel Pointer
	LD	B,A		; Save A Reg
	LD	A,(HL)
	INC	HL
	LD	H,(HL)
	LD	L,A
	LD	A,(HL)		; Classic indirect fetch
	OR	A		; Test if Set
	LD	A,B		; Restore A Reg
	JR	Z,NOWHL		; ..jump if Not
WHLOK:	POP	HL
	POP	BC
	RET

NOWHL:	LD	DE,NOWHLM	; Point to Error Message
	JP	PERR0		; Print Wheel Error and Exit

NOWHLM:	DEFB	BELL,'*** Must be wheel to set clock!',CR,LF,'$'

;.....
; Write the text line addressed by DE to the console

WRTLIN:	LD	C,9		; Write Buffer Command
BDOSV:	JP	BDOS

;.....
; Get a line of text to the default buffer echoing a LF after user's CR

GETLIN:	LD	DE,TBUF		; Gather string in default buffer
	LD	A,126		; Set buffer length
	LD	(DE),A
	LD	C,10
	CALL	BDOS		; Get user's response
	LD	A,LF
			;..fall thru to turn up a new line and return
;.....
; Output a char via Dos Call

OUTCH:	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL
	LD	E,A
	LD	C,2
	CALL	BDOS
	POP	HL
	POP	DE
	POP	BC
	POP	AF
	RET

;.....
; Get a character from the User's Console

GETCHR:	LD	C,1		; Dos Get Char command
	JR	BDOSV		; Do it, then return

;.....
; RAM Areas

	DSEG

TDFLAG:	DEFS	1
RELCLK:	DEFS	1

TIMEDT:
YEAR:	DEFS	1		; Buffer for Time/Date reads
MONTH:	DEFS	1
DAY:	DEFS	1
HOUR:	DEFS	1
MINUTE:	DEFS	1
SECOND:	DEFS	1

	DEFS	64		; Room for local stack
STACK:	DEFS	2		; Storage for entry stack

	END
