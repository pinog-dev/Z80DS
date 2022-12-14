?s"1	"*  "?"?!?e  ??͝VDE(M) 2.50 INSTALL (03/87)
(c)1987 E.Meyer

[Opening  !] ͫ!l ? ??\ ? <??!$\ ???*$˽P?R????(>M2???  !? ??!""?6 ??:?? ?X͝,  !?ͫ?!????#???#?(?K???? <??? <???X:?!"??K !???*"P?R??!"?% ???X???*"P?R??!"]$` ??͝]

Installing   !$ ͫã͝
...Press <ESC> to see Main Menu ??? ?͝


--------------- VINSTALL MENU ---------------
<O>ption configuration     <K>ey definitions
<T>erminal installation    <F>urther patching
<P>rinter installation     <R>estore defaults

Choose option, <S>ave, or <H>elp:  ?????v?O?T
P?K?F?R?SH??w?Ê͝

VINSTALL HELP -- press ^C at any time to abort VINSTALL

  VINSTALL is menu driven; however, installation functions
(Options, Terminal, Printer) require complex data entry:
  Logical: simply enter "Y" or "N".
  Numbers: always HEX, usually 2 (sometimes 4) digits 0-F.
           (Always include leading zeros.)
  Byte strings:  If fixed length, just enter the necessary
           number of hex bytes, 2 digits each.
             If variable length, enter the # of bytes
           at the "(" prompt, up to the "[max]" value
           shown, then the bytes themselves.
  Text strings: enter text, then <CR> to end.

  For all items you can either press <CR> immediately to
keep the current value, or enter a new value instead.
(See VDE.DOC for further explanation of patches and values.)
 ?͝

RESTORE DEFAULTS:
This will restore VDE to its original distribution
state: default options, terminal, and printer;
no function keys, no user patches.

Proceed? (Y/N)  ?????Y?!=$  ??!1?$? ??͙!?"$!E%T]6 G????!(!{!]$` ??͝  Done. ?͝

USER OPTIONS:
Create BAKup files:   !=$͝͝
Default file mode W/A/N:   ?͝
Default insert on:   ͝͝
Left margin col:   ?͝
Right margin col:   ?͝
Page length:   ?͝
Scroll overlap:   ?͝
Show system files:   ͝͝
Fixed drives (01-10):   ?k͝
Ring bell on error:   ͝͝
Use alt video in header:   ͝͝
Code for block marker:   ?͝
Clock speed in MHz:   ?͝
[VDE only] Horizontal scroll delay:   ?͝
Fixed tab display spacing:   ??	???	͝
Variable tab columns:   ?k?4?+5#?͝

TERMINAL INSTALLATION:   ?? ͝Generic Terminal Version ͝Memory Mapped Version ͝
Currently " !]$ͫ͝"
Choose: <E>dit current or <L>ist terminals:  ?????E???L ?͝

Terminals: press <Y> to select from list:
 !???(!? ~#G??ͫ͍?????͖????Y(` ?͝(End of list) ?]$` ??͝Selected ?͝

Editing installation -  ???*͝Generic Terminal Version
Terminal ID:   !]$?P͝
Viewable columns:   !m$?͝
Auto wrap at line end:   ͝͝
Viewable lines:   ??	???	͝
Extra DELete key:   ?͝
Extra arrow keys u/d/r/l:   ?k͝
Clear to end of line [06]:   !v$?y͝
Terminal init [07]:   ?y͝
Terminal uninit [07]:   ?y͝
Alternate video on [06]:   ?y͝
Alternate video off [06]:   ?y͝
Alt video uses high bit:   ͝͝
Output filter limit:   ?͝
Use ANSI cursor addressing:   ͝͝
[Non-ANSI] Cursor column precedes row:   ͝͝
[Non-ANSI] Position cursor to (0,0):   ?k͝
Delay after cursor positioning:   ?͝
Scroll text up [09]:   !?$	?y͝
Scroll text down [09]:   	?y?͝Memory Mapped Version
Terminal ID:   !]$?P͝
Viewable columns:   !m$?͝
Unused columns in RAM:   ?͝
Viewable lines:   ??	???	͝
Extra DELete key:   ?͝
Extra arrow keys u/d/r/l:   ?k͝
Terminal init [07]:   !}$?y͝
Terminal uninit [07]:   ?y͝
Turn cursor off [06]:   ?y͝
Turn cursor on [06]:   ?y͝
Video RAM start addr:   ??͝
Z80 video in routine:
  ?k͝
Z80 video out routine:
  ?k?͝

PRINTER INSTALLATION:
Printer ID:   !?$?P͝
Printer init [17]:
  !?$?y͝
Printer uninit [07]:   !?$?y͝
Send LF after CR:   !?$͝͝
Toggles & switches:   !?$?k͝
Toggle 1 on [07]:   !?$?y͝
Toggle 1 off [07]:   ?y͝
Toggle 2 on [07]:   ?y͝
Toggle 2 off [07]:   ?y͝
Toggle 3 on [07]:   ?y͝
Toggle 3 off [07]:   ?y͝
Switch 1 [07]:   ?y͝
Switch 2 [07]:   ?y͝
Switch 3 [07]:   ?y͝
Switch 4 [07]:   ?y??s͝

Select <0-9> or <Z>ap; or <CR> to exit:   ???????Z?m2??0???
??2?͝
New definition: (<BS> edits, <CR> saves; use ^P to enter these)
 ??Ԩ??͙??͝


MACRO KEYS:  ( ?h!?%?;!?%?;͝ bytes free) !?%
>
????02?͝
<?> ?ͻ???͝<?> !????????(0?(?(w#??ͨ???>?8?+~? ܛ͛?????????!>??w??7?                                                                                                                                 ??͝  ??? :?W:_!?%z?(N 	#= ?~?(??^ 6 #?DM?!?'??BDM????h??{??e:?%? :?%??s#K ?!?'T]??B???BDM???N #?!???͝
Choose <N>o-repeat or <Q>uiet if desired:   ?????ͨ???N(?Q +~?#8#??+???h
!? ?!?%>?ݾ 8?^ ?R8??#?"?%|???6  ?#+|? ??!?"?%?!?%!??? O???@O?^???????#($#?~???~+ ?~??+~#?G~?#??ͨ????͝<> ?͝<N> ?͝<Q> ?͝

FURTHER PATCHING:
  You will require DDT or a similar utility. Addresses
in this version of the program are:
        User patch area:   *$???-???:$_ +??͝
        Command tables:
          Basic:  *$??͝  ESC:  *$??͝  ^Q:  *$??͝  ^O:  *$??͖?͝

[Closing  !] ͫ?2h 2| 2?2!$\ ?(??:?? ʠ͝,  !?ͫ:??K "!P""!?%"???!"??(??à!P""!]$"` ??!"??(??͝]

 ?{"?͝ *Aborted*
 è͝
*File )͝
*Read ͝
*Version ͝
*Write ͝ error*
 è????? ??? ???? 
?? ????7?????? ??? ???? ??? ??? <(ط??ͫ͍ͺ?(+!?w#??ͺ???(
? 8?w#?6 #?!? ??????                ?~Y? N??͍???_?(??Y(?N ? ?O????q#??#??#?;???;͍?8?(2??8?(??w#:?w#??##? ?|?<?}?<??;͍?8??(w#?ͺ?7???Z؇???2:ͺ?Z?O::????A? ~??PO????PO????0?:?????0??
???_????>?2q?Cr"t$?2q?Cr"t(??*t?;)??*tF#??(
???;??#?͍!`a 6 ???Kr:q?x(!`w?(Y#??ͺ??? -?>??P?8??>?0?!`wG?(4#??ͺ??? :q? "????Z??8?????w??ͺ?Z??ڧ?w#??[t?KrH !`:q? #????*t?KrH 	:q??#?(????)????                      ?F#^#V#?# ^#V##????͝  ?: ?͝
 ?㯆#??O???????#?O?????????????O???????ʭ??????a??{??_??!$?~??COMVDE                                    ?A :     @@#7            Teletype printer                                ?                                                                                ADDS 25         P??
? K    k    k    G4   G0      Y        Y! M   Y! L   Amstrad / Heath P??
? K    HE   HE   p    q       Y        Y! M   Y! L   ANSI standard   P??
? [K   [H[J [H[J [7m  [m    ?           	[2;1H[M	[2;1H[LBondwell 2      P??
? T                I    N       =        =! R   =! E   DEC VT52        P??
? K    HJ   HJ                    Y                            Commodore 128   P??
? T                )    (       =        =! R   =! E   Epson Geneva PX8P?? T                                 =        ?     ?     Kaypro II/IV    P??
?                                   =        =! R   =! E   Kaypro 2/4/10   P??
?                  B0   C0      =        =! R   =! E   LearSiegler ADM3P??
? T                                 =        =! R   =! E   Morrow MDT-20   P??
? T                                ?=        =! R   =! E   Osborne 1/2/4   P?
? T                )    (       =        =! R   =! E   Otrona Attache  P??
? K                U&   U       =        =! M   =! L   Televideo 910+  P??
? T                G4   G0      =        =! R   =! E   TRS-80 model 4P P??
	?                               =        =!     =!     Zenith ZT10     P??
? T                s1   s0      =        =! R   =! E   Kaypro II/IV    P0?
?                                   0???????       ??????       Osborne 1/4     P0
?                                   ??               ?               Osborne Exec    P0?
?                    .0   .2    ??? ??? ??       ?? ˷? ??                                            