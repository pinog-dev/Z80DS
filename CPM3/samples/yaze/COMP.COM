? ?            Q  PIPEMGR                                                                                                                                                                                                                                   ???A?	??	?!? COMPARE v2.00 (c) John Elliott
Date: 14/11/96
??N? ?00?		? ??|?((
?"?"??2S͸?L 
͞	? <2S͑	2F
!? ???!? ?!1????͙??????:2? ?F:X? ?F??F???^?CK"M:4?-(3?8! $"W
?^?CO"Q?U?ͧ?z?ʵz?(,{?ʠ?????{? ??}? ?????{????}???cz? ??????}? ??????}???????}? ????????}????ʹ
ʹ:S?(-!F
5 '͑	2F
?	? ?? ??A??A?	? *?#"?|? *?#"????'3?'?[?l? ??? 0>._ʹ????	*??K??*?#|????	"???	??? ʹ??|
	? ?:T? |? }? x? y??)???0?:_ڴ?_ô	????a
͗ ?l? ??????d	:2?$(;*M?KK|???()?CKx?< +"M:???7??0?o<2?& n&! ͟???????9?d	:X?$(?*Q?KO|???(??COx?< +"Q:???7??0?9o<2?& n&??'?7ȯ! ?3?'?7ȯ! ɯ>2S?>2T?    ~?38#??S??C???0??:8?A??G8? ???O??_??R?U?#??????#??'?<!G
?9!! F#~#fo ?<?????!  6???'?<!G
?9!  ~6 ??????_>??_x?< + ??????<U? ??????	!~??	!???	!??I ?Y7?/??	???>.?v????	??  ?A ?v??? ?????? <??????@?v>:?v?!% ~?? 0?7?=?
8	?>1?v??
?0?v7?? G:a?0Gx???*b?o??g~??v?#??>:?v?????!??$(??_͒??????????!?????!| "??<? ??????	!}??	!z ?S?"?<?? ??	???>{???>y2?<?? ??????	????	! 6 #???	?5?????? (
?-(?/(7ɯ?!  }D?=? Ä?!% ~????	?=2??5??V?]????7?????7????	!?6???P??V? ?? 2??=_ ? ?P??	:? _? ??	??	?o& 6 ???	> 2?2?2?~???	?<(?>(%#?#"?!?"???u|?<(|???	?*?#?#~?&("?!?"??#"?!?"????	?o& 6 #6 ???	?!?c!3?c??X???	"	!"	?u|?<??	|???	?X"	!3"	?u??	~?	(? ?#?6 #6 #?6 #????????????n ?f????~?:(.?~?:('?~?:( ??????? ???^?V?????w%??????????p~?P	8#?: ??!p~??B?3	?Bz?!??µ{?ҵ<????~͸	?A8?Q0?@?~#?: ??#?: ????!ps#r#?^?Vs#rp???? ????^?V????w ??w%õ?n?f??????:YG> *Z?~(<?Ü?O?! ~?(	?(y???y??!  ???O͸	? #?#??=y????St~#???/(?- ??[t ??(*G??	(x?(???33 ???	?	?^ ?V??????????Sv~#???[ ??[v ??(*G??	(x?(???33 ???	?	?^ ?V?"	?????~#???,(??](??DM!  
?P	??0?[	_ 
?P	0?????0??:0??7??)]T))????	? ??	??{	? ?0?x	? ????1? ??????1? ??????1? ??????1? ????a??{?? ???#???	??		? ??	??	??	"??"?	*??????  ?????This program requires CP/M 3 and a Z80 processor.
$The PIPEMGR RSX is missing.
$  - Failed to open file.
$Invalid COMPARE command.

Syntax is:  COMPARE file1 file2 { >file3 } { options } { |command }

file1 and file2 are ordinary files (filenames can include user numbers)

Options are:
[PAGE]     - pause every screenful.
[NO PAGE]  - do not pause.
[OFFSET=x] - Hex offset for address offset.
[4]        - Print only low 4 digits of Hex address.
(use options [4,OFFSET=0100] to emulate COMPARE v1.00)

>file3 : Output goes to this file, which can be a normal filename or CON: LST:
or AUX:. Use >>file3 to append to existing file.
|command - send output through "command"

COMPARE 2.00 (c) John Elliott, 1996. 
$[More]$      $        Abandoned!
$    ??NO PAGENOPAGENPAGEPOFFSET:OFFSET=O:O=?/H4           vYPIPEMGR dCONLSTAUXNULRSX????_?}????s ?    ?PIPEMGR ?                                                                                                                                                                                                      \CON:LST:AUX:NUL:RSX:        This program requires CP/M Plus and a Z80 processor.
$  , :         ??  ? PIPEMGR    ?՗?,<5?	<(
!	"???!>"??y?m z?2Oy? ?SG:?	?(':.? !:O?(y??4?2Ny????#?
?Qy?<?	?{??y(T:.??	?z??}???|ʈ?g ?ʣ?~ʣ?v(?	: 
?g:'
??g:u
??g:?	??g:?	??gG?o??g ?>?2.?2-:?	?(>?2 
? o& 6 ?SK?<(?>(?|(A?\(?(n??(f?!
́??&(?>(>2/?&(>?2u
!O
́??&(?>?2u
?8!O
́͉2O
?6 }ց? #?
??>?2?	!N
'
& ??:/? !v
)
 ??: 
?ĸ!?? 6??(
??????~??ʾ?~%? 0͘	:/????]͘	?]<ʫ?0?2þ?]<????H	?6! ?6" ?6# !?]?(=???2þ!?>? ??(?n!?f"#|? ?4#?t"?u!????R}=2?0?2þ?~%? ?? ͣ2P<?w%? 8???? ͣ2P?^% ͣ????ͣ??:P_ ͣ??????	????	?|	?	?|	???6? !???[G?H	?Ggo???!
?~ ?a8?z0? ?#???!?	!
?x( ?!>$?*?	+6?& w*?	 ~? !  ??ý!  ?~ ?0??:8(g?#??O}?????o?#?}<???*?	?w%??|?(?t??*?	?~?:(?6  ?#??#*?	~6 #?: ??"?	2? (??S?	"?	??????6% ?*?	?~?:??~?:??~?:?????	??	|?<(C|?(??[K??R?6 # ??*?	+6?#*K6 }ց2? ?	!  "?	*?	+6?#~??́	<w????[?	*?	??g?	!??<|? .D}?{???	(???(?<?:O?(?(
:N? =2N?ɯ2N=??|?  *G#N+~?G?#?#? 	????*?|?(}?(?
(?w#?>??q?: 
? D:?	?(%?
(
?	?2?	!
? 2?	?	!? ?	?(??
(?o?& ? $? ?L? _:'
??	:M
? 8?	?!?	?"?	?:??????o& ?	s<2?_:u
??	?! ??<:MO}2M?
?y??:-?(
͸?2-2.:0? ?:&
? 8(
?!(! ??	o?g?*)?[+|???(?+")|?< ?S+:???ԡo<2?& n&??H	???!
?]???[G?H	?(20! 6???2????H	???!(
?]?[G?H	??!??6 ???2?>?2?: 
?ȯ2 
?!
?]:?	???!
͘	?]?:'
??:?????!(
?]??2H
:.
??2.
?!(
?]:/? ?!O
?]!O
8
 ???!(
?]?2'
2N
?1??Q?2.-??	???(?2?	:?	? =2ǯ2?	=2?	2 
!O
& ????!͘	? ??!IN"!  "?!?]!
 ??:(2&
?22.!?
? BK???0* ##s#r?2O<2-/ ?	?2* #?s#r?2:1??* ~6?#?^q#Vp22?S3>21?:1???[ !2 ???21???##^#V!?x??? #???#??=??s?	1?	???I1?	????{?	ɯ=2!	"???Q???	??!  ")"+#?!
?]<?e	?[#
:"
g. ?:???")?S+!  "
"
}=2!
?!
?]<?e	:!
?(G>??O *)??B")0*+|?(+"+?0?2!
22-202M2N=2 
2.????s?	1?	???????	???????{?	ɯ2 
<20?	?|	?	?|	???	?	?s?	1?	????	????{?	ɯ?w?w?w?w?w ?                           
PIPEMGR: Can't open $input.
$output.
$CON:AUX:LST:NUL:                                                                                                                        $PIPEMGR$$$                                                                                                                                                                                                                                                                ?                                                                                                                                                                                   {0:PIPEOUT.$$$ ? P        ?  ??@? ?H ?"B D???	 ?       ? I 	  ?$ ?HD?? $?    $H $  HA?     	 @  @        $    !   ?@$ ? @ ?B @?       ? ? ? I	 ? ?	?  @D HBA ? D?! ??B!$I@	$@?$D? ?  ?I"H? A ! ?  	 A$! ? ?B	 !"I$H @?$??                                                                                    ?   