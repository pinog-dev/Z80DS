?$8086 prefix by agl ;-) ?*?	?!??!? ê
Z80 or CP/M Emulator Required !

BOOTSYS is a new loader for a CPM3.SYS to load and run
CP/M 3.1 in an Z80-Emulator or on a real CP/M-Z80 system.

"Yet Another Z80 Emulator by AG" is a Z80 Emulator.
It is designed to provide an exact simulation of the
Z80 microprocessor on a UNIX / Linux system.

You find yaze-ag under

	http://www.mathematik.uni-ulm.de/users/ag/yaze-ag/
     or
	ftp://ag-yaze:yaze@xylopia-upload.mathematik.uni-ulm.de

Press any key to continue ...$
 BOOTSYS - CPM3.SYS, V 1.22 08.06.2008 Copyright (c) 2000,2008 by A.Gerlich
$No CP/M vektors found, try to boot CP/M 3.1 in cooperation with yaze-ag ...
$1?>??!  ݾ ?ݾ?* ?[ ??R??2??{ * "?!?:? ??  !:$ ?? ??!?:???  v?>?2 ![6 !???:??(r? }?0?0 fT * #~#fo>ɾ?L!^??!(?!??!??!i?T *  ?H * ??! ?~݆ ?G!  ?N * ?? !|?!?!??1??! ?V  ?~?! 	?????~?(C?g+?~? ? ????????? ?????!? ? ????= ?! 	?~݆?g+?V ?F ???n?f????	?? ??= ??~?$??O?)?#?:??(*?	 ?v?Copyright (C) 1982, Digital Research
 Your CP/M 3.1 bios does not support XMOVE (xmove is not implemented) !

 CP/M 3.1 is running.

 To load and start CP/M 3.1 from this file you must run CP/M 2.2 before.

$
 Loading CP/M 3.1 ...
$
 CP/M 3.1 is already running and bank 1 is selected! Now move all to bank 0 ...
$
 Now all is transfered and bank 0 is selected -> CPM3.SYS will be loaded. :-)
 (this message is printed after a switch from bank 1 to bank 0)
$
 NO signature found. It seems there is no CPM3.SYS attached.
 Use  PIP cpm3.com=bootsys.com,CPM3.SYS  to attach a CPM3.SYS.

$   ????????????????                                                                                            