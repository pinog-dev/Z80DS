?/Copyright (c) (p) 1984 by Montezuma Micro
 1@%*  	C
 ??"?$?$??? '1@%!7?[
(?6?r?)?? ?C
|?(
 ^#V! ~?	0! ? $!??
??
?(?? ?? * ?R: O!  ?>??
:?$???????3??????0?!O?[
?N?6'<S?^#V#N#F#?`i??(G?????~??? ???!P?[
ʺ=O:?$????!?[
ʺ=O:?$???*!??[
ʺ=O:?$?ϱ!c?[
ʺ=O:?$???2?$2 ʹú!?[
?N= %!??[
(?*?$$ 	 ??	?	(???(?w?!??[
(?*?$[ 	 ???`i)))	?	(???(w#?x?(?6 ?=?8	??O?!#??
??????^??????????*? ~#"? ??????!? "? ??
6 ????*?$ 	?!??[
?N!y_ ^W  ?!(???> ????????!u?[
?NO !j	N???	???	
*?$#?>?C?>?C##~!?t!i?[
?N?6???>>*?$#?wÊ??


Enter new page length:   !? ??
(?6 !? ͗*?$###w?*?$###>??C>??C##>O??[>O??[~??12?~??C??52?~? {!??_ ?( 	???+>?!)cG(???????!?[
?N?6???? !?[
?*?$ =G?w? !??[
?*?$ ???(	˞??=(˾? !?[
?*?$ =????G>???w?  > > > > >*?$?w*?$?B?:?$G?02?!R??
0??
[  y2????
??
 ]   !z??
???


[  >?O2???
??
 ]   !???
?2? ͠
?N=!?$?  !???
??
?(??08?(??0?2?$ʹ?) _!?$^#V?02?! ?N!>5?q(>8!$2y??12b>?O ?		???????!???????????! ??~!A?t!??[
??)?6$5lw! >@?w?@> =! ?v¿?!??[
?ʿ?!??=(	G?????͗?N?! q+wÿ! >??wÿ?!??[
?ʿ=O! ~???wÿ!,??
A???
[  y??
??
 ]    y?AO?C
?|??!(=!
 ^#V! ~?!&(+??'̊y2???! ~#fo###N>/<?	0?????
??
:   ??
?>??
?2?W:?<O͠
?N=O?A2o2?!?C
|?ʐ"?$
 ^#V! ~?ʐ?Rʐ!u?©y?	8???y=???<O?2uw!?$?y??'(͜:u<2u?q#????:u??<2u2v!?!͜?!A?[
??ů?(?????=!?$O 	~2?$??'"?$!?!??
*?$??
:?$?/2("!?!??
!?$??
?ʐ?08??0?_ ?0??
!?$^#V?S?$*?$@ 	"?$	~??2?$++~?	?(0[?M0W~?((?P N:?$? 2?$+++:?$?@(?(8*?$
 ^#V*?$???:?$w+:?$w+?K?$p+q! ?*?$~#fo? ??Ð!."??
??
??N? ?Ð?! ~#fo 	~!??t! >S?v(>D2?>S?~(>D2?! ~!??t! N !?			??????!??!u"??
!?"??
??
??N?_?A8??0?O?A??
?C
|?(1?
 ^#V??^#V?S?$* . T] ?BDM!&nq#p#s#r????0!?"??
??
??N?(??!&#??
!&n^#V! F#?#??
???q#T]y?(G~?a8?{0?_w#?6 !? s#r!?#??
??
????_?Y(?N ??N2?$?N??
!?#??
!&n^#V?S?$.  ??ʹ?C?$?C?$?K?$?F
?K?$?I
?K?$?L
?R
? A*?$? "?$*?$#"?$?*?$?R ?"?$*?$#"?$ ?R ?  ?F
? ?L
?O
!b$??
!$??
??
?(? ??N?C
?F
?I
?L
?O
?R
?U
?X
??
~#??GA?2?~#?@W?@(>,2???
[  y2?? >??
y??
>??
??
 ]   ??
?!???
!???
??
?_? z????A8??0?O??
y?@????
??~#????
????_? ????????? ?(????? ??
?(3??? 8?(?w#??
??(? ?Qy?(???
  + ??????=??o0$~#fo???!U ###????????YESNO ???!n ###????????ON OFF  ?d8	?????d??
8???
??0p#q#w? ͫ8Gy?O????O?y?~#?0??
??!?$?[?$ ??????! ~?7 f+~?8`??8[!&n####?! F!@ )?|?7?(@6 #w#?! N?>????7 ,?q(<w#?! N????w#T]6?#???~#fo?7(???????TRS-80 Model 4 CP/M 2.2 CONFIG version 2.00
Copyright (c) (p) 1984 Montezuma Micro/JBO - All rights reserved


Configuration options:

  System device assignments
 Keyboard definitions
 Video Display definitions
 Parallel printer definitions
 Serial port definitions
 Disk drive definitions
 Disk format definitions
 Save current configuration on disk
 

Select [ A - Z ]  ENTER for marked default choice , or BREAK (^C) to exit.
Your choice:  [ ] ***** WARNING *****

Drive  A: is not defined in Montezuma Micro format.  Attempts to reboot from 
this drive may not succeed and a complete RESET may be necessary.

  Push ENTER to return to CP/M without rebooting (Proceed at your own risk!)
  Push BREAK to return to CONFIG to change drive format definitions
 
    Current device assignments (from IOBYTE)



  CON: (Console) =                                 RDR: (Reader)  =                                 PUN: (Punch)   =                                 LST: (List)    =                                 
    Console (CON:) device choices



 TTY:  Serial port in & out   
 CRT:  Keyboard in, Video out 
 BAT:  Batch (RDR=in, LST=out)
 UC1:  User-defined console   
 
    Reader (RDR:) device choices



 TTY:  Serial port input      
 PTR:  Keyboard input         
 UR1:  User-defined reader 1  
 UR2:  User-defined reader 2  
 
    Punch (PUN:) device choices



 TTY:  Serial port output     
 PTP:  Video display output   
 UP1:  User-defined punch 1   
 UP2:  User-defined punch 2   
 
    List (LST:) device choices



 TTY:  Serial port output     
 CRT:  Video output           
 LPT:  Parallel port output   
 UL1:  User-defined list      
 
    Keyboard definitions



  Standard keys:  ARROWS, BREAK, & CLEAR
 Function keys:  F1, F2, & F3
 =%       UNSHIFTED =%8      SHIFT     =%X      CONTROL   
  CLEAR
 BREAK
 UP ARROW
 DOWN ARROW
 LEFT ARROW
 RIGHT ARROW=&8 CLEAR='8 BREAK=(8 UP ARROW=)8 DOWN ARROW=*8 LEFT ARROW=+8 RIGHT ARROW=&X CLEAR='X BREAK=(X UP ARROW=)X DOWN ARROW=*X LEFT ARROW=+X RIGHT ARROW

 =%       UNSHIFTED =%8      SHIFT     =%X      CONTROL   
 	 F1
 F2
 F3=&8 F1='8 F2=(8 F3=&X F1='X F2=(X F3

 
Enter the definition using ^ (CTRL/5) to indicate control.
  Example:  ^M is ENTER.

Definition:   
    Video control code definitions



The following codes may be defined as duplicates of the existing Video control
codes:

  Code  1 = 01H or ^A
 Code  2 = 02H or ^B
 Code  3 = 03H or ^C
 Code  4 = 04H or ^D
 Code  5 = 05H or ^E
 Code  6 = 06H or ^F
 Code 16 = 10H or ^P
 Code 17 = 11H or ^Q=(H Code 18 = 12H or ^R=)H Code 19 = 13H or ^S=*H Code 20 = 14H or ^T=+H Code 23 = 17H or ^W=,H Code 24 = 18H or ^X=-H Code 28 = 1CH=.H Code 29 = 1DH=/H Code 31 = 1FH

 =% Assign Code xx to which of these functions?

  Sound the console beeper
 Move cursor left (Backspace)
 Move cursor to next tab position
 Move cursor down (Linefeed)
 Move cursor up (Vertical tab)
 Move cursor right (Formfeed)
 Return cursor (Carriage return)
 Turn reverse video OFF='H Turn reverse video ON=(H Erase to end of line=)H Toggle inverse video on/off=*H Erase to end of screen=+H Home cursor & clear screen=,H Begin ESCape sequence=-H Home cursor to top of screen

 
    Parallel printer definitions



  Suppress linefeed after carriage return:  XXX
 Simulate formfeed (top-of-form code):  XXX
 Page length in lines:  XXX
 
    Serial port definitions



Current settings:

  Baud rate:     XX,XXX
 Parity:        XXXX
 Word length:   X bits
 Stop bits:     X
 DTR line:      XXX
 RTS line:      XXX
 Wait for CTS:  XXX
 Wait for DSR:  XXX
 
    Baud rate selections


 50    
 75    
 110   
 135   
 150   
 300   
 600   
 1,200 =$H 1,800 =%H 2,000 =&H 2,400 ='H 3,600 =(H 4,800 =)H 7,200 =*H 9,600 =+H 19,200

 
    Parity selections


 Even
 Odd 
 None
 
    Word length selections


 5 bits
 6 bits
 7 bits
 8 bits
 
    Disk drive selections



 Physical disk drive X
 Number of drives:  X
 =* 
How many drives?  
    Disk drive X definitions



Current settings:

  Type of drive:             X inch
 Number of tracks:          XX
 Number of sides:           X
 Step rate (ms):            XX
 =% Track choices:

 35
 40
 77
 80
 *,=% Step rate choices:

 6  milliseconds
 12 milliseconds
 20 milliseconds
 30 milliseconds
 6 1220303 6 1015
    Disk format definitions

>>-->   Choose the letter of the drive which is to be changed:
Drive   Physical drive & current format
 Unknown format: XXT, XS, XD, XX sectors/track, XXX bytes/sector
 128256512 1K    Undefined disk drive
     Fixed storage device
 =# 

Choose the format to be used for drive X:

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   More format choices

 =% Format selected for drive X:
>>-->  =+ Which physical disk drive is to be used [0-X] ?  

Disk format is incompatible with this drive!  Push ENTER for menu. 
    Save current configuration



 =% Save configuration to which drive [ A, B, ..., P ]?   
   Cannot save configuration on that drive!  Push ENTER to try again. =( Enter the CP/M command or program name to automatically execute on RESET,
or push ENTER alone if no automatic execution is desired.
  Command:  =- Display CP/M banner on RESET (Y/N)?  =/ Saving system configuration ...

 =1 Disk write error!  Saved configuration is not usable!
Push ENTER for menu.  Configuration saved.  Push ENTER for menu.                                                                                                                                                                                                                                                                                                                                                                                    ?C?>?ӄ! ?6 #|? ????>@??>ӄ>?!?C2f "g *?C:?CG?*?C?R??DC?¸C?*?C?*?C~< !?C:?CO:?C?2?C >TͯC>?????? ?~#"?C???yC??yC???????:?C?W????>?ͯC>??????(???z???????????????????(??>ӄ!?C ? ???     $	
?           ?C BOOT error!   !{-"?(|-?6 ??!] ~? +P(  ~?(??P(? <?? ? ?(?~#?* ??!?(??( 6 ????<~#?(??6#6
?(?;)??'??'??'??'??'??'??'??'??'??'??'??'??'??'?(?[):J)??9'G??'??[?(!?(? ???S?(!{I??R?9'?=o& )))))))?{)	?~?????'?????'?s#r#??????'z?{??  ?(???)DM))	 O	???~#?0??
??!y(??+((	w#? ??+(???*w(}? ??P(? ??!? ?(6~#"w(??? DISK    FDF                                                                                                                                                                                                                                                                                               Montezuma Micro Standard SYSTEM disk (40T, SS, DD, 170K)     
 $ T  ?    ( ?            	
              Montezuma Micro Standard DATA disk (40T, SS, DD, 200K)       
 ( c  ?     
( ?            	
                      Montezuma Micro Double-sided SYSTEM disk (40T, DS, DD, 350K) 
 $ ?  ?    ( ?            	
              Montezuma Micro Double-sided DATA disk (40T, DS, DD, 400K)   
 ( ?  ?     
( ?            	
                      Montezuma Micro Extended SYSTEM disk (80T, SS, DD, 350K)     
 $ ?  ?    P ?            	
              Montezuma Micro Extended DATA disk (80T, SS, DD, 400K)       
 ( ?  ?     
P ?            	
                      Montezuma Micro Maximum SYSTEM disk (80T, DS, DD, 710K)      
 $  b ?    P ?            	
              Montezuma Micro Maximum DATA disk (80T, DS, DD, 800K)        
 (  ? ?     
P ?            	
                      ?????    ?@? $?$I!	?H? *?	 	 $H?@? @A ??I	$ ?D?!!$I"BI"I"@$?B?IIH? ?$??$? $?$??BB??I$?@ ?BI!"$??$?