
	.Z80
	ASEG


	TITLE	'BOOT LOADER MODULE FOR CP/M 3.0'

	; DEFINE LOGICAL VALUES:
TRUE	EQU	-1
FALSE	EQU	NOT TRUE

	; DETERMINE IF FOR BANK SELECT OR NOT:
BANKED	EQU	FALSE		;<--------------- BANKED VERSION

	; DEFINE PUBLIC LABELS:
	PUBLI	C	?INIT,?LDCCP,?RLCCP,?TIME
	PUBLI	C	OUT$BLOCKS

	; EXTERNALLY DEFINED ENTRY POINTS AND LABELS:
	EXTRN	?PMSG,?CONIN
	EXTRN	@CIVEC,@COVEC,@AIVEC,@AOVEC,@LOVEC
	EXTRN	@CBNK,?BNKSL

	IF	BANKED
	EXTRN	BANKBUF		;128 BYTE BUFFER IN MOVE MODULE FOR USE
	; DURING COLD AND WARM BOOTS
	ENDIF	

	EXTRN	@SEC,@MIN,@HOUR,@DATE;FIELDS HOLDING CURRENT TIME AND DATE


	; INCLUDE Z-80 MACROS:
	MACLI	B	Z80


	; SOME MISCELLANEOUS EQUATES:
BDOS	EQU	5
CR	EQU	13		;ASCII CARRIAGE RETURN
LF	EQU	10		;ASCII LINEFEED
;
;
	; WE CAN DO INITIALIZATION FROM BANKED MEMORY (IF WE HAVE IT):
	IF	BANKED
	DSEG			; INIT DONE FROM BANKED MEMORY
	ELSE	
	CSEG			; INIT TO BE DONE FROM COMMON MEMORY
	ENDIF	


	;;;;; ?INIT
	; HARDWARE INITIALIZATION OTHER THAN CHARACTER AND DISK I/O:
?INIT:
	; ASSIGN CONSOLE INPUT AND OUTPUT TO CRT:
	LD	HL,8000H	;SIGNIFIES DEVICE 0
	LD	(@CIVEC),HL	;CONSOLE INPUT VECTOR
	LD	(@COVEC),HL	;CONSOLE OUTPUT VECTOR

	; ASSIGN PRINTER TO LPT:
	LD	HL,4000H	;SIGNIFIES DEVICE 1
	LD	(@LOVEC),HL	;LIST OUTPUT VECTOR

	; ASSIGN AUX TO CRT1:
	LD	HL,02000H	;SIGNIFIES DEVICE 2
	LD	(@AIVEC),HL	;AUXILLIARY INPUT VECTOR
	LD	(@AOVEC),HL	;AUXILLIARY OUTPUT VECTOR

	; PRINT THE SIGN-ON MESSAGE:
	LD	HL,SIGNON$MSG	;POINT TO IT
	JP	?PMSG		;AND PRINT IT
;
;
	;;;;; OUT$BLOCKS
	; ROUTINE OUTPUTS SPECIFIED # BYTES TO SPECIFIED OUTPUT PORTS:
	IF	BANKED
	CSEG			;WE WANT THIS ROUTINE IN COMMON MEMORY
	ENDIF	
OUT$BLOCKS:
	LD	A,(HL)		;GET A BYTE FROM THE BLOCK
	OR	A		;END OF OUTPUT BLOCK ?
	RET	Z		;THEN DONE!!
	LD	B,A		;ELSE PUT # BYTES TO SEND OUT IN [B]
	INC	HL		;POINT TO PORT TO SEND TO
	LD	C,(HL)		;GET IT TO [C]
	INC	HL		;POINT TO 1ST BYTE OF BLOCK TO SEND OUT
	OUTIR			;Z-80 BLOCK OUTPUT
	JR	OUT$BLOCKS


	;;;;; ?LDCCP
	; THIS ROUTINE IS ENTERED TO LOAD THE CCP.COM FILE INTO THE TPA BANK
	;  AT SYSTEM COLD START:
?LDCCP:
	; SET UP THE FCB FOR THE FILE OPERATION:
	XOR	A		;ZERO EXTENT
	LD	(CCP$FCB+15),A
	LD	HL,0		;START AT BEGINNING OF FILE
	LD	(FCB$NR),HL

	; TRY TO OPEN THE CCP.COM FILE:
	LD	DE,CCP$FCB	;POINT TO FCB
	CALL	OPEN		;ATTEMPT THE OPEN OPERATION
	INC	A		;WAS IT ON THE DISK ?
	JRNZ	CCP$FOUND	;YES -- GO LOAD IT

	; WE ARRIVE HERE WHEN CCP.COM FILE WASN'T FOUND:
	LD	HL,CCP$MSG	;REPORT THE ERROR
	CALL	?PMSG
	CALL	?CONIN		;GET A RESPONSE
	JR	?LDCCP		;AND TRY AGAIN

	; FILE WAS OPENED OK -- READ IT IN:
CCP$FOUND:
	LD	DE,0100H	;LOAD AT BOTTOM OF TPA
	CALL	SETDMA		;BY SETTING THE NEXT DMA ADDRESS
	LD	DE,128		;SET MULTI SECTOR I/O COUNT
	CALL	SETMULTI	; TO ALLOW UP TO 16K BYTES IN ONE OPERATION
	LD	DE,CCP$FCB	;POINT TO THE FCB
	CALL	READ		;AND READ THE CCP IN

	; FOLLOWING CODE FOR BANKED SYSTEMS -- MOVES CCP IMAGE TO BANK 2
	;  FOR LATER RELOADING AT WARM STARTS:
	IF	BANKED
	LD	HL,0100H	;GET CCP IMAGE FROM START OF TPA
	LD	B,25		;TRANSFER 25 LOGICAL SECTORS
	LD	A,(@CBNK)	;GET CURRENT BANK
	PUSH	AF		;AND SAVE IT
LD$1:
	PUSH	BC		;SAVE SECTOR COUNT
	LD	A,1		;SELECT TPA BANK
	CALL	?BNKSL
	LD	BC,128		;TRANSFER 128 BYTES TO TEMPORARY BUFFER
	LD	DE,BANKBUF	;TEMPORARY BUFFER ADDR IN [DE]
	PUSH	HL		;SAVE SOURCE ADDRESS
	PUSH	DE		;AND DESTINATION
	PUSH	BC		;AND COUNT
	LDIR			;BLOCK MOVE SECTOR TO TEMPORARY BUFFER
	LD	A,2		;SELECT BANK TO SAVE CCP IN
	CALL	?BNKSL
	POP	BC		;GET BACK COUNT
	POP	HL		;LAST DESTINATION WILL BE NEW SOURCE ADDR
	POP	DE		;LAST SOURCE WILL BE NEW DESTINATION
	LDIR			;BLOCK MOVE SECTOR FROM BUFFER TO ALTERNATE
	; BANK
	EX	DE,HL		;NEXT ADDR WILL BE NEW SOURCE ADDR
	POP	BC		;GET BACK SECTOR COUNT
	DJNZ	LD$1		;DROP SECTOR COUNT AND LOOP TILL DONE...
	POP	AF		;WHEN DONE -- RESTORE ORIGINAL BANK
	JP	?BNKSL
	ELSE	

	; IF NON-BANKED WE RETURN THROUGH HERE:
	RET	
	ENDIF	


	;;;;; ?RLCCP
	; ROUTINE RELOADS CCP IMAGE FROM BANK 2 IF BANKED SYSTEM OR FROM THE
	;  DISK IF NON-BANKED VERSION:
?RLCCP:
	IF	BANKED
	; FOLLOWING CODE FOR BANKED VERSION:
	LD	HL,0100H	;GET CCP IMAGE FROM START OF ALTERNATE BUFFER
	LD	B,25		;TRANSFER 25 LOGICAL SECTORS
	LD	A,(@CBNK)	;GET CURRENT BANK
	PUSH	AF		;AND SAVE IT
RL$1:
	PUSH	BC		;SAVE SECTOR COUNT
	LD	A,2		;SELECT ALTERNATE BANK
	CALL	?BNKSL
	LD	BC,128		;TRANSFER 128 BYTES TO TEMPORARY BUFFER
	LD	DE,BANKBUF	;TEMPORARY BUFFER ADDR IN [DE]
	PUSH	HL		;SAVE SOURCE ADDRESS
	PUSH	DE		;AND DESTINATION
	PUSH	BC		;AND COUNT
	LDIR			;BLOCK MOVE SECTOR TO TEMPORARY BUFFER
	LD	A,1		;PUT CCP TO TPA BANK
	CALL	?BNKSL
	POP	BC		;GET BACK COUNT
	POP	HL		;LAST DESTINATION WILL BE NEW SOURCE ADDR
	POP	DE		;LAST SOURCE WILL BE NEW DESTINATION
	LDIR			;BLOCK MOVE SECTOR FROM BUFFER TO TPA BANK
	EX	DE,HL		;NEXT ADDR WILL BE NEW SOURCE ADDR
	POP	BC		;GET BACK SECTOR COUNT
	DJNZ	RL$1		;DROP SECTOR COUNT AND LOOP TILL DONE...
	POP	AF		;GET BACK LAST CURRENT BANK #
	JP	?BNKSL		;SELECT IT AND RETURN
	ELSE	

	; FOLLOWING CODE IS FOR NON-BANKED VERSIONS:
	JP	?LDCCP		;JUST DO LOAD AS THOUGH COLD BOOT
	ENDIF	


	;;;;; ?TIME
	; ROUTINE SETS/GETS TIME:
?TIME:	
	RET			;Just return in this simple version
;
;
;
	IF	BANKED
	CSEG	
	ENDIF	

	;;;;;
	; CP/M BDOS FUNCTION INTERFACES

	; OPEN FILE:
OPEN:
	LD	C,15 ! JMP BDOS	; OPEN FILE CONTROL BLOCK

	; SET DMA ADDRESS:
SETDMA:
	LD	C,26 ! JMP BDOS	; SET DATA TRANSFER ADDRESS

	; SET MULTI SECTOR I/O COUNT:
SETMULTI:
	LD	C,44 ! JMP BDOS	; SET RECORD COUNT

	; READ FILE RECORD:
READ:
	LD	C,20 ! JMP BDOS	; READ RECORDS

	; CCP NOT FOUND ERROR MESSAGE:
CCP$MSG:
	DEFB	CR,LF,'BIOS ERR ON A: NO CCP.COM FILE',0


	; FCB FOR CCP.COM FILE LOADING:
CCP$FCB:
	DEFB	1		;AUTO-SELECT DRIVE A
	DEFB	'CCP     COM'	;FILE NAME AND TYPE
	DEFB	0,0,0,0
	DEFS	16
FCB$NR:	DEFB	0,0,0


	; SYSTEM SIGN-ON MESSAGE:
SIGNON$MSG:
	DEFB	CR,LF,LF,'CP/M VERSION 3.0 (NON-BANKED) (John Monahan 03/16/2011)'
	DEFB	CR,LF,'A:=IDE Hard Disk/CF Card. B: & C: = 8", D: = 5" Floppy disks. '
	DEFB	CR,LF,0
	END	
