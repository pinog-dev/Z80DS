? Z3ENV ?TEMDSK>#SKPTYP>SKPTYPS>PRNHEXSYMBAK$$$TMPBADOUTSWPLBRARK               WASTE> #CRNTYP> CRNTYPS>MACZ80ASMBASPASDBFNDX      PTRNAME>Epson MX/FX Compatible         SETCONDENSED>          SET8LPI>0         RESET>@                   BUSHDU>   *	?} Q?͉*** Extended Z3TCAP not available ***
 Use the non-graphic version of BUSH. ???!????????͔j2??? 7?͉*** Your terminal does not have PDM capability *** ??ȇ"?? ?͉*** No Shell Stack *** ?>?20 * "1 ͙?? ?"??p"??z?* ??R?0'?͉*** Not enough TPA to run BUSH *** ???>?2????,?? ??C??!? ?? ???? ?͉*** No External FCB *** ?#?f ????e ???]X ͟??!?ex?Aw#y
0?8??r#?0w:???/ 
?g???d?aY??~?ʆHN0????????(:???>P(:??w!?e?؅ ?(Z?? ?͉*** Shell Stack Full *** ??͉*** Shell Stack Entry Size too small *** ?*?? 	r#s??g???d?E?:???(:???B?S?R???H??*?C?@?aY????W?sp??͒{? L͟??g???d?9?Remember--infrequent backups make for frequent regrets! ?+??|???????ʷ*??@??dH???{Backup  Backup FunctionsIntroductionDisk BackupHelp  Press ESC to exit ??{RestorationRestoration FunctionsIntroductionFile RestorationHelp  Press ESC to exit ??{Help      BUSH HelpGeneral HelpBackup HelpVery Large FilesHard Copy File ListsRestoration HelpFile SpecificationFragmented FilesConfiguration HelpBUSH Introduction  Press ESC to exit ??{Configuration  BUSH ConfigurationIntroductionConfigure BUSH  Press ESC to exit ??{System CommandExecute Z System Command  Press ESC to exit ?}?(??S??3?Q??Y?͉The Backup function of BUSH allows you to back up one or more disks (usually
one or more of the logical drives on your hard disk) to another disk, which
will typically be one of your physical floppy drives.  You may select any
combination of source drives, and may back up files from all user areas or
a single user area that you select.

You will be asked several questions about how you want the backup done, in-
cluding the source and destination drive letters, which user areas to back
up, and various optional items such as printer logging of the backup and the
use of read-after-write CRC verification of the data written to the backup
disk.  After all questions are answered, BUSH will search the specified disks
and user areas and build a file containing the names and locations of all the
file to be backed up.  After the file list is built, BUSH will start copying
the specified files to the backup drive.  As each backup floppy fills, you
will be given the chance to interrupt the process, in case you need to format
more blank disks, or simply wish to stop.  An interrupted backup procedure
may be resumed later at the same point where it was stopped, and will use the
remainder of the file list built during the original run.

    [Press any key for next screen] ?Ɋ??Y?͉Unlike most previous CP/M-compatible backup utilities, BUSH can back up files
larger than the backup floppy.  If such a file is found, BUSH will break it up
into fragments, naming the fragments something like 'NAME--01.TYP', where
NAME and TYP are the file name and file type of the original file.  The file
restoration function of BUSH will reassemble these file fragments into a dup-
licate of the original file.

BUSH may be used for incremental backups as well.  When backing up files, BUSH
may be instructed to set the CP/M 'Archive' attribute bit in the file type
specification on the disk.  It may also be instructed to skip those files that
have this attribute bit set when building its list of files to back up.  This
allows you to do a full backup, setting the archive bit on all files backed
up, and then later do incremental backups.  During these partial backups, only
those files that have been changed since the full backup was done will be
included in the list of files to process.

For assistance with any question, simply enter '?' as the input. ?Q?g??9?!BUSH Disk Backup ?9?-Press '?' where shown for help. ?؂?{???2ދ?9?The file containing the list of files to be backed up already exists
from an interrupted backup at some earlier time.  Do you want to resume
that backup at the point where it was stopped before?  ?Y?6Y(@?g????yN!6f???:*f>͈????< 	>?w? ??????*f?? ?=ɯ!??????>?2???+??R??+??HY?+?!g?Y?>?
l?(?:OfG!Pf????4X?~?Q0	?A8#??H??+?!]g?Y?>?
l?(??Q0??A8?2???+?	!?g?Ӊ!???Ӊ!?g?Ӊ:???ڊ?+?
!?g?Y?6Y ?+?	?HY???+??HY?+?!Dh?Y?>?
l????]?[????j2>?pl?QnYou may either back up files from all user areas
on the disk, or only files from a specified user
area.  Answer 'Y' to back up all user areas, or
'N' to back up a single, selectable user area. ?`?6Y>????+?!fh?Y?>?
l? :??n!Pf?g?G~? :???0\>?
l?[????j">?pl?QnInvalid User Number!  User areas
must be 0 -    inclusive. ?`x2???+?!?g?Y?>?
l??????[????j4>?pl?QnAnswer 'Y' to skip files that have the 'archive'
attribute bit set, indicating that they have not
been modified since the last full backup, or enter
'N' to back up all files, archived or not. ???6Y2ҋ?+?!
h?Y?>?
l????
?[????j3>?pl?QnAnswer 'Y' to set the 'archive' attribute on
each file as it is backed up.  This will indicate
that these files have been archived, and will
allow future incremental backups to skip them
if they are not modified before the next backup. ???6Y2Ӌ?+?!?h?Y?>?
l????[????j
;>?pl?QnYou may select optional read-after-write CRC verification
of the data written to the backup disks.  This will make
the backup take slightly under twice as long as a non-
verifying backup, but will ensure that the data on the
backup disk is the same as the source data.  Recommended
for backups of critical files and for most full backups. ??6Y2ԋ?+?!?h?Y?>?
l????"?[????jE>?pl?QnAn indexed list of the files on the backup disks may be sent to the
system list device.  This list will consist of an index of all the
files which were backed up during this run, in order by source disk
and user #, and an index of the files placed on each backup disk,
also sorted by user number, and alphabetically within each user. ß?6Y2Ջ?+?!i?Y>?
l:Of?(`?[????j$>?pl?QnThe date string must be exactly 8
characters in the format YY/MM/DD. ?!Pf֋?4X>?
l?U?Q???Q???͊?C1??A00:BUSH!F ?!?e ????>͈????!  "Kf*f"?? 	*f??=??9?
Can't write the file 'BUSH!FIL.LST'! ????Y?͉The BUSH Backup function will ask you a series of questions about how you want
the backup done.  The prompt of the question will show you if you may enter
a '?' in answer to that question for help, i.e. the question will end with
something like '(Y/N/?)'.  Questions that do not have this help available are
those for which the answer should be obvious, such those asking for one or more
disk letters, or simple Yes/No questions. ?Q}?(??????)?Q??Y?͉The file restoration function of BUSH will restore files from backup disks
created by the backup function to the disk and user number from which they
were originally backed up.  You may select an individual file or all files
matching an ambiguous file name in a particular user #, or all user numbers
on the backup disk.  You may also elect to restore only files which have been
modified since the last backup.  If the source file was broken up into
multiple fragments spread across more than one backup disk, BUSH will
recombine the fragments into the original file.

You will be asked to provide disk letters, file names, and selections about
user #s while preparing to copy the files from the backup disk to the
original source disk.  If you are unsure how to reply to any question, enter
a '?' in reply and you will be given assistance on how to answer that
question.  Answers to YES/NO questions may be entered in upper or lower case. ?Q?g??9?BUSH File Restoration ?9?!Press '?' in answer to any question for help. ?؂?{?U?Q?+??HY?+?!Ti?Y?>?
l?(??A8?Q8?H?2[(2???@2pj?+?!?i?Y?>?
l???$:Of=$?[????j	=>?pl?QnRestoration User/Filename specifications are of the form

     U:FILENAME.TYP

where

U is the user number (one or two DECIMAL digits) from which
  to restore the files.  If U is not specified, the current
  user # will be used.  You may enter '?' for U to restore
  files from all user areas on the backup disk.
FILENAME and TYP are the filename and type of the file(s)
  to restore.  Wildcard characters ('*' or '?') may be
  used in any position.

    [Press any key when ready for examples] ?Ɋ>?pl?QnExamples:

  To restore the single file JUNK.DAT from user area 3 on
  the backup disk, enter
       3:JUNK.DAT
  To restore all PROG files from user area 7, enter
       7:PROG.*   (or 7:PROG.???)
  To restore all .TXT files from all user areas, enter
       ?:*.TXT    (or ?:????????.TXT)
  To restore all files on the backup disk (must have
  been a major disaster!), enter
       ?:*.*

(Using a form like these last two examples will not be
confused with entering a single '?' to ask for help). ?T !Pf?????T y< :??=?? >?2??!??~#??(?:???@2??:pj2???+?!?i?Y?>?
l????(?[????j
G>?pl?QnYou may elect to only restore any files that have been modified since
the backup was done.  This will allow you to restore the source disk
to the same condition that existed at the end of the backup (plus any
new files created since then) without spending time copying a lot
of files that have not been modified since the backup was done.  This
option is based on your having specified that BUSH was to set the
archive (T3') bit during the backup.  If a file on the backup disk
that matches your selection criteria has a matching file name & type
on the target disk that still has the archive bit set (indicating
that it has not been modified since the backup was done), that file
will not be copied from the backup disk.  To select this option,
answer 'Y'. ??$?6Y2拯͈??IX<®(?[????j.?QnCan't find a file of the form '-NNNNNND.XXX'
on drive A user 0.  Check to ensure that you
have inserted the correct backup disk. ͳ??  ?>?
l?=?<X?	 	2) ???##?~#?e? ?~?J?(??MX?(2X)2???D) ???????????+??R??F?Restoring the following from backup disk       created on 00/00/00 to drive A:
   Filename(s):  ???d??F?    User(s):  :??G??(!?)?F? All x??F? ?+??+?!?e?Y?6Y ?+??HY?  ????H?)??͊?C8??A00:BUSH!R ??Y?͉You may enter '?' in answer to any of the Restoration questions for
more information about what is wanted, except the question asking for the
letter of the backup drive, which should be self-evident. ?Q}?(!??.?ʁ2??6??,:???=??@?Q?g??9?BUSH General Assistance ?9?Specific help with most questions may be obtained by inputting '?' in answer
to that question.  Questions which require very simple answers, such as those
asking for a drive designator letter, or 'Yes or No' questions where the
response is obvious, do not have this assistance available.

More detailed information on the operation of each of the functions may be
obtained by selecting the 'Introduction' menu choice from the pull-down menu
for that function.

Additional information on some of the specific areas within each function, or
the program as a whole, is available by selecting from the other selections
provided on the menu of this 'Help' function.

You may review the program introductory information by selecting the
'Introduction' entry on the 'Help' function menu. ?Q?g??9?Backing Up Large Files ?9?BUSH has the capability to back up files of almost any size, including files
larger than the capacity of the floppy disks used for the backup media.  When
BUSH finds such a file, it will break up the file into pieces, using a modified
version of the original filename for the fragments.  As an example, if a file
named 'DATA.FIL' were broken up into three fragments to fit on the backup
floppies, the fragments would be called 'DATA--01.FIL', 'DATA--02.FIL', and
'DATA--03.FIL'.  If the filename of the file is longer than six characters,
part of the name will be overwritten by the fragment number.  For filenames
with less than six characters, the space between the name and the fragment
number will be filled with hyphens, as shown.  Both names are shown in the
printed file list.  The first part of the file list, showing which files were
backed up, lists the unmodified name of the source file.  The second part of
the list, which shows the names of the files on the backup disks, shows the
modified name used for the fragment of the file placed on that backup disk. ?Q?g??9?Hard Copy File Lists ?9?BUSH can produce an indexed list of the files backed up during each operation
on the system list device.  This list consists of two parts.  The first part
is a master list of all the files that were backed up during the procedure,
sorted by source disk and user area, and alphabetically within each user area.
The second part of the list is a list of which files are on each of the backup
disks, again listed by the user area in which they were placed, and sorted
alphabetically within each user area.  These lists provide you with a handy
master list of your disk backup system, and allow you to quickly determine
where any specified file may be found.

If you do not want this list to be printed, or do not have a printer attached
to your system and want to be able to back up your disks without hanging the
system, answer 'N' and the printout will be skipped. ?Q?g??9?Restoration User/Filename specifications are of the form

     U:FILENAME.TYP

where

U is the user number (one or two DECIMAL digits) from which to
  restore the files.  If U is not specified, the current user # will
  be used.  You may enter '?' for U to restore files from all user
  areas on the backup disk.

FILENAME and TYP are the filename and type of the file(s) you want to
  restore.  Wildcard characters ('*' or '?') may be used in
  any position.

    [Press any key when ready for examples] ?Ɋ?g??9?Examples:

  To restore the single file JUNK.DAT from user area 3 on the backup
  disk, enter
       3:JUNK.DAT

  To restore all PROG files from user area 7, enter
       7:PROG.*   (or 7:PROG.???)

  To restore all .TXT files from all user areas, enter
       ?:*.TXT    (or ?:????????.TXT)

  To restore all files on the backup disk (must have
  been a major disaster!), enter
       ?:*.*

(Using a form like these last two examples will not be confused with
entering a single '?' to ask for help). ?Q?g??9?Restoring Fragmented Files ?9?BUSH will automatically restore fragmented files produced by the backup
function, recombining them into the original file, using the following logic:
If any unambiguous file name specified for restoration is not found on the
backup disk, BUSH will convert the filename to what it would look like as the
first fragment of that file if it were broken up by the backup function, and
attempt to find a file by that name.  If it is successful, it will tell you
that it could not find the specified file, but found a file fragment that looks
like a match, and is restoring it instead.

If a file is found on the backup disk that matches the pattern of an ambiguous
file name selection, BUSH will also inform you that it has found a fragmented
file and is processing it as such.  In this case, BUSH will tell you what name
it will use for the resulting recombined file, and give you a chance to modify
it to something else. ?Q?g??9?Configuration ?9?Assistance in configuring BUSH for your hardware and personal preferences may
be obtained by selecting the 'Configuration' entry of the main menu.  Help
is also available in the documentation accompanying the program, including a
source listing of the portions of the program which may be configured by the
user.  The recommended method of configuring BUSH is to select the 'Self-
Configuration' entry of the 'Configuration' function menu, using BUSH to
patch itself with the desired values. ?Q?g???d?N}?(???G?Q??Y?͉BUSH's configuration function allows you to set several different values
in the program code.  Items which may be configured fall into the following
categories:

   Printer Configuration - Allows you to set up the program to properly
       set your printer for condensed print mode and condensed line spacing,
       and to reset it to normal mode when complete.

   BUSH Locations - You may specify the disk/user (DU) where the various
       component programs of BUSH reside.  BUSH will look in this DU before
       it searches the path, thus speeding up the operation.

   Miscellaneous Items - These configuration items include the types of files
       you want to be skipped during the backup operation and the maximum
       amount of space to be left blank on a backup disk if the next file is
       too large to fit in the remaining free space.

Detailed information on each of these items is provided in the section that
deals with configuration of that specific part of the program.

    [Press any key for next screen] ?Ɋ??Y?͉Note that the configuration menu items listed above (Printer, Location, and
Miscellaneous) do NOT modify the copy of BUSH stored on the disk.  These
menu items simply modify the current copy of BUSH.  This allows you to go
through the configuration process again as necessary until everything is
exactly as you want it.  When all configuration is completed, select the
'Self-Configuration' menu selection.  After verifying that you want to
permanently change the configuration of BUSH, the program will find itself
on the disk (first looking in the DU you have specified, then along the
path if that is unsuccessful), and, if the file  ?Y?͉ is found on the
disk, that file will be modified with the configuration information you
have selected.  Then, all future runs of the program (including the current
run, if you go from configuration into backup or restoration while still
within the program) will use the new configuration data. ?QH??͊?N0??A00:BUSH!G ?[????j2>?pl?QnIllegal disk!  Disk letters are A - P inclusive. ???Y?DS!Pf͊?N0??zH?*?? ~??w?*?? ~??(#~?w?͉

Any key to continue:  ?Ɋ*?? 	^#V?}?0 .|?P(?N(???H??:?g???d?Q?g???d?aY??H?N0??1?L|!$I?T(!?I?F(!?J?M(!eK?C??K??Y?Ӊ?E??E??The BUSH File Builder has reported insufficient TPA to build the
file list for the backup you have requested.  Try selecting fewer
source disks to be backed up at one time. The BUSH File Builder could not find the file containing the parameters to use
to build the list of files to back up.  It must be located on your configured
temporary-file disk, user area 15, or on disk A, also user area 15. The BUSH File Builder was unable to create the file containing the
list of files to back up, possibly to a full directory or a read-
only status on the temporary-file disk. The BUSH File Builder has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file.  L??͊?C2??A00:BUSH!S ?2±N|!6L?F(!?L?T(!?M?M(?KʔN!?M?C?yN?IThe BUSH File Sorter could not find the file containing the list of
files to back up.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH File Sorter has reported insufficient TPA to build the
file list for the backup you have requested.  Try selecting fewer
source disks to be backed up at one time. The BUSH File Sorter could not write the sorted file back to the disk. The BUSH File Sorter has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. ?N??͊?C4??A00:BUSH!B ?N??͊?C3??A00:BUSH!C 0 ?3ªP|?Cʻ!?N?F(
!?O?T(!P?IThe BUSH File Cruncher could not find the file containing the list of
files to crunch.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH File Cruncher has reported insufficient TPA to crunch the
files.  You must have at least a 46K TPA to operate the BUSH system. The BUSH File Cruncher has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. ?4?VU|?S?PR?IʗS?XʬT!?Q?F(
!?P?C(!?P?IThe BUSH Backup you requested is complete. The BUSH Backup Module has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. The BUSH Backup Module could not find the file containing the list of
files to back up.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. ??Y?͉The BUSH Backup will be resumed upon exit from your command string.
Remember, your command line should not cause any characters to be
sent to the list device if you are having a printed report generated. ????DS!Pf͊??zH?{>?2ދ????H??K?9?System command to execute:

 ?K??x?A?ڊy?+?͇?(>:?ڊ##~? (?ڊ#?>>?ڊ?Y???Y?͉You may resume the backup from the same point at any time by simply
restarting BUSH.  If the 'BUSH!FIL.LST' file list is on a memory
drive, you should copy it to drive A user area 15 for more permanent
storage.  BUSH will find it in either location when restarted. ??H??Y:2*f>͈??͉
The backup has been cancelled and the file list erased. *f???>???Hw??!6f??>͈?*f:????<??9?
Can't write the file 'BUSH!FIL.LST'! ???8??V|!pU?F(
!?V?C(!;V?IThe BUSH Restoration Module could not find the file containing the list
of files to restore.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH Restoration module has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. The BUSH Restoration you requested is complete. ??Y?͉BUSH has been shell-invoked with an invalid parameter list.  This happens
occasionally when running 'VFILER' or 'VMNEU' under BUSH.  If this
happens again without good reason, see 'In Case of Problems' in the
'BUSH.DOC' distribution file. ??H?9?     Select Pull Down Menu or Press <ESCAPE> to quit:  ??H ????!? ?????_ ??? ?pj?? *?}͈?|<f?<(?K?f?K?????>??؄(
x<2f?C????͉
Can't find  ?Y?͉, either in your selected DU or along the path.
Check that you have not moved the file to another DU. ??f?d??Ӊ?+Y!Nf>?͐???~??!mj?Ӊ??Ӊ?Y>?(????g??+??>?G͉?>?ڊ>
?ڊ͉????E??[????j	*>?pl?Qn  Hard Disk Backup/Restoration Utility

  Beta Test Version B        20 Nov 87

           by Steve Dirickson ?[????jI>?pl?QnBUSH, the BackUp SHell, is an integrated hard disk backup & restoration
utility for use under ZCPR3.  It provides a convenient, single-program
manager for the control of full or partial backups of hard disk files
to floppy disks, and for full or selective restoration of the archived
files.  A variety of file selection options are available, both during
the backup and when restoring files.  A backup operation may be inter-
rupted at any time and resumed later from the same point, with the same
file selections still in effect.  Miscellaneous options such as printer
logging and read-after-write verification are also available.
Extensive in-context help is available at all levels of operation.

    [Press any key for next screen] ?Ɋ>?pl?QnBUSH relies heavily on the facilities of the Z System.  As a minimum,
the following Z System modules must be present in your installation:

       Command Line Buffer
       Shell Stack
       External File Control Block (EXTFCB)
       Environment Descriptor, including TCAP segment

Since these are standard components in most ZCPR3 implementations,
BUSH should run on your system with no requirement for modifications.

    [Press any key for next screen] ?Ɋ>?pl?QnThis version of BUSH uses the graphics and windowing capabilities pro-
vided by the Z System GRWLIB/GRXLIB libraries to allow an attractive
and easy-to-use interface based on graphic displays and pull-down
menus. For those unfamiliar with these routines, basic instructions for
use are as follows:  use the cursor-control keys on your terminal to
select from among the various menus and menu entries.  When the desired
item is indicated for selection (as shown by       full intensity
video for this version of BUSH), press <Return> to activate that
menu selection.  Help may be requested from almost all menus, or by
entering '?' as input to most questions asked by the program.

    [Press any key for next screen] ?Ɋ>?pl?QnNote that, due to the amount of code required to provide the advanced
capabilities of BUSH, the program is made up of a main driver program,
BUSH.COM, and a series of 'subroutines', called 'BUSH!x.COM', where 'x'
is a number or letter.  These files must all be located either in a
specified DU (which may be selected by patching the BUSH.COM file--see
the section on Configuration), or they may be located anywhere along
the current path, and BUSH will find them there.  BUSH will load the
'subroutine' files as it needs them, as long as they can be found in
one of the two locations listed.  These subroutine programs pass
control back to BUSH via the shell stack.

    [Press any key to start] ?Ɋ>?
l?E?>?
l??? ͖? ͖? ?? ͖?͖?͖?	 ??
 ͖?͖???	 ͖? ͖?
 ͖?" ??#	͖?8͖?7͖?6
͖?-??+ ͖?, ͖?-
 ͖?	6 ??
7 ͖?7͖?6
͖?-͖?,??? ??L ͖?? ?Is this what you want?  A00:BUSH                         BUSH    COM                         BUSH!FILLST                        ?                                                                                                                                                                                                          Enter Letter of Drive(s) to Backup from as "A", "B", "ABDE", etc.:  Enter Letter of Floppy Drive to Backup to:   Backing up Drive(s):   to Floppy Drive:  Is this Correct (Y/N)?  Skip files that have been archived? (T3' bit set) (Y/N/?)?   Set archive attribute bit (T3') after backup? (Y/N/?)?   Backup all user areas (Y/N/?)?   Enter the desired user # (<CR> for current):    Print the backup disk index on the list device? (Y/N/?)?   Do read-after-write CRC verification of the backup data? (Y/N/?)?   Enter 8 Char Date for Reports (YY/MM/DD):          Enter the letter of the disk drive that will contain the
  backup disks from which you want to restore files:   Enter the filename/user code you want to recover:   Do you want to skip the recovery of files on the original
disk which have not been modified since the backup?   
  -??????????                        ?}???*:~~? #~?(>?26n*8~~?(>?27n*<~~?(>?28n* ? "n"#n"-n?????2l?>?2l??~#?0?2l?wk~???Sl??(#???sk:l<2l~#????y2lx2lek*l? ?????Hk??>?24n??l    ?24nͭ?!?~:l?(!f~"ck?      ͭ?:l>????????!?k =(= ???WINDOW TABLE                                                                                                                       ????8?Xo͏o(R}?wk~?(J?#~2Dl#~2El#~2Fl#~2Gl#~2l#~2l??l    ??N:l=2l?8!?k ~?8=w???w>???????>?25n????(9?8?2o͏o(,}?wk~?($#~<2?l#~<2?l#~==2?l#~==2?l??l    >????25n24n?????Sl?>?24n??wl?Sl?wl???~2m2FmG#~2m2GmO#~W:Fm?=2Fm#~_:Gm?=2Gm#?:4n?ė?ͭ?i`K?+?  ???[l:4n?(T:6n?(??*8m?*:~^#V??[l???7:7n? (?+?  *<~?n???n x? ?? ?????m? n?*8~?n? n:5n?(> ?'nA:8n?(3*>~~?#~g?o:}?(?+?? ??+??(	?(??m?????m??m?Sl???mY(x2m?m:4n?ĝ?ͳ???????*4~~?*6~~g?o?? ́????'n͌??????'n?~???\ #~?'n#?????  ????  
????O?  ?????     ?>?2o?>?2?o?>?2~o	?>?2}o???S?o~??jo??jo_͏o?jo{#^#V#???wk~??no#~?2Wo_#~<2Xo=?W?S?n?#~=?2?o#~=2?o<?_:?oW?+?  ?:}o? :~o? :o? :?o? >??{> ,?*?o~?(O? ͯ?C? ?؂:?
 ?Jo1? ?To(? :o? %?Jo:?o?({?(??'n:o? ?:?o? ?#?>??#??2}o2o2?o:~o?(
?2~o?(?????:Wo<2Wo(
?+?  :?o_?:?o??#~? ?+?###??:}o?(?~?(?#?uo        :l??:l??????wkN:l?(ey?#~G#~O#~Wx?W#~_y?_!?k>2l?2	l????:	lO?p???p?#~????oW#~???o_#~????o#~????o?????? ??:l=2l?>?????? ~?(?:l=2l ????_*
~~?(.>?()*~~?(&>?(!*~~?(>?(*~~?(>?(?{?bp>
>>>?????_:rp?{??2rp????ͭ?:rpO?2?s!?| ~???Dq? ??#~=2?p2Zq2wq ^#V????+? >>?'n?(?'n??Ɋ?(v??q?p(??(%?(??"?s ~??(? ?*?s????VqÓp???|??R}? ? 	??~?(?ÿp?? ?R~?(?????> ?rq?}q??1q?Vq>>?rq??ÿp???Vq?2?sͳ????:?s??*?s>????+? ͯ?> ?'n?(?'n??؂???+? ??'n???????!?s#~2?q2es<2ms##~2?q?2ns#~2?q:?qO:?q??P8:?qO>O?2?q2es<2ms?s??j   >?plͭ???? ??!s?w# ?S?s?(<?(?(?()?(	?>w#?>w#?w:?s?w ?#:?s?w ?##?>w#?ѯw!s#~? ͯ?> ?؂??y2Bs??=s??pr?(?(?(	?(?'n?#??Us?!s#?!?s~?(#??؂?^ ?#?V ?+x2Bs>>?=s??Ks??Ɋ? ??2?sy2?s>???-s??:rpO??? ??2?s?b?p(???s?(?#~? (? ?ͯ?> ?=s?Ks?#?#År+~?ʠr??r+~? (? ?ͯ?> ?=s?Ks?+?+År#~?ʠr?"s?>?
lͭ??????????Yn????'n????'n?y<<2ls2ds?؂?+?  ?݁;?    ???#?Row Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ???O!?| ~?(??(
?(y?(
?y?(#?*?ůw#~2?{#O~?G?+? > ?'n???y?(?y? 2}>???????+??R?????DM??~?!?| O~?(?? ?!?|~? ?w>%~??(?(????#~? ?þ|?"?sw?+?~??2Z|#w???O?#~?(?y???P?V|??|?+? ͯ?#~?(?'n?^|?؂?#q??   #~?(?(?(
?(?(?y?8A ?:?|?(?2?|{?Ox???#w#q?#q#p?>?2}?#????#~? ???[?s??                                                                       ? ???Ϳ??? "
~#"~#"~#"~####??}??}??}??}??}??}??}"~#"~#"~??}"~??}"~??}"~??}"~??}" ~??}""~??}"$~??}"&~??}"(~??}"*~??}",~??}".~??}"0~??}"2~??}"4~#"6~#"8~??}":~##"<~??}">~#"@~#"B~#"D~??}"F~??}"H~??}"J~??}"L~*~~?(>??????~#???\ ?#?                                                                                ??>?2?~?6  ?????!~N~ ??*&~"~"~"~" ~""~"$~>?2e~????? ?~2?~#~2?~#~2d~#~#???==_2?:d~==W2?:?~g:?~o?+?  :?~?(> ?ڊ>?2?́??*~?q??|2?}<2??2?ͷ:?~?(> ?ڊ?*~?q??|<2?}<?2??2???|<?2.}<?2/?+?  :?~?(> ?ڊ?* ~?q??|<?2?}<2?ͷ|<?2`}2a?+?  :?~?(> ?ڊ?*~?q??|?2?}2?>2???:?~?(?2?~͌?:e~?(!N~~ ???2e~????2???? ?;?    ?????    ????~2Q?#?*$~"N~?0*&~"$~*(~"$~??>?2?~ ??~25?#~26?#~2?#~#??_:?W:5?g:6?o:?~? 	:?? ́?{?|25?}26??+?  ?:?~?(> ?ڊ:Q??(	=(==(>??*$~?q??<(???? $% ?:Q??(
*N~"$~?2Q?:?~?(<(?2?~:?? ͌????????~2Q?#?*"~"N~*&~? *(~""~???>?2?~ ??~2??#~2??#~2??#~#??_:??W:??g:??o:?~? 	:?? ́?{?|2??}2???+?  ??:?~?(> ?ڊ*"~?q???? ,- ? ?:Q??(
*N~""~?2Q?:?~?(<(?2?~:?? ͌?????? ??*B~F*D~~?(?q?x?(?e??>?????~???\ #~?ڊ#????*~F*~???*~F*~??*F~?*H~~?(?q?>?????*J~??*L~?́??*~X́??*~Ó??* ~F́??*~=́??*2~4́??*0~+́??*,~"́??**~́??*.~́??*(~́??*&~~?(?q?>???͌??????V#^#??/???????V#^#??/??????~#?(?(	?(
?ڊ?ͯ???؂??????*Є~?!8 V###~?(?o????=???????*Є~?!8 V#ʹ?ʹ?~?(?o????=???????*Є~?!8  ʹ?ʹ?ʹ?~?(?o????=???????*Є~?!8  ʹ?ʹ?ʹ?ʹ?~?(?o????=????????*Є~?!8  ʹ?ʹ?ʹ?ʹ?ʹ?~?(?o????????*Є~?!8# ~2n?##ʹ?~?(????b?:n?̓?????=??????%-?2l?2m????%(?\(?ڊ??ڊ??d???D???2(x?3(\?.(P?+(8?>(#?r(?R(?i(	?I(?ڊ?>2m??>2l??? ?O?0??;??G? ???ڊ:l???2l??? ??ڊ?? ?d?Q?
?Q??0?ڊ?? ??? ?d ?Q?
 ?:l???5??(:m???:m????(??O:l???K??(i?a??(???0?8???z?0 y?(z?ڊ???   ~?(#?\ ~#?ڊ?zÃ?????O?(*?+ ~? >G?ͦ?? ??????ͬ????? ??~#???\ ?#??"?? "Є??"Є?        ??2ӄ??͗?2Ԅ2ք ?͗?2Մ2ׄ?ͷ?:ӄ?(͗?< (~?((̀??V?##(???x2ք_͗??y2ׄ_ ͗??Я=??:Ԅ_? :Մ_ ? :քG:ׄO???????}2҄ͷ?:҄?(̀?##??x? ?y? ??????????=?~?$ :Ԅ<=G#~+?$ :ՄO???? ???????Ї(#O~?(%X ??6 y?(?w# ???????????>?????>???????ȇ?(K?~#?( ?P?ȇ~?( ?;?ȇ?x?(??K+?x?(?w+ ????ȇ?w#? ??????????>??????>??????>???????? >G2????? ? ? ??????????? >G?? ? ???????/?###~?????????? ?????G??~?(# ????????~?;(
?(>;(
~#?(	 ??6 ?????? ??s#r?~#? ?????=??*? ^#V??????*? ~#fo~#fo~????*?$ ~#fo?|???*?? ?~?!8?=ɯ??*?" ~#fo?????*?- ~?????"??ͦ?(~?(?l?( ?F#N+??????##?*??~?}?O? # ?????ͦ?(?~?(ٸ 
#~+? ???? ?  ?*? ^#V#~?ѷ??*?	 ^#V#~?ѷ??ЇX G??*? ^#V#~#F?ѷ???*?+ ~??????*? ^#Vz?(	og6 ?????"??  ?>?2?2?$կ? ???~#?:?<??,ʗ??!ڗ??(??~?}??A?U??A??P????<2?#~?:ʘ????m?2?#~?:ʘ??M??G~#?:ʋ??0?M??
?M?Ox?????G?o?x? ?M?2?Ø??~?:?#~?,ʪ??!?>?¯?:?G:?O?>????܈~?.?ֈ#?܈õ????õ???????*???>????#?܈???#???> ????  ~?}????!?*??=??_??.??:??;??,??<??>ɾ?????d?F?
?F??0?d?????? ??P??H??_y??Z??{? y?0?d?{?w#??  ~?0ڍ??0?
ҍ???bk)))????_z? W#?k?{????2̉"ʉ?
? *ʉ#~#??o|? g6 ?:̉??ĉ?~??É?}?w#ö????+~#?   ??Ӊ????? ~#??'??	??͈??????
?????????؉ ?؉?؉y??؉?؉y?G>?G?O> ?ڊ???؉???????d?C?
?C??0?ڊ???? ??M??E??_y??Z???Z?{? y?0?ڊ{?????z?>.?ڊ?z??????? ?ڊ?z??? ?ڊ? ?ڊ??ڊ??ڊ?
?ڊ??ڊ??>^?ڊ??@?ڊ?????* .??/????????* .	֊??????????_? ?????????Y ?? ?X? ????????? ?? ? O?G?????H ? ???????W?A???????H ?6??????W?A?????r#x??A???O??}??A?_??[?_??y??>??y???O??0?w??:?w??y??>??y????a??{??_??????_ ? ?????*???>?                                                                                                 