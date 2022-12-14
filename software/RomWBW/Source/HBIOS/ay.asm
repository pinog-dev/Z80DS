;
;======================================================================
; PSG AY-3-8910 DRIVER FOR CONSOLE BELL
; WILL ALSO WORK WITH YM2149
;======================================================================
;
#IF (PLATFORM == PLT_N8)
AY_RSEL		.EQU	N8_PSG+0
AY_RDAT		.EQU	N8_PSG+1
AY_ACR		.EQU	N8_DEFACR
#ELSE
AY_RSEL		.EQU	$9A
AY_RDAT		.EQU	$9B
AY_ACR		.EQU	$9C
#ENDIF
AY_R0CHAP	.EQU	$00
AY_R1CHAP	.EQU	$01
AY_R2CHBP	.EQU	$02
AY_R3CHBP	.EQU	$03
AY_R7ENAB	.EQU	$07
AY_R8AVOL	.EQU	$08
AY_R9BVOL	.EQU	$09 
;
;======================================================================
; PSG AY-3-8910 DRIVER - INITIALIZATION
;======================================================================
;
AY_INIT:
	CALL	NEWLINE			; FORMATTING
	PRTS("AY: IO=0x$")
	LD	A,AY_RSEL
	CALL	PRTHEXBYTE
	CALL	AY_PROBE		; CHECK FOR HW EXISTENCE
	JR	Z,AY_INIT1		; CONTINUE IF PRESENT
;
;	HARDWARE NOT PRESENT
;
	PRTS(" NOT PRESENT$")
	OR	$FF			; SIGNAL FAILURE
	RET
;	
AY_INIT1:
	CALL	AY_INIT2
	CALL	AY_BEEP
AY_INIT2:
	LD	D,AY_R7ENAB		; SET MIXER CONTROL / IO ENABLE
	LD	E,$FF			; $FF - 11 111 111
	CALL	AY_WRTPSG		; I/O PORTS DISABLED, NOISE CHANNEL C, B, A DISABLE, TONE CHANNEL C, B, A DISABLE
;  
	LD	B,2
	LD	D,AY_R8AVOL		; SET VOLUME TO 0
	LD	E,$00	
AY_QUIET:
	CALL	AY_WRTPSG		; CYCLING THROUGH ALL CHANNELS
	INC	A
	DJNZ	AY_QUIET
	RET
;
;	PLAY A BEEP TONE ON CENTER CHANNEL (LEFT AND RIGHT SPEAKERS)
;	
AY_BEEP:
	LD	D,AY_R2CHBP		; SET TONE PERIOD 
	LD	E,$55			; CHANNEL B  - R00 & R01
	CALL	AY_WRTPSG		; $0055 = XXXX0000 01010101 
	LD	D,AY_R3CHBP
	LD	E,0
	CALL	AY_WRTPSG
;
	LD	D,AY_R7ENAB		; $FD = 11 111 101
	LD	E,$FD			; SET MIXER CONTROL / IO ENABLE
	CALL	AY_WRTPSG		; I/O PORTS DISABLED, NOISE CHANNEL C, B, A DISABLE, TONE CHANNEL B ENABLE
;  
	LD	D,AY_R9BVOL
	LD	E,$07			; SET CHANNEL B VOLUME TO 50% (7/16)
	CALL	AY_WRTPSG
;  
	CALL	LDELAY			; HALF SECOND 
	RET	
;	
; WRITE DATA E TO PSG REG A  
; 
AY_WRTPSG:
	HB_DI
#IF ((PLATFORM == PLT_N8) | (PLATFORM == PLT_MK4) | (PLATFORM == PLT_RCZ180))
	IN0	A,(Z180_DCNTL)		; GET WAIT STATES
	PUSH	AF			; SAVE VALUE
	OR	%00110000		; FORCE SLOW OPERATION (I/O W/S=3)
	OUT0	(Z180_DCNTL),A		; AND UPDATE DCNTL
#ENDIF
	LD	A,D
	OUT	(AY_RSEL),A
	LD	A,E
	OUT	(AY_RDAT),A
#IF ((PLATFORM == PLT_N8) | (PLATFORM == PLT_MK4) | (PLATFORM == PLT_RCZ180))
	POP	AF			; GET SAVED DCNTL VALUE
	OUT0	(Z180_DCNTL),A		; AND RESTORE IT
#ENDIF
	HB_EI
	RET	
;
; CHECK THERE IS A DEVICE PRESENT
;
AY_PROBE:
	LD	A,$FF
	OUT	(AY_ACR),A		; INIT AUX CONTROL REG
	XOR	A
	RET
