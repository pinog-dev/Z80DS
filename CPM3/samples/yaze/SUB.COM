!  9"?1?? ? ??:] ? ?????S?
?6????8?  !e ~? ?@??!??J?~#?Jɯ2?
!? ͽ2?
??/¤#~?A?z?Dʏ?Iʊ??>?2?
#~?B?>?2?
ɯ2?
?#~?!ҏ"?
~2?
? ?#Ö~#??? ʲ?	¤ͽ????ò~#?7?? ʽ?	ʽ+???*?
?*?
~??s#r#"?
?? ~#???? ???	?????"?
?p??7???:?
??B	? ???A?$??7?? ?	? ?  ?	? ?  
Abort SUBMIT File
Do you wish to abort execution?
  Enter A or ^C to Abort or anything else to continue - $Execution Aborted$Continuing Execution$:?
???! ?+|????? ???? ????? ʹ?͠??>?2?
2?
!  "?
:?
?/?1?	? ç?	? \ ?,? <§? |?ʉ? 2?
? |?ʉ? ? 2?
? ʉ  ? \ ?,? <§:?
? ?? ? \ ?,? <??*?
#"?
*?
?*?
"?
s#r#?# ?;?&?ʹ??&?
????w#???*??
Process SUBMIT File$
Input SUBMIT File Command Lines$"?
?qç"?
?q???! w!  w?????:?
?/?L͎?z:?
???n:?
_??? :?
_ ??? >_ <2?
!? ~?????\ ? ?> 7???:?
?¬:6???ک=26??>?>?*?
~#"?
?;¼>ɷ?>??	? 5
? :6!7"?
?7???: =????	? ?? <?:?2???? <???
Writing SUBMIT Execution File to Disk$*?
|??=^#V#?"?
?~??i*?
+"?
?8*?
|??v^#V#?"?
??~*?
+"?
?X?? ~#2?
"?
!? "?
?2? Ew#?%??^²?%?R?@?R? ?R?$??:?
?/>$???I??$???%?7×?w? ???I???w???%?0Ox?????G??x=??R?Gʗ~#??7???? ?½?!?
~=7?w*?
~#"?
??!? 4?**?
?w#"?
?:?
?7?~????o& )?
^#Vz??i???~#???#?m??0??:?????????	ڇ
 	?|??~{?0ͧ????>ͧ>
???_? ?????a??{??_??gDisk Full$?gDirectory Full$?gMemory Full$?gSUBMIT File Not Found$?gParameter$?gToo Many Parameters: $?gLine too Long: $?gSUBMIT File Empty$?gControl Character$?	? ?	? ?	? *?
?~͠?? ?  
SUB Error -- $ error on line number: $
Command Line? $!?
T 6 #x???!?
"?
!??"3!?"?
>?2?
26?	? *???
How to use SUB --

SUB<CR>			- print this HELP message
SUB /A <text>		- Abort of SUBMIT File
SUB /AB <text>		- /A and Ring Bell
SUB /D <cmd lines>	- use SUMMARY (DO) mode
SUB /I<CR>		- go into Interactive mode
SUB <FILE> <PARMS>	- as in standard SUBMIT.COM

In "/I" (interactive) mode, SUB will prompt you
a line at a time for the SUBMIT job input...logical
lines may be combined on the same input line by sep-
erating them with semicolons.  Example:
  A>SUB /D STAT;DIR
specifies two commands on the same input line.

Submitted jobs may be nested...SUB does not erase
any existing submit job (appends to them instead).

To insert a control character into the output, pre-
fix it with a "^" (works in any mode).
$                      ommands on the same input line.

Submitted jobs may be nes??? ..SUB does not erase
any existing submit job (appends to them instead).

To insert a control character into the output, pre-  $$$     SUB                                                           