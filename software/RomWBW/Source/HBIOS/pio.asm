; PIO driver sets up the parallel port as a subtype of Serial/Char device.
;
;
; HBIOS initializes driver by:
;
; 1) Performing Pre-initialization
;
;    This involves setting up all the data structures decribing the devices.
;    If possible, do a hardware test to verify it is available for adding to available devices.
;
; 2) Performing individual device/unit initialization.
;
;    Hardware initialization.
;    Configure to initial state or to a new state.
; Implementation limitations:
;
; The fully functionality of the Z80 PIO can only be realized by using Z80 interrupt mode 2.
; Registers cannot be interrogated for interrupts status and the originating interrupt
; device cannot be determine.
;
; Full implementation of IM2 functionality in an ECB-ZP and ECB-4P board would require the 
; allocation of an interrupt handler for each chip channel. Thus, 10 interrupt handler
; would be required to support this configuration. As the HBIOS only has an allocation of
; 16, a full implmentation is impractical.
;
; The compromise solution is for the driver to allow IM2 only on the first PIO on each board.
; So, a ECB-4PIO would be fully interrupt drived in all modes but a ECB-ZP would only allow
; PIO 0 to be interrupt drived and PIO 1,2,3 would be limited to Bit mode or blind read and
; writed to the input/output ports.
;
; Zilog PIO reset state:
;
; Both port mask registers are reset to inhibit All port data bits.
; Port data bus lines are set to a high-impedance state and the Ready "handshake"
; Mode 1 is automatically selected.
; The vector address registers are not reset.
; Both port interrupt enable flip-flops are reset.
; Both port output registers are reset.
;
; Program a channel
;
;		LD		C,PIOBC		; C -> PIO Channel B control
;		LD		B,5		; 5 bytes to send
;		LD		HL,PT		; HL -> Initialization data
;		OTIR				; send bytes
;
PIODEBUG	.EQU	1
;
M_Output	.EQU	$00 << 6
M_Input		.EQU	$01 << 6
M_Bidir		.EQU	$02 << 6
M_BitCtrl	.EQU	$03 << 6
M_BitAllIn	.EQU	$FF
M_BitAllOut	.EQU	$00
;
PIO_NONE	.EQU	0
PIO_ZPIO	.EQU	1
PIO_8255	.EQU	2
PIO_PORT	.EQU	3

;INT_POOL	.EQU	HBX_IVT+IVT_PIO0

INT_ALLOC	.DB	0
INT_N		.EQU	00000000B
#IF	(INTMODE == 2)
INT_Y		.EQU	INT_N
INT_ALLOW	.EQU	4
#ELSE
INT_Y		.EQU	00000100B
INT_ALLOW	.EQU	0
#ENDIF

INT_0		.EQU	00000000B
INT_1		.EQU	00000001B
INT_2		.EQU	00000010B
INT_3		.EQU	00000011B
;
;
; SETUP THE DISPATCH TABLE ENTRIES
;
; WE CANT PRINT ANYTHING TO HBIOS CONSOLE AT THIS POINT
; PIO_CNT HOLDS THE NUMBER OF DEVICED CALCULATED FROM THE NUMBER OF DEFPIO MACROS
; PIO_CNT SHOULD INCREASE BY 2 FOR EVERY PIO CHIP ADDED.
;
PIO_PREINIT:
	LD	B,PIO_CNT		; LOOP CONTROL
	LD	C,0			; PHYSICAL UNIT INDEX
	XOR	A			; ZERO TO ACCUM
	LD	(PIO_DEV),A		; CURRENT DEVICE NUMBER
PIO_PREINIT0:	
	PUSH	BC			; SAVE LOOP CONTROL
	LD	A,C			; PHYSICAL UNIT TO A
	RLCA				; MULTIPLY BY CFG TABLE ENTRY SIZE (8 BYTES)
	RLCA				; ...
	RLCA				; ... TO GET OFFSET INTO CFG TABLE
	LD	HL,PIO_CFG		; POINT TO START OF CFG TABLE
	CALL	ADDHLA			; HL := ENTRY ADDRESS
	PUSH	HL			; SAVE IT
	PUSH	HL			; COPY CFG DATA PTR
	POP	IY			; ... TO IY
	CALL	PIO_INITUNIT		; HAND OFF TO GENERIC INIT CODE
	POP	DE			; GET ENTRY ADDRESS BACK, BUT PUT IN DE
	POP	BC			; RESTORE LOOP CONTROL
;
	LD	A,(IY+1)		; GET THE PIO TYPE DETECTED
	OR	A			; SET FLAGS
	JR	Z,PIO_PREINIT2		; SKIP IT IF NOTHING FOUND
;	
	PUSH	BC			; SAVE LOOP CONTROL
	PUSH	AF
	DEC	A
	LD	BC,PIO_FNTBL		; BC := FUNCTION TABLE ADDRESS
	JR	Z,TYPFND		; ADD ENTRY IF PIO FOUND, BC:D
	DEC	A
	LD	BC,PPI_FNTBL		; BC := FUNCTION TABLE ADDRESS
	JR	Z,TYPFND
	DEC	A
	LD	BC,PRT_FNTBL
	JR	NZ,TYPDUN
TYPFND:	CALL	CIO_ADDENT		; ADD ENTRY IF PIO FOUND, BC:DE
TYPDUN:	POP	AF
	POP	BC			; RESTORE LOOP CONTROL
;
PIO_PREINIT2:	
	INC	C			; NEXT PHYSICAL UNIT
	DJNZ	PIO_PREINIT0		; LOOP UNTIL DONE
;
#IF (INTMODE == 2)
	; SETUP PIO INTERRUPT VECTOR IN IVT
	LD	HL,PIO0INT
;	LD	(HBX_IVT + IVT_PIO0),HL
	LD	(HB_IVT09 + 1),HL	; WW: IVT INDEX 9 FOR PIO0
#ENDIF
PIO_PREINIT3:
	XOR	A			; SIGNAL SUCCESS
	RET				; AND RETURN
;
; WHEN WE GET HERE IY POINTS TO THE PIO_CFG TABLE WE ARE WORKING ON.
;
PIO_INITUNIT:
	LD	A,C			; SET THE UNIT NUMBER
	LD	(IY),A	

	LD	DE,-1			; LEAVE CONFIG ALONE
	JP	PIO_INITDEV		; IMPLEMENT IT AND RETURN
;	XOR	A			; SIGNAL SUCCESS
;	RET				; AND RETURN
;
PIO_INIT:
	LD	B,PIO_CNT		; COUNT OF POSSIBLE PIO UNITS
	LD	C,0			; INDEX INTO PIO CONFIG TABLE
PIO_INIT1:
	PUSH	BC			; SAVE LOOP CONTROL
	
	LD	A,C			; PHYSICAL UNIT TO A
	RLCA				; MULTIPLY BY CFG TABLE ENTRY SIZE (8 BYTES)
	RLCA				; ...
	RLCA				; ... TO GET OFFSET INTO CFG TABLE
	LD	HL,PIO_CFG		; POINT TO START OF CFG TABLE
	CALL	ADDHLA			; HL := ENTRY ADDRESS
	PUSH	HL			; COPY CFG DATA PTR
	POP	IY			; ... TO IY
	
	LD	A,(IY+1)		; GET PIO TYPE
	OR	A			; SET FLAGS
	CALL	NZ,PIO_PRTCFG		; PRINT IF NOT ZERO
	
	PUSH	DE	
	LD	DE,$FFFF		; INITIALIZE DEVICE/CHANNEL
	CALL	PIO_INITDEV		; BASED ON DPW
	POP	DE

	POP	BC			; RESTORE LOOP CONTROL
	INC	C			; NEXT UNIT
	DJNZ	PIO_INIT1		; LOOP TILL DONE
;
	XOR	A			; SIGNAL SUCCESS
	RET				; DONE
;
; EXAMPLE CODE
;
PIO_LPT:
	IN		A,($F6)		; get device status
	AND		$20		; device ready?
	JR		Z,PIO_LPT	; no, busy wait
	IN		A,($F5)		; get transmit buffer register status ready?
	AND		$20		; ready?
	JR		Z,PIO_LPT	; no, busy wait
	LD		A,C		; ready, char A for output through data port
	OUT		($F0),A		; output char
	RET



; ------------------------------------
; ZILOG PIO FUNCTION TABLE ROUTINES
;-------------------------------------
	
PIO_IN:
	LD	C,(IY+3)
	IN	A,(C)
	LD	E,A
	XOR	A			; SIGNAL SUCCESS
	RET

;
PIO0INT:
PIO1INT:
PIO2INT:
PIO3INT:
PIO4INT:
PIO5INT:
PIO6INT:
PIO7INT:
PIO8INT:
PIO9INT:
	OR	$FF			; NZ SET TO INDICATE INT HANDLED
	RET
;
; ON ENTRY IY POINTS TO THE DEVICE RECORD
; E CONTAINS THE CHARACTER TO OUTPUT
; WE RETREIVE THE CMD PORT ADDRESS AND CALCULATE THE 
; DATA PORT AND WRITE THE CHARACTER TO IT.
;
PIO_OUT:
	LD	C,(IY+3)
	OUT	(C),E
	XOR	A			; SIGNAL SUCCESS
	RET

	LD	C,(IY+3)		; GET PORT
	LD	A,(IY+4)		; GET MODE (B7B6)


PIO_IST:
	RET	
;	
PIO_OST:
	RET
;
; PIO_INITDEV - Configure device.
; If DE = FFFF then extract the configuration information from the table of devices and program the device using those settings.
; Otherwise use the configuration information in DE to program those settings and save them in the device table
;
;  SETUP PARAMETER WORD:
;  +-------------------------------+ +-------+-----------+---+-------+
;  |         BIT CONTROL           | | MODE  | C2 C1 C0  | A |  INT  |
;  +-------------------------------+ --------------------+-----------+
;    F   E   D   C   B   A   9   8     7   6   5   4   3   2   1   0
;       -- MSB (D REGISTER) --           -- LSB (E REGISTER) --
;
;
; MSB = BIT MAP USE IN MODE 3 
; MODE B7 B6 = 00 Mode 0 Output
;              01 Mode 1 Input
;              10 Mode 2 Bidir
;              11 Mode 3 Bit Mode
; CHIP CHANNEL B5 B4 B3 001 Channel 1
;                       010 Channel 2
;                       100 Channel 3
; INTERRUPT ALLOCATED B2 = 0 NOT ALLOCATED
;                        = 1 IS ALLOCATED
;
; WHICH IVT IS ALLOCATES B1 B0 00 IVT_PIO0
;                              01 IVT_PIO1
;                              10 IVT_PIO2
;                              11 IVT_PIO3
PIO_INITDEV:
	; TEST FOR -1 (FFFF) WHICH MEANS USE CURRENT CONFIG (JUST REINIT)
	LD	A,D			; TEST DE FOR
	AND	E			; ... VALUE OF -1
	INC	A			; ... SO Z SET IF -1
	JR	NZ,PIO_INITDEV1		; IF DE == -1, REINIT CURRENT CONFIG
;
	; LOAD EXISTING CONFIG TO REINIT
	LD	E,(IY+4)		; LOW BYTE
	LD	D,(IY+5)		; HIGH BYTE	
;
PIO_INITDEV1:
	; WHICH DEVICE TYPE?
	LD	A,(IY+1)
	CP	PIO_ZPIO		
	JR	Z,SET_PIO
	CP	PIO_8255
	JR	Z,SET_8255
	CP	PIO_PORT
	JR	Z,SET_PORT
PIO_BAD:OR	$FF			; UNKNOWN DEVICE
	RET

SET_PORT:
	; DEVICE TYPE IS I/O PORT SO JUST WRITE $00 TO IT
	LD	C,(IY+3)
	OUT	(C),A
	XOR	A
	RET
;
SET_PIO:
	; DEVICE TYPE IS Z80 PIO SO DETERMINE MODE TO SET
	; BIDIR MODE CAN ONLY BE SET ON CHANNEL 0
	; BITCTRL MODE REQUIRES A I/O DIRECTION TO BE SET
	LD	C,(IY+3)		; GET DATA PORT
	INC	C			; POINT TO CMD
	INC	C			; PORT
	LD	A,(IY+4)		; GET MODE (B7B6)
	AND	11010000B		; KEEP MODE & CHANNEL
	CP	10010000B		; SET CH1 & BIDIR
	JR	Z,PIO_BAD		; CAN'T DO ON CH1
	AND	11000000B		; $B0
	OR	00001111B		; $0F
	OUT	(C),A			; SET MODE
	CP	(M_BitCtrl | $0F)	; IF MODE 3
	JR	NZ,SET_NM3		
	LD	A,(IY+5)		; SET I/O
	OUT	(C),A			; FOR MODE 3
SET_NM3:; INTERUPT HANDLING
	LD	A,(IY+4)		; CHECK IF INTERRUPT
	BIT	2,A			; REQUEST BIT SET
	JR	Z,NOINT1

	LD	A,(INT_ALLOC)		; DO WE HAVE AN
	CP	INT_ALLOW+1		; INTERRUPT FREE?
	JR	NC,BADSET
	
	INC	A			; ONE INTERRUPT
	LD	(INT_ALLOC),A		; USED

	; THE TRICKY BIT - SETUP THE RIGHT INTERRUPT VECTOR

NOINT1:	LD	A,00000111B		; $07 
	OUT	(C),A			; NO INTERRUPTS
	DEC	C
	DEC	C
	LD	A,$FF			; DEFAULT VALUE
	OUT	(C),A
	XOR	A
	RET
BADSET:	LD	A,$FF
	RET

SET_8255:
	RET	

SET_BYE:
	XOR	A			; SIGNAL SUCCESS
	RET
;	
PIO_ZP0:
PIO_ZP1:
PIO_4P0:
PIO_4P1:
PIO_4P2:
PIO_4P3:
PIO_4P4:
PIO_4P5:
PIO_4P6:
PIO_4P7:OR	$FF			; NZ SET TO INDICATE INT HANDLED
	RET
;
; ON ENTRY IY POINTS TO THE DEVICE RECORD	
; WE GET AND RETURN THE CONFIGURATION WORD IN DE
;
PIO_QUERY:
PPI_QUERY:
	LD	E,(IY+4)		; FIRST CONFIG BYTE TO E
	LD	D,(IY+5)		; SECOND CONFIG BYTE TO D
	XOR	A			; SIGNAL SUCCESS
	RET
;
; ON ENTRY IY POINTS TO THE DEVICE RECORD
; FOR CHARACTER DEVICES BIT 6 OF ATTRIBUTE
; INDICATES PARALLEL PORT IF 1 SO WE SET IT.
; 
PIO_DEVICE:
PPI_DEVICE:
	LD	D,CIODEV_PIO		; D := DEVICE TYPE
	LD	E,(IY)			; E := PHYSICAL UNIT
	LD	C,$40			; C := ATTRIBUTE
	XOR	A			; SIGNAL SUCCESS
	RET	

; ------------------------------------
; i8255 FUNCTION TABLE ROUTINES
;-------------------------------------
	
PPI_IN:
	XOR	A			; SIGNAL SUCCESS
	RET	
;
PPI_OUT:
	XOR	A			; SIGNAL SUCCESS
	RET
;	
PPI_IST:
	RET	
;	
PPI_OST:
	RET
;
; PIO_INITDEV - Configure device.
; If DE = FFFF then extract the configuratio information from the table of devices and program the device using those settings.
; Otherwise use the configuration information in DE to program those settings and save them in the device table

PPI_INITDEV:
	XOR	A			; SIGNAL SUCCESS
	RET	
PPI_INT:OR	$FF			; NZ SET TO INDICATE INT HANDLED
	RET
;	
PIO_PRTCFG:
	; ANNOUNCE PORT
	CALL	NEWLINE			; FORMATTING
	PRTS("PIO$")			; FORMATTING
	LD	A,(IY)			; DEVICE NUM
	CALL	PRTDECB			; PRINT DEVICE NUM
	PRTS(": IO=0x$")		; FORMATTING
	LD	A,(IY+3)		; GET BASE PORT
	CALL	PRTHEXBYTE		; PRINT BASE PORT
;
	; PRINT THE PIO TYPE
	CALL	PC_SPACE		; FORMATTING
	LD	A,(IY+1)		; GET PIO TYPE BYTE
	RLCA				; MAKE IT A WORD OFFSET
	LD	HL,PIO_TYPE_MAP		; POINT HL TO TYPE MAP TABLE
	CALL	ADDHLA			; HL := ENTRY
	LD	E,(HL)			; DEREFERENCE
	INC	HL			; ...
	LD	D,(HL)			; ... TO GET STRING POINTER
	CALL	WRITESTR		; PRINT IT
;
	; ALL DONE IF NO PIO WAS DETECTED
	LD	A,(IY+1)		; GET SIO TYPE BYTE
	OR	A			; SET FLAGS
	RET	Z			; IF ZERO, NOT PRESENT
;
	PRTS(" MODE=$")			; FORMATTING
	LD	E,(IY+4)		; LOAD CONFIG
	LD	D,(IY+5)		; ... WORD TO DE
	CALL	PS_PRTPC0		; PRINT CONFIG
;
	XOR	A
	RET
;
; WORKING VARIABLES
;
PIO_DEV		.DB	0		; DEVICE NUM USED DURING INIT
;	
; DESCRIPTION OF DIFFERENT PORT TYPES
;
PIO_TYPE_MAP:
		.DW	PIO_STR_NONE
		.DW	PIO_STR_PIO
		.DW 	PIO_STR_8255
		.DW	PIO_STR_PORT

PIO_STR_NONE	.DB	"<NOT PRESENT>$"
PIO_STR_PIO	.DB	"Zilog PIO$"
PIO_STR_8255	.DB 	"i8255 PPI$"
PIO_STR_PORT	.DB	"IO Port$"
;
; Z80 PIO PORT TABLE - EACH ENTRY IS FOR 1 CHIP I.E. TWO PORTS
;
#DEFINE	DEFPIO(MPIO_TYPE,MPIO_BASE,MPIO_CH0,MPIO_CH1,MPIO_CH0X,MPIO_CH1X,MPIO_FT0,MPIO_FT1,MPIO_IN0,MPIO_IN1) \
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPIO_TYPE
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPIO_BASE
#DEFCONT \ .DB	(MPIO_CH0 | 00001000B | MPIO_IN0)
#DEFCONT \ .DB	MPIO_CH0X
#DEFCONT \ .DW	MPIO_FT0
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPIO_TYPE
#DEFCONT \ .DB	1
#DEFCONT \ .DB	MPIO_BASE+1
#DEFCONT \ .DB	(MPIO_CH1 | 00010000B | MPIO_IN1)
#DEFCONT \ .DB	MPIO_CH1X
#DEFCONT \ .DW	MPIO_FT1
;
; i8255 PORT TABLE - EACH ENTRY IS FOR 1 CHIP I.E. THREE PORTS
;
#DEFINE	DEFPPI(MPPI_TYPE,MPPI_BASE,MPPI_CH1,MPPI_CH2,MPPI_CH3,MPPI_CH1X,MPPI_CH2X,MPPI_CH3X) \
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPPI_TYPE
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPPI_BASE+0
#DEFCONT \ .DB	(MPPI_CH1 | 00001000B)
#DEFCONT \ .DB	MPPI_CH1X
#DEFCONT \ .DW	
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPPI_TYPE
#DEFCONT \ .DB	1
#DEFCONT \ .DB	MPPI_BASE+2
#DEFCONT \ .DB	(MPPI_CH2 | 00010000B)
#DEFCONT \ .DB	MPPI_CH2X
#DEFCONT \ .DW	0
#DEFCONT \ .DB	0
#DEFCONT \ .DB	MPPI_TYPE
#DEFCONT \ .DB	2
#DEFCONT \ .DB	MPPI_BASE+4
#DEFCONT \ .DB	(MPPI_CH3 | 00100000B)
#DEFCONT \ .DB	MPPI_CH3X
#DEFCONT \ .DW	0
;
; HERE WE ACTUALLY DEFINE THE HARDWARE THAT THE HBIOS CAN ACCESS
; THE INIT ROUTINES READ AND SET THE INITIAL MODES FROM THIS INFO
;
PIO_CFG:

#IF	PIO_ZP
DEFPIO(PIO_ZPIO,PIOZBASE+0,M_Output,M_BitCtrl,M_BitAllOut,M_BitAllOut,PIO0FT,PIO1FT,INT_Y,INT_N)
DEFPIO(PIO_ZPIO,PIOZBASE+4,M_Output,M_BitCtrl,M_BitAllOut,M_BitAllOut,PIO2FT,PIO3FT,INT_Y,INT_N)
#ENDIF
#IF	PIO_4P
DEFPIO(PIO_ZPIO,PIO4BASE+0,M_Output,M_BitCtrl,M_BitAllOut,M_BitAllOut,PIO4FT,PIO5FT,INT_N,INT_N)
DEFPIO(PIO_ZPIO,PIO4BASE+4,M_Output,M_Input,M_BitAllOut,M_BitAllOut,PIO6FT,PIO7FT,INT_N,INT_N)
DEFPIO(PIO_ZPIO,PIO4BASE+8,M_Output,M_Output,M_BitAllOut,M_BitAllOut,PIO8FT,PIO9FT,INT_N,INT_N)
DEFPIO(PIO_ZPIO,PIO4BASE+12,M_Output,M_Output,M_BitAllOut,M_Output,PIO10FT,PIO11FT,INT_N,INT_N)
#ENDIF
; PPI_SBC & (PLATFORM == PLT_SBC) & (PPIDEMODE != PPIDEMODE_SBC))

#IF 	PPI_SBC
DEFPPI(PIO_8255,PPIBASE,M_Output,M_Output,M_Output,M_BitAllOut,M_BitAllOut,M_BitAllOut)
#ENDIF
;
;	; PIO CHANNEL A
;	.DB	0			; CIO DEVICE NUMBER 				(SET DURING PRE-INIT, THEN FIXED)
;	.DB	0			; PIO TYPE 					(SET AT ASSEMBLY, FIXED)
;	.DB	0			; FREE
;	.DB	PIOBASE+2		; BASE DATA PORT (DATA PORT)			(SET AT ASSEMBLY, FIXED)
;	.DB	0			; SPW - MODE 3 I/O DIRECTION BYTE		(SET AT ASSEMBLE, SET WITH INIT)
	.DB	0			; SPW - MODE, CHANNEL				(SET AT ASSEMBLY, SET WITH INIT, CHANNEL FIXED)
;	.DW	0			; FUNCTION TABLE				(SET AT ASSEMBLY, SET DURING PRE-INIT AND AT INIT)

PIO_CNT	.EQU	($ - PIO_CFG) / 8 	
;

; DRIVER FUNCTION TABLE FOR Z80 PIO's
; EACH PIO NEEDS A FUNCTION TABLE
; ECB-ZP : PIO0FT-PIO3FT
; ECB-4P : PIO4FT-PIO11FT

PIO_FNTBL:
;
#IF	PIO_ZP
PIO0FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO0FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO1FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO1FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO2FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO2FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO3FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO3FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
#ENDIF
;
#IF	PIO_4P
PIO4FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO4FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO5FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO5FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO6FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO6FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO7FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO7FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO8FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO8FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO9FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO9FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO10FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO10FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
PIO11FT	.DW	PIO_IN
	.DW	PIO_OUT
	.DW	PIO_IST
	.DW	PIO_OST
	.DW	PIO_INITDEV
	.DW	PIO_QUERY
	.DW	PIO_DEVICE
#IF (($ - PIO11FT) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PIO FUNCTION TABLE ***\n"
#ENDIF
#ENDIF
;
; DRIVER FUNCTION TABLE FOR i8255's
;
PPI_FNTBL:
	.DW	PPI_IN
	.DW	PPI_OUT
	.DW	PPI_IST
	.DW	PPI_OST
	.DW	PPI_INITDEV
	.DW	PPI_QUERY
	.DW	PPI_DEVICE
#IF (($ - PPI_FNTBL) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PPI FUNCTION TABLE ***\n"
#ENDIF
;
; DRIVER FUNCTION TABLE FOR I/O PORT
;
PRT_FNTBL:
	.DW	PPI_IN
	.DW	PPI_OUT
	.DW	PPI_IST
	.DW	PPI_OST
	.DW	PPI_INITDEV
	.DW	PPI_QUERY
	.DW	PPI_DEVICE
#IF (($ - PRT_FNTBL) != (CIO_FNCNT * 2))
	.ECHO	"*** INVALID PPI FUNCTION TABLE ***\n"
#ENDIF