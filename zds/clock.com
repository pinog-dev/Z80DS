?s1!??:? ??b!? ?[??b?/#~?R??W?Z͊
DS-1302 Clock Utility for Z80 DarkStar

Syntax:

  CLOCK //                 --> shows this help
  CLOCK                    --> displays the CMOS date and time
  CLOCK dd.mm.yy hh:mm     --> sets the date and time (EU format)
  CLOCK mm/dd/yy hh:mm     --> sets the date and time (US format)
  CLOCK /R                 --> sets the system time from the CMOS clock
  CLOCK /W                 --> sets the CMOS clock from the system time
  CLOCK /W dd.mm.yy hh:mm  --> sets both the CMOS clock and system time (EU)
  CLOCK /W mm/dd/yy hh:mm  --> sets both the CMOS clock and system time (US)
$?	? $?{??[͔8f2?~?.(?/ ZG#͔8S2?~? L#͔8F2?x?. :?G:?2?x2??[͔8(2?~?: G#͔8A2??2?ͭ?%<2?!??͙????R
+++ Invalid Date specification
$?R
+++ Invalid Time specification
$?	? Ñ~? ?#?!??͞???
Clock reports: $?	? ͉?!?~?(?0=??_ ?!??	? > ͽ?+~ͬ>/ͽ+~ͬ>/ͽ###~ͬ?? $?	? !?~?ͬ>:ͽ+~ͬ>:ͽ+~ͬ??
$?	? ?Sun$Mon$Tue$Wed$Thu$Fri$Sat$!?͞??I
Setting system time from CMOS clock: $?	? ͉?? .?^#V?ͭ???s#r#??w#w#w?????] L ͚???????z O ͚?????yH!  ?90?)???:??3=?_ !nN#F:??3?N0?dmob?ye. W͉	:??3O 	?!N   ?????R?:??3?N0?do& :??3=_ ???& }??o???!n^#V?z??>;??+??W??_z??;??;?;????
??0???!?!?!?!???#?[?(͖?R?͓
Setting CMOS clock from system time: $?	? ?? .?~#fo^#V#??????~#~#~?͙?͉??%<2???.y?d8?d?E2? y? 	}?<|? 8K?H??!n~#fo 	????R}?E2??{?E2??????o????$??$??+͆??N my? ???R8?+???? B{?0 !n~#fo	??{?z???8?M??   ; Z x ? ? ? ? 0N???0???j??ͣ؇???Oͣر?~#?0??
???͵??Ɛ'?@'_?? ??                                                                          