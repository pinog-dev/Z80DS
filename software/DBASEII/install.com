:? ??	9)!\ ~#?1?59)? <??(9)? ?4
$1	? ?fdBASE II INSTALLATION PROGRAM  VER 3.0$?	? ?t
$q	? Â
$	? ÷ARE FULL SCREEN OPERATIONS WANTED (Y/N)? $?	? ? ?_?Y???2? ?c >?2? ??
$?	? ??
$?	? ??
$?	? ?
$	? ?
$	? ?#
$ 	? ?Y  dBASE II INSTALLATION PROGRAM  VER 3.0
$.	? ?                 MENU #1
$d	? Í
$?	? ùA -ADDS VIEWPOINT   M -HP 2621
$?	? ??B -ADM-31           N -INTERCOLOR
$?	? ?C -ADM-3A           O -KAYPRO II
$?	? ?HD -APPLE ///        P -NEC PC-8000/1
$!	? ?yE -APPLE II 40 COL  Q -NS ADVANTAGE
$S	? çF -CROMEMCO 3102    R -OSBORNE I
$?	? ??G -DIALOG 81        S -PERKIN ELMER 11
$?	? ?H -EAGLE AVL        T -SANYO MBC 3000
$?	? ?8I -GNAT-SYSTEM 10   U -SOROC
$	? ?jJ -HAZELTINE 1500   V -SPERRY UTS 40
$C	? ÙK -HEATH 89         W -SUPERBRAIN
$u	? ??L -HP 125                          
$?	? ??
$?	? ??     X - MENU #2
$?	? ?)     Y - MODIFY PREVIOUS INSTALLATION
$	? ?_     Z - USER SUPPLIED TERMINAL COMMANDS
$4	? ?m
$j	? ÏSELECT TERMINAL TYPE: $x	? ? ?_?Yʘ	?Zʟ?X?j	?>?÷
$?	? ?<?#°???   dBASE II INSTALLATION PROGRAM  VER 3.0
$?	? ?               MENU #2
$	? ?(
$%	? ?UA -TELEVIDEO                   
$3	? ÂB -TOSHIBA T100                
$`	? ðC -TOSHIBA T250                 
$?	? ??D -TRS-80 (FMG)                 
$?	? ?E -TRS-80 II (P&T)              
$?	? ?:F -TRS-80 III                   
$	? ?hG -VECTOR GRAPHICS              
$E	? ÖH -VISUAL-100                   
$s	? ??I -VPD-80                       
$?	? ??J -VT-100                       
$?	? ?K -XEROX 820                   
$?	? ?L                               
$*	? ?Z
$W	? ?x     X - MENU #1
$e	? ë     Y - MODIFY PREVIOUS INSTALLATION
$?	? ??     Z - USER SUPPLIED TERMINAL COMMANDS
$?	? ??
$?	? ??
$?	? ?	SELECT TERMINAL TYPE: $		? ? ?_?Yʘ	?Zʟ?X?X	?>??G	
$D		? ?=?@	?????A??(?W>
???(????A??(?!?)_ ~#fo"?)Ì	x??~#Á	? R ́	?c >?2?)ï	






$?		? ??	MODIFY EXISTING SPECS ROUTINE

$?		? ?
FOR THIS METHOD, YOU WILL NEED THE HEX OR
$?		? ?I
DECIMAL CODES THAT CAN BE SENT FROM YOUR
$
	? Ã
COMPUTER TO THE VIDEO TERMINAL TO CONTROL IT
$T
	? Ñ

$?
	? ÿ
TYPE "Y" IF YOU WISH TO CONTINUE
$?
	? ? ?_?Y??(??

$?
	? ??







$?
	? ?/WILL YOU BE ENTERING COMMANDS AS HEX OR DECIMAL?$?
	? ?=
$:	? ?xTYPE "D" FOR DECIMAL   OR "H" FOR HEXADECIMAL
$H	? ? ?_?Dʖ?H?7>?2?)è






$?	? ??COMMANDS ARE ENTERED AS A SEQUENCE OF NUMBERS
$?	? ?TYPE A CARRIAGE RETURN TO END A SEQUENCE

$?	? ?)
$&	? ?U1 -     DELETE A CHAR SEQUENCE
$4	? Í2 -     DIRECT CURSOR POSITIONING SEQUENCE
$`	? ??3 -     CLEAR AND HOME SCREEN COMMAND
$?	? ??4 -     BRIGHT/STD VIDEO COMMANDS
$?	? ?5 -     DIM/REVERSE VIDEO COMMANDS
$?	? ?L6 -     INITIALIZATION SEQUENCE
$*	? ?o7 -     EXIT SEQUENCE
$W	? á8 -     RESET TO STANDARD VIDEO MODE
$z	? ??9 -     ALTER SCREEN SIZE
$?	? ??
$?	? ?? SELECT ITEM TO CHANGE
$?	? ?5 ANY CHAR OTHER THAN 1 - 9 TERMINATES SESSION
$	? ?C
$@	? ? ?1?c ?:?c   ?1_??_!i????#͇?#?3?#͂?#̀?#?`?#?0?#?j?#?_?#ñ






$?	? ??USER SUPPLIED SPECS ROUTINE

$?	? ?FOR THIS METHOD, YOU WILL NEED THE HEX OR
$?	? ?IDECIMAL CODES THAT CAN BE SENT FROM YOUR
$	? ÃCOMPUTER TO THE VIDEO TERMINAL TO CONTROL IT
$T	? Ñ
$?	? ??THE CODES (OR SEQUENCES) THAT YOU WILL NEED ARE:$?	? ??
$?	? ??
$?	? ?     DELETE A CHAR SEQUENCE
$?	? ?G     DIRECT CURSOR POSITIONING SEQUENCE
$	? ?n     CLEAR SCREEN COMMAND
$R	? Ô     HOME CURSOR COMMAND
$y	? ??          (CLEAR AND HOME CAN BE COMBINED)
$?	? ??     OPTIONAL: BRIGHT/DIM COMMANDS OR
$?	? ?2               VIDEO/REVERSE COMMANDS
$
	? ?@
$=	? ?nTYPE "Y" IF YOU WISH TO CONTINUE
$K	? ? ?_?Y??(È
$?	? â






$?	? ??WILL YOU BE ENTERING COMMANDS AS HEX OR DECIMAL?$?	? ??
$?	? ?'TYPE "D" FOR DECIMAL   OR "H" FOR HEXADECIMAL
$?	? ? ?_?D?E?H??>?2?)?W






$H	? ÒCOMMANDS ARE ENTERED AS A SEQUENCE OF NUMBERS
$b	? ??TYPE A CARRIAGE RETURN TO END A SEQUENCE

$?	? ??͇͂̀?3?`?0?j?_?c ??
$?	? ?.NOW ENTER THE CODES FOR CHARACTER DELETION
$	? :?)??L!? F#?D(?(??ÂTHIS IS THE SEQUENCE "BACKSPACE,SPACE,BACKSPACE"
$O	? ûON MOST TERMINALS  IF THIS IS TRUE FOR YOUR
$?	? ??TERMINAL, THEN TYPE "Y"
$?	? ??
$?	? ? ?_?Y?!?  s#??






$	? ?PENTER THE CHARACTER DELETE SEQUENCE
$*	? ?j(3 BYTE MAX)
$[	? >!? ?`&:?)2? ?(?6?Ù






$?	? ??--- DIRECT CURSOR POSITIONING ---

$?	? ?THE CURSOR CONTROL SEQUENCE IS USUALLY A 3 
$?	? ?9TO 4 BYTE SEQUENCE. THE FIRST ONE OR TWO
$	? ?pBYTES ARE USUALLY FIXED AND THE REMAINING
$D	? çBYTES CONTAIN THE LINE AND COLUMN NUMBERS
${	? õ
$?	? ??ARE THE CURSOR ADDRESSES SINGLE BINARY BYTES OR
$?	? ?4SEVERAL ASCII DIGITS?, TYPE A "Y" IF THEY ARE BINARY
$?	? ?2? ? ?_?Y?Q>2? ?W
$T	? ÌNOW, ENTER THE POSITION IN THE SEQUENCE
$b	? öTHAT HOLDS THE COLUMN NUMBER
$?	? :?)?????CURRENT VALUE = $?	? :? <͔(??
$?	? ?4'=2? ?
$ 	? ?9NEXT, ENTER THE POSITION IN THE SEQUENCE
$	? ?aTHAT HOLDS THE LINE NUMBER
$D	? :?)?ʡÄCURRENT VALUE = $s	? :? <͔(Ù
$?	? ?4'=2? î
$?	? ??


$?	? ??MANY TERMINALS ADD A CONSTANT TO THE LINE
$?	? ?0AND COLUMN NUMBERS. ENTER THE CONSTANT BIAS
$	? ?OFOR YOUR TERMINAL
$;	? :?)?ʎ?rCURRENT VALUE = $a	? :? ͔(Æ
$?	? ?4'2? Þ


$?	? ??NOW ENTER THE SKELETON FOR THE DIRECT CURSOR
$?	? ?COMMAND. ENTER A ZERO IN THE PLACES WHERE
$?	? ?7COLUMN AND LINE NUMBERS GO
$	? ?R(11 BYTE MAX)
$B	? :?)??m!? F#?D(?(?>!? ?`&:?)2? ?(?Ì


$?	? ??---- DIM/BRIGHT    VIDEO/REVERSE VIDEO ----
$?	? ??


$?	? ?
ENTER THE COMMAND THAT WILL SWITCH TO
$?	? ?6HIGH INTENSITY OR NORMAL VIDEO
$	? ?P(5 BYTE MAX)
$A	? :?)??k!? F#?D(?(?>!? ?`&:?)2? ?(?Ê


$?	? ýENTER THE COMMAND THAT WILL SWITCH TO
$?	? ??LOW INTENSITY OR REVERSE VIDEO
$?	? ?(5 BYTE MAX)
$?	? :?)??!? F#?D(?(?>!? ?`&:?)2? ?(??=


$6	? ?n---- CLEAR AND HOME COMMAND(S) ----
$H	? À


$y	? öENTER THE COMMAND(S) THAT WILL CLEAR THE
$?	? ??SCREEN AND PLACE THE CURSOR IN THE UPPER
$?	? ?LEFT CORNER OF THE TERMINAL
$?	? ?0(11 BYTE MAX)
$ 	? :?)??K!? F#?D(?(?>!? ?`&:?)2? ?(?3??j


$c	? ÜENTER THE COMMANDS TO BE ISSUED WHEN
$u	? ??ENTERING THE FULL-SCREEN EDITING MODE
$?	? ??(IF ANY)
$?	? ? (11 BYTE MAX)
$?	? :?)??!? F#?D(?(?>!? ?`&:?)2? ?(?`??:


$3	? ?lENTER THE COMMANDS TO BE ISSUED WHEN
$E	? ÞLEAVING THE FULL-SCREEN EDITING MODE
$w	? ì
$?	? ??SUGGESTION: USE DIRECT CURSOR POSITIONING
$?	? ?TO PUT CURSOR ON THE BOTTOM LINE OF THE SCREEN
$?	? ?:(11 BYTE MAX)
$*	? :?)??U!? F#?D(?(?>!? ?`&:?)2? ?(?0??t


$m	? çENTER THE COMMAND THAT WILL SWITCH TO
$	? ??STANDARD INTENSITY OR NORMAL VIDEO
$?	? ?TO RESET THE SCREEN AFTER FULL SCREEN OPERATIONS
$?	? ?/(5 BYTE MAX)
$ 	? :?)??J!? F#?D(?(?>!? ?`&:?)2? ?(?j??e
$b	? ÉENTER THE SCREEN WIDTH
$p	? :?)???ìCURRENT VALUE = $?	? :? ͔(??
$?	? ?4'2? ??
$?	? ? NEXT, ENTER THE NUMBER OF LINES ON THE SCREEN
$?	? :?)??N ?2 CURRENT VALUE = $! 	? :? ͔(?F 
$C 	? ?4'2? ?Z 
$W 	? ??i 
$f 	? ?w 
$t 	? ã CHANGE MACRO, DATE, ETC. (Y/N)? $? 	? ? ?_?Y?9%>&2? >?2? ?2? 2? 2? ?? 
$? 	? ?? 
$? 	? ?!ENTER A CHARACTER TO BE USED FOR
$? 	? ?<!INDICATING MACROS OR A RETURN FOR
$!	? ?l!DEFAULT CHARACTER OF AMPERSAND (&) :$G!	? ? ??ʃ!2? É!
$?!	? ×!
$?!	? ??!TYPE A RETURN IF THE ERROR CORRECTION
$?!	? ??!DIALOGUE IS TO BE USED OR ANY OTHER
$?!	? ?&"KEY IF NO DIALOGUE IS WANTED  :$"	? ? ???>"?2? ?D"
$A"	? ?R"
$O"	? ?`"
$]"	? Â"ENTER OPERATING SYSTEM$k"	? Ð"
$?"	? í"   A - CP/M 2.2
$?"	? ??"   B - MP/M II SYSTEM
$?"	? ??"
$?"	? ??"
$?"	? ? ?_?A??$?B?#?>">?2? ??$>?2? 2? ??$>?2? ?&#
$##	? ?4#
$1#	? ?B#
$?#	? ?z#THIS OPTION ENABLES THE TRUE CLOSE OF THE 
$M#	? ñ#FILE CONTROL BLOCK UNDER MP/M.  NO OTHER 
$?#	? ??#FEATURES OF MP/M ARE IMPLEMENTED IN THIS 
$?#	? ?$$VERSION OF dBASE II.  NO OTHER REPRESENTATIONS
$?#	? ?]$OF PERFORMANCE ON YOUR MP/M SYSTEM ARE MADE
$/$	? ?k$
$h$	? ?y$
$v$	? à$PRESS ANY KEY TO CONTINUE  $?$	? ? ó$
$?$	? ??$
$?$	? ??$
$?$	? ??$
$?$	? ?%DATE FORMAT IS MM/DD/YY,  CHANGE TO DD/MM/YY (Y/N)$?$	? ? ?_??9%?Y?9%>?2? ?E%



$<%	? Ã%TYPE "Y" TO SAVE, ANY OTHER KEY TO ABORT INSTALL
$P%	? ? ?_?Y?8&ý%
SAVING INSTALLATION PARAMETERS
$?%	? :G)?2G)?2Y)9)? >2Y)9)? *?)R "?)*?)~?? &?@G#~?@O#"?)x?_ !? ?y?O !? 	w#w??%>2Y)9)? 9)? ?  ?U&
ABORTING INSTALLATION
$;&	? ?  "?)2?)?2?)?p&
$m&	? Õ&ENTER CONTROL CODE BYTE  ${&	? :?)<o& ??&???????	ڰ&
 	?|?ħ&{?0__? ????ͧ&??&: $?&	? *?)~͔(??& $?&	? ?4'?'??&*?)w*?)#"?)!?)4!?)5?'?j&?'
$'	? ?('
$%'	? :?)?![)? s#?;'
[)>? :\)??(:])?Y?:?)?ʟ'Í'!  ???G?p'?_?0??????~'???
?O ))))	?f'])?c'}??'|???'<}?ý'  ??0???
??)?))?	O 	æ'!])͢'}|???'<}???'
$?'	? ??'ERROR IN INPUT, RE-ENTER
$?'	? ?4'!  7??(

$(	? ?2(IS THIS CORRECT (Y/N) $(	? ? ?_?Y????L(
$I(	? ?l(CURRENT SEQUENCE :
$W(	? ??x??~??͔(Å(
$?(	? ??#?v(?:?)?ʻ(?÷(?ͩ(??Ɛ'?@'_? ͠(??o& ͧ&???(
ILLEGAL PARAMETER$?(	? ?  ??(
$?(	? !:)??^? ??#??(?.) FILE IS NOT ON THE DEFAULT DRIVE
$
)	? ?   DBASE   COM                      ENT SEQUENCE :
$W(	? ??x??~??͔(Å(
$?(	? ??#?v(?:?)?ʻ(?÷(?ͩ(??Ɛ'?@'_? ͠(??o& ͧ&???(
ILLEGAL PARAMETER$   	?  0?+s+I3m-a/?4 1?,'* +//l,;5?0?3?.?*?4z*?3.B4?2?2?/-S1?-h.,h.Z0  ?~         ~   ~   ~   ~         ~~??                PP SDEX    =         (   )   (   *         (=7                 PP HLKJ    X Y                     KH       X7Y                 PP 
    Y         p   q   q   E         qY7                 PP     =                                  =7                   PP 
    =         (   )   (             (=7                 PP 
    =                                  =7                   PP 
                                  .                 P0P 
    =         "   !   "             "=7                 PP 
    Y                               Y7                  PP S\D]E^X_    =         (   )   )   ?         =7                   (P 
                                                           PP 
    Y                                  Y7                   PP HFKJWO  
[000;000H [7m [0m [0m 
[2J[1;1H [0m[23;1H           PP[DCAB    =         (   )   (             (=7                 ?P 
 P &a000y000C&dB &d@ &d@ 
HJH     &a23y1C              PP DCAB    Y                           E         Y7                   PP DCAB   (                           (?                PP 
    Y             0A               Y7                  PP HLKJ    =                                     =7                   PP 
    =         C0 C4 C0 *         C0=7               PP 
    =                           *         =7                   PP HLKJ                                                                         @          =         (   )   )   *         =7                   PP HLKJ    =         )   (   (   *         (=7                 PP HLKJ    =         (   )   )   *         (=7                 PP HLKJ    =         (   )   )   *         (=7                 PP HLKJNIVP    ~         ~   ~   ~   ~~       ~ ~                PP 
                                                       PP 
    Y         PB  PA  PB  E         rY7                 PP 
    =                                 =7                   PP 
    =         (   )   (   *         (=7                 PP HLKJ    =         Aj Ak a             =7 a                PP 
    F                        E         F7                   PP      =                                     =7                    PP 
                                                                                                                   