ееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее (vs. military 24-hour)
  2.     Use standout video mode for time display
  3.     Show time in line mode prompt
  4.     Time string separator character

  X  Done ННrН НrН'НrН.~Нс%НP'Нq%Нэ%1е2р3х4ъXv.vv ЭННЁ%НЏТН уН'оН.Нh*ю(ѕwНn'~Нс%Нv'±& .Н№'*n+Й& п& и& бНћ'НМ%
----- NUMERIC OPTIONS ------------------------------------­НP'НМ%  1.  Kbytes to read from log file
  2.  Screen mode text lines
  3.  Message time delay (1/10's)
  4.  Command line length to discard
  5.  Automatic shell pause line limit
  6.  Screen divider length

  X  Done   Н %~Л?Л?Л?w#6 л!-хНп%Н№'сН“*$рНP'Нq%Нэ%1№	2Љ3u4)56X«	.«	«	 Ч  Н %~‡‡‡wГv  Н°%НHНК	&ГQЩ, *n+~ЩюFКRНМ%KBYTES TO READ:  The more of the history file is read, the more is available
to use - but the slower the program load.  The default compromise is to
read the last 5k of the file.  The history may grow in size (to disk capacity)
without further slowing LSH.  The type 4 version may report "LOG OVFL" if the
buffer size is too large.  There should be room for 5-15k.
ЉГ"НМ%KBYTES TO READ:  Fixed Log version always reads and writes to a file of
fixed size.  Reserve outer tracks on your disk for fastest access.  File
size should depend upon disk's block size:  1,2, or 4k.
ЉНМ%Kbytes to read from log: Н„%А#rН`Й:D'·ИНuеН‚~#foСЇнR"p+Й:D'·ИНuн[p+лН‚s#rЙ*g+~#fo)эЙ*n+ 	Й" Н°%Н?&ГQНМ%TEXT LINES:  The initial number of lines in the screen mode text window may
be set from a minimum of 1 up to the number of lines on your CRT (less 3).

Text Lines (1 to CRT):  Г„%еНі%бН\Г‚	.-Нп%Н№'Нd'Нn'*g+~Н“*Нv'Й# Н°%Нѓ&ГQНМ%TIME DELAY:  When some of LSH's functions are toggled, a display of the new
state is flashed.  The default setting is 4/10 second.

Message Delay (TENTHS):  Г„%$ Н°%Н7&ГQНМ%MINIMUM SAVE:  Sets the line length LSH will discard rather than recording
to the log.  Default 0 saves everything.  A 1 would discard single character
command lines.

Line length to discard:  Г„%% Н°%Н&	ГQНМ%SHELL PAUSE LIMIT:  The number of lines on display in the text window that
automatically cause a CLS and shell pause on command execution.  To force
a pause every time, set the limit to 0.  To disable this function, use 99.

Shell pause limit (LINES):  Г„%& Н°%Н%&
ГQНМ%DIVIDER LENGTH:  In full screen mode, the log text appears between two divider
lines.  You can change the length of the divider.

Divider length (chars):  Г„%Нћ'НМ%
----- CHARACTER OPTIONS ----------------------------------­НP'НМ%  1.  Log file type
  2.  Default command line
  3.  DU:DIR separator
  4.  Line mode prompt (SAVE ON)

  X  Done НP'#' Н %ННP'#x Н %ННP'#* Н %ННP'#+ Н %~ННP'Нq%Нэ%12g3Ф4Xv.vv Э&
&&&.#Нп%Н№'Нd'Нn'*g+ННv'ГИ~·ИНс%#чЙ' Н°%Н.Ні%ГчНМ%Log file default TYP:  >Нz&~·ИНЁ%н[g+~Н)+ю Ш#фЙx Н°%НxНі%ГуНМ%DEFAULT COMMAND:  LSH will run a pre-installed command line on request.  The
default is HELPLSH, the help screen display program.  It should be installed
with a DIR reference so ZCPR33 can find it.  The command line may also be set
to run an alias or a useful program like ZFILER.

Default command line (16 char max):   >Нz&НЎ&ИНЁ%НVЇЙ* Н°%НеНі%ГпНМ%DU:DIR divider:  >Нz&НЎ&ИНЁ%ГV+ Н°%Н2"g+Ні%Гле!.· !0НТ%бЙ>ѕ> НМ%Line mode prompt    Save ON  *g+~ННМ%    Save OFF  ~·(==<ННМ%
Reverse? (y/N) Нb*юY~ 
НЁ%·(==<w!.·А!0ЙНћ'НМ%
===== USER CODE PATCH =====================================


   1.  User Patch  (HEX)

         USR>


   X  Main Menu Н НP'НМ%A small user's routine can be installed in the 32 byte patch area.
Code here is run when the User Patch key is pressed.  HEX code can be
entered directly, but it would be safer to assemble the patch and use
BCOMP to overlay it directly onto LSH.  The patch code location is at
ENTRY + 98h.  See LSH documentation for more information. НP'Нq%Нэ%1»X?.?? жНP'? НдНP'Нd'НнЙНP'НМ%Hex Bytes: >a? Н % НщН НЁ%Г†Н %Нd'*g+~Н+НМ% #хЙНz&Э*g+НЎ&ИН&В='Эs Э#Э6  лцяЙНћ'НМ%
===== EDITOR INSTALLATION =================================


   1.  Editing keys
   2.  Word separator characters
   3.  Token separator characters

   I  Information
   X  Main Menu НP'Нq%Нэ%1у2€3њI X?.?? ЭНћ'НМ%

                        COMMAND KEY INSTALLATION

     The control key bindings are listed in a table.  Letters represent
CONTROL KEYS entered while editing.  Those preceeded by a control character
are shifted keys scanned only after one of four lead-in keys has been pressed.

     To change a key binding, move the cursor to the function you want to
change.  To make it a shifted command, first enter a number 1-4 corresponding
to the lead-in key you want to assign.  Enter a character "A" through  "^"
for the base control key.  If you don't want a function implemented, enter
a "-" for it.

     For example, if lead-in key #3 is ^Q and you want to assign the control
sequence ^QZ to a function, first enter "3" then enter "Z".  The display then
shows the current key assignment.

     DEL is converted to ^_ by LSH, so that control key is not available.
 НМ%Any key...  Нh*Гd Н°%
Н™Ні%ГЭНМ%Install characters recognized as word separators.  You can use no more
than the number below.  To use fewer, just repeat some of them.  Do not
start with a space.  [<CR> to skip installation]

Current   -> >ехНТ%НМ%
Change to -> сНz&СНЎ&ИНЁ%я~·Ин щЙp Н°%Н­Ні%ГЭНМ%Install characters recognized as token separators for the token
replication command.  You can use no more than the number below.
To use fewer, just repeat some of them.  Do not start with a space.
[<CR> to skip installation]

Current   ->  >ГoНћ'НМ% Each command must have a unique key.  Letters represent control keys.  Enter
 a number 1-4 BEFORE entering the key to bind it to one of the lead-in keys.
 To disable a function use "-".  ESC CR DEL are entered directly.  TAB is "I".
 НМ% Quit - ^C or "."     Skip - <sp>     ^E Up, ^D Rt, ^X Dn, ^S Lt (& Arrow Keys) ЙН©НВ *n+- "U+*U+ЇНГ ю7Р2W+Н НГ:W+<Г:W+Н НЯ~#ю-КЃхЭ*U+жа(3юЂ(Э#ю (Э#юА(Э#Э~ Ж@НµНµю[ Н’Н®Нс%сж_ц@сж_ц@Нэ%_€[’IњM¦ Нс%НјЙНМ%DEМтНМ%ESГиНМ%TAВЮНМ%CТЦхНМ%ЮсЙхНМ%€сЙхНМ% сЙеНМ% :W+G!¬!·(~#·тТшНТ%бЙеЕ:Y+ЖgнKX+НщЖoН№'БбЙЇЃэЙ:W+яЦ0ыЖGЙНюнCX+ЙНВ НЯНh*жНэ%ч 	ч ч ч . ђ t ‚ X f t ‚ X f  ю!Тч Г НФ ЬН Н® Ъ тНз Ьа Н® 0хГ На Ьз Н® 0хГ НН ЬФ Н® 0хГ НН :Y+·МФ Н® ФВ Г н[W+ *U+ЙнKX+НщG:Y+Ђ2W+ю7ЙЇ2X+2Y+2W+Й!Y+!X+4{ѕР6 Й!Y+!X+~·(57?Йs7ЙНЁ%НЈ ^6 ю18'ю50#Ц0GЭ*U+Э+Э#= ыЭ~ ю-М='К >`Ж ьwНh*Н)+ю-(ж¶wНМ%    ХН С:W+юТ х{юМ©*U+ЇНс2W+Нi!Н Г НЈ ~ю-А:W+х<G>`Ж ь_7*U+~жа» Е>7ђ2W+Н НЯНМ%   ? Б#Ыс2W+ЙLead-in Key #±Lead-in Key #ІLead-in Key #іLead-in Key #ґExecute LinеBackspacеChar LefфChar RighфLine UрLine DowоWord RighфWord LefфLine End/ StarфLine EnдLine StarфUp ScreeоDown ScreeоFirst ScreeоLast ScreeоDelete ChaтDelete LefфDelete Word RфDelete Word LфDelete LinеDelete to EOМDelete CommanдNew LinеInsert/OverwritеUnkill DeletioоUndo Line ChangеControl KeщClear to EOЖYank Line to СYank & Kill LinеInsert Q & CleaтInsert СClear СDuplicate LinеOld Line SearcиToggle DirectioоRecall Next LinеTog Line RecalмToggle SavеQuit ShelмToggle ModеWarm BooфShell PausеText Lines/ TimеRepeat Token ЈSet Place MarkeтGo to Next MarkeтClear MarkerуComplete FilenamеHELP (Run Cmd©User PatcиНY$ГЮНМ%  Saving... Н±&Нј& >*l+НЧ&НП&!Ї%Л†Й!Ї%ЛF НМ%Save Changes? (Y/n) Нb*юNДY$Нv'Нћ'НЋ'н{i+ЙНМ% No filеНЦ)6
>Нѕ)бНМ%LSHINST - Default option and command key installation for LSH 1.1 
 Syntax:  LSHINST [dir:][lsh.com] Г®$ ѕА#щЙНМ% Installs only LSH, Version 1.1  Г®$НМ%Choice:  Нd'Гb*>Нz&НЎ&ИеЭбЭ6 НI&АНЁ%*g+sЙ*n+"g+ЙхЇ2Ї%сЙН %НP'Ні'АНd'Нч%шНP'ЙгНТ%гЙ~#·Ию(ю(Нс%·шнНn'иНv'г>хН+сЙНМ%ЉЙЩгЇѕ#(##ѕ х#гЩЙ^#Vлч  ~ю#()~Н)+ю Ию И#ю08pю:8
юA8hюG0dЦЦ0л))))…oлЧ#  ~ю# #Л~Н)+ю Ию Ию08<ю:08Ц0#еbk)))…o|О gлбЪЕХ!Ђ wЕХ!Ђ 6<л
ХН б#^ #е6 бСБЙцяЙ~#ю (ъ+·Й:i 2k+Й!h Їw#ыЙ:k+2i \ Н*Н <Й\ Г 2з&y°ИЕелН НС&бБ·АЂ еНМ%File:  \ НB*xЖAНс%yН“*Нњ)Д'НМ%єГq*НМ%Ї~#ю Дс%чЙю 0хНМ%ЮсН)+Гс%хНМ%‡сЙ LSH     COMгНV'гЙХV#^#лхН№'слСЙе:y+*~+ГҐ'еХн[Ђ+еХн[‚+ЕГ(хН†'сЙеХн[„+хН”'сЙеХн[†+ЕГ(е*z+:w+ХW~·(НЅ(цяСбЙе*Њ+йеХЕн[|+·(Н((:x+НО(цяБСбЙеХЕНЫ'т& жOн[ђ+М(ЛЬ(ЛЬ(ЛЬ(:v+ЛgА:v+Лg  ґgЙ gН(Аб·еХЕн[Ћ+·(¬Н*(џ%-·Ию%(ю\ Н+нН)+юD(Lю2(Cю3(;ю.(+ю+(*ю>(юR(юI(юN ТЇП$,Ѕ}lgёј0„g­|„Н+eЎ| |dНЈ(
НЈ(Ж0аХ/ђ0ьЂGzю0 ЛA(Н+xСЙ~·(#ю\ ~#Н+рz·ИхЕеO*¬+|µ(Х+ С~·(GЕНф(Б шбБсЙНъ(ыЙгг ыЙеХх"¬+|µ(Ђ "r+Е|µ(D~ю!8?е ~2t+#~2u+#~2v+ w+ н°Н‹)ыб:t+O	н Н‹)ы н°БсСбЙ…)!w+6 #ыs#r#ъ6 #s#r#ъ6 #ыТ еХх…лs#r#л~#·Ию\ ш#хНй) ЇЙ~·(щё# 	~№ #цяЙЕ 	БзехНЦ)###сwбЙхХ*¬+1 СсЙХ" *¬+|µ(~#foґСЙНш)ИЕ Ц0ыxБЙХ Гя)*¬+|µ(^#V#~л·СЙеЕхНB*·(G! NН-*сБбЙ"¬+ЙхХеЕY НY*XНY*БбСсЙхХеНY*хя НY*OсGбСсЙХЕН БС·ЙНh*Г)+Е>Н4+Б·ЙЕХхН‡*>.Н+Н‡*сСБЙжю Д+хЙЕяех&dН©*&
Н©*НЅ*сбБЙ.я”,0ь„g}· °|ш> (ЇЖ0GН+|ЙЕяеХх'Нс*еХхиНс*d Нс*
 Нс*}Н+сСбБЙцянR<0ы °ш> (ЇЖ0GГ+хНF+Н+схНJ+Н+сЙхжхЕO>Н4+БсЙжюaШю{Рж_ЙеХН<+СбЙеo‡…* oгЙжЖђ'О@'Й®+                                           