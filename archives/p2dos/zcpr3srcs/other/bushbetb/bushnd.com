? Z3ENV ?TEMDSK>#SKPTYP>SKPTYPS>PRNHEXSYMBAK$$$TMPBADOUTSWPLBRARK               WASTE> #CRNTYP> CRNTYPS>MACZ80ASMBASPASDBFNDX      PTRNAME>Epson MX/FX Compatible         SETCONDENSED>          SET8LPI>0         RESET>@                   BUSHDU>   *	?c~ͨ|?@?"? ?E?*** No Shell Stack *** ?>?20 * "1 ???? ?* ??R?0'?E?*** Not enough TPA to run BUSH *** ??Ͷ?2#?ͤ??d??C?!? ? ??͗? ?E?*** No External FCB *** ?#?Bw ???%w ???'f ?C?!!wx?Aw#y
0?8??r#?0w:??/ 
?|ͅs?Vg??	??PVN0?p?̓????(:??>P(:?w!!w?| ?(Z?? ?E?*** Shell Stack Full *** ??E?*** Shell Stack Entry Size too small *** ?*? 	r#s??|ͅs??:??(:??Bʿ?R?A$?H?)5?CʊL?Vg???{           Select from the following BUSH Functions:

      B  Disk Backup
    R    File Restoration
      C  BUSH Configuration
    S    Z System Command
      H  Help
    X    Exit BUSH ???B?Z?R?a?CʊL?S?.V?H?)5?X(w??{You must select 'B', 'R', 'C', 'S', 'H', or 'X'. ????|ͅsä?||??{    Your Selection:   ?-??_???{?g?||?C???{Remember--infrequent backups make for frequent regrets! ??{????{           Select from the following Backup Function Options:

      B  Disk Backup
    I    Introduction to the Backup Function
      H  Help
    X    Exit to the main menu ???Bʿ?I(9?Hʜ?Xʤ??{You must select 'B', 'I', 'H', or 'X'. ??	g?E?The Backup function of BUSH allows you to back up one or more disks (usually
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

    [Press any key for next screen] ?-??	g?E?Unlike most previous CP/M-compatible backup utilities, BUSH can back up files
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

For assistance with any question, simply enter '?' as the input. ?+g?|ͅs?Z?|??{!BUSH Disk Backup ??{-Press '?' where shown for help. ?||???-?2B???{The file containing the list of files to be backed up already exists
from an interrupted backup at some earlier time.  Do you want to resume
that backup at the point where it was stopped before?  ??f? g(@?|?J?C\!qw??{?:ew>??????< 	>?w? ???"??ew?? ?=ɯ!"???{?Ͷ?2#???{?g??{?g??{!Tx??f???{?g?(?:?wG!?w%????e?~?Q0	?A8#??~U???{!?x??f???{?g?(??Q0??A8?2$???{	!?x?K?!%??K?!?x?K?:$??>???{
!?x??f? g ??{	?g?7??{?g??{!y??f???{?g??{ ????`??{-------------------------------------------------- ??{|You may either back up files from all user areas| ??{|on the disk, or only files from a specified user| ??{|area.  Answer 'Y' to back up all user areas, or | ??{|'N' to back up a single, selectable user area.  | ??{-------------------------------------------------- ?||??? g>??T??{!?y??f???{?g??{.? :??T!?w?߂G~? :#???S??{---------------------------------- ??{|Invalid User Number!  User areas| ??{|must be 0 -    inclusive.       | ??{---------------------------------- ?||??{?g??x2"???{!y??f???{?g??{<???????{---------------------------------------------------- ??{|Answer 'Y' to skip files that have the 'archive'  | ??{|attribute bit set, indicating that they have not  | ??{|been modified since the last full backup, or enter| ??{|'N' to back up all files, archived or not.        | ??{---------------------------------------------------- ?||?W? g26???{!Ey??f???{?g??{8???ª??{--------------------------------------------------- ??{|Answer 'Y' to set the 'archive' attribute on     | ??{|each file as it is backed up.  This will indicate| ??{|that these files have been archived, and will    | ??{|allow future incremental backups to skip them    | ??{|if they are not modified before the next backup. | ??{--------------------------------------------------- ?||??? g27???{!z??f???{?g??{C???????{
----------------------------------------------------------- ??{
|You may select optional read-after-write CRC verification| ??{
|of the data written to the backup disks.  This will make | ??{
|the backup take slightly under twice as long as a non-   | ??{
|verifying backup, but will ensure that the data on the   | ??{
|backup disk is the same as the source data.  Recommended | ??{
|for backups of critical files and for most full backups. | ??{
----------------------------------------------------------- ?||ð? g28???{!?y??f???{?g??{:????1??{--------------------------------------------------------------------- ??{|An indexed list of the files on the backup disks may be sent to the| ??{|system list device.  This list will consist of an index of all the | ??{|files which were backed up during this run, in order by source disk| ??{|and user #, and an index of the files placed on each backup disk,  | ??{|also sorted by user number, and alphabetically within each user.   | ??{--------------------------------------------------------------------- ?||??? g29???{!Tz??f??{?g??{2:?w????{------------------------------------ ??{|The date string must be exactly 8 | ??{|characters in the format YY/MM/DD.| ??{------------------------------------ ?||?7!?w:???e??b?a?J?a4????C1?p?A00:BUSH!F ?!!w ????>???"??!  "?wew"?? 	ew??=???{
Can't write the file 'BUSH!FIL.LST'! ???	g?E?The BUSH Backup function will ask you a series of questions about how you want
the backup done.  The prompt of the question will show you if you may enter
a '?' in answer to that question for help, i.e. the question will end with
something like '(Y/N/?)'.  Questions that do not have this help available are
those for which the answer should be obvious, such those asking for one or more
disk letters, or simple Yes/No questions. ?+g?|ͅs?Z???{           Select from the following Restoration Function Options:

      R  File Restoration
    I    Introduction to the Restoration Function
      H  Help
    X    Exit to the main menu ???R?A$?I(9?H?M4?Xʤ??{You must select 'R', 'I', 'H', or 'X'. ??	g?E?The file restoration function of BUSH will restore files from backup disks
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
question.  Answers to YES/NO questions may be entered in upper or lower case. ?+g?|ͅs?a?|??{BUSH File Restoration ??{!Press '?' in answer to any question for help. ?||????b?a??{?g??{!?z??f???{?g?(??A8?Q8?~U?2?22$??@2?{??{!{??f???{?g????`-:?w=?`-??{	------------------------------------------------------------- ??{		| Restoration User/Filename specifications are of the form  | ??{
	|                                                           | ??{	|     U:FILENAME.TYP                                        | ??{	|                                                           | ??{	| where                                                     | ??{	|                                                           | ??{	|U is the user number (one or two DECIMAL digits) from which| ??{	|  to restore the files.  If U is not specified, the current| ??{	|  user # will be used.  You may enter '?' for U to restore | ??{	|  files from all user areas on the backup disk.            | ??{	|FILENAME and TYP are the filename and type of the file(s)  | ??{	|  to restore.  Wildcard characters ('*' or '?') may be     | ??{	|  used in any position.                                    | ??{	|                                                           | ??{	|    [Press any key when ready for examples]                | ??{	------------------------------------------------------------- ?||?-???{		|Examples:                                                  | ??{	|  To restore the single file JUNK.DAT from user area 3 on  | ??{	|  the backup disk, enter                                   | ??{	|       3:JUNK.DAT                                          | ??{	|  To restore all PROG files from user area 7, enter        | ??{	|       7:PROG.*   (or 7:PROG.???)                          | ??{	|  To restore all .TXT files from all user areas, enter     | ??{	|       ?:*.TXT    (or ?:????????.TXT)                      | ??{	|  To restore all files on the backup disk (must have       | ??{	|  been a major disaster!), enter                           | ??{	|       ?:*.*                                               | ??{	|                                                           | ??{	|  (Using a form like these last two examples will not be   | ??{	|  confused with entering a single '?' to ask for help).    | ?||??$!?wK?͋???$y< :?=?? >?2"?!L?~#??(?:"??@2"?:?{2K???{!6{??f???{

?g??{	5?????1??{
--------------------------------------------------------------------------- ??{|You may elect to only restore any files that have been modified since the| ??{|backup was done.  This will allow you to restore the source disk to the  | ??{|same condition that existed at the end of the backup (plus any new files | ??{|created since then) without spending time copying a lot of files that    | ??{|have not been modified since the backup was done.  This option is based  | ??{|on your having specified that BUSH was to set the archive (T3') bit      | ??{|during the backup.  If a file on the backup disk that matches your se-   | ??{|lection criteria has a matching file name & type on the target disk that | ??{|still has the archive bit set (indicating that it has not been modified  | ??{|since the backup was done), that file will not be copied from the backup | ??{|disk.  To select this option, answer 'Y'.                                | ??{--------------------------------------------------------------------------- ?||Ü-? g2J??????f<?3??{---------------------------------------------- ??{|Can't find a file of the form '-NNNNNND.XXX'| ??{|on drive A user 0.  Check to ensure that you| ??{|have inserted the correct backup disk.      | ??{---------------------------------------------- ?||ß$=?f?	 	?3 ???##?~#?Ʉ ?~ͮ?(??f?22?32I???3 ????????????{?g??{Restoring the following from backup disk       created on 00/00/00 to drive A:
   Filename(s):  L??܃??{    User(s):  :"?G??(!?3??{ All x???{ ͣ???{!	w??f? g ??{?gß$?JʲVB4????C8?p?A00:BUSH!R ?	g?E?You may enter '?' in answer to any of the Restoration questions for
more information about what is wanted, except the question asking for the
letter of the backup drive, which should be self-evident. ?+g?|ͅs?a???{           Select from the following BUSH Help Options:

      G  General Help
    L    Details on backing up Large files
      P  Explanation of Printer output during Backup
    U    Specifying User #s and Filenames for Restoration
      F  Information on restoring Fragmented files
    C    How to Configure BUSH for your system
      I  Review of BUSH introductory material
    X    Exit to Main Menu ???G(f?Lʓ:?P??>?UʆB?FʢF?C?nJ?I?~L?Xʤ??{You must select 'G', 'L', 'P', 'U', 'F', 'C', 'I', or 'X'. ??|??{BUSH General Assistance ??{Specific help with most questions may be obtained by inputting '?' in answer
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
'Introduction' entry on the 'Help' function menu. ?+g?|ͅs?)5?|??{Backing Up Large Files ??{BUSH has the capability to back up files of almost any size, including files
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
modified name used for the fragment of the file placed on that backup disk. Ç:?|??{Hard Copy File Lists ??{BUSH can produce an indexed list of the files backed up during each operation
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
system, answer 'N' and the printout will be skipped. Ç:?|??{Restoration User/Filename specifications are of the form

     U:FILENAME.TYP

where

U is the user number (one or two DECIMAL digits) from which to
  restore the files.  If U is not specified, the current user # will
  be used.  You may enter '?' for U to restore files from all user
  areas on the backup disk.

FILENAME and TYP are the filename and type of the file(s) you want to
  restore.  Wildcard characters ('*' or '?') may be used in
  any position.

    [Press any key when ready for examples] ?-??|??{Examples:

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
entering a single '?' to ask for help). Ç:?|??{Restoring Fragmented Files ??{BUSH will automatically restore fragmented files produced by the backup
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
it to something else. Ç:?|??{Configuration ??{Assistance in configuring BUSH for your hardware and personal preferences may
be obtained by selecting the 'Configuration' entry of the main menu.  Help
is also available in the documentation accompanying the program, including a
source listing of the portions of the program which may be configured by the
user.  The recommended method of configuring BUSH is to select the 'Self-
Configuration' entry of the 'Configuration' function menu, using BUSH to
patch itself with the desired values. Ç:?|ͅs?Vg?)5???{           Select from the following Configuration Function Options:

      I  Introduction
    C    Configure BUSH for your system
      X  Exit to the main menu ???I(4?C?cU?Xʤ??{You must select 'I', 'C', or 'X'. ??	g?E?BUSH's configuration function allows you to set several different values
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

    [Press any key for next screen] ?-??	g?E?Note that the configuration menu items listed above (Printer, Location, and
Miscellaneous) do NOT modify the copy of BUSH stored on the disk.  These
menu items simply modify the current copy of BUSH.  This allows you to go
through the configuration process again as necessary until everything is
exactly as you want it.  When all configuration is completed, select the
'Self-Configuration' menu selection.  After verifying that you want to
permanently change the configuration of BUSH, the program will find itself
on the disk (first looking in the DU you have specified, then along the
path if that is unsuccessful), and, if the file  ??f?E? is found on the
disk, that file will be modified with the configuration information you
have selected.  Then, all future runs of the program (including the current
run, if you go from configuration into backup or restoration while still
within the program) will use the new configuration data. ?+g?|ͅsÊLsU????N0?p?A00:BUSH!G ??{-------------------------------------------------- ??{|Invalid disk!  Disk letters are A - P inclusive.| ??{-------------------------------------------------- ?||??	g?a!?w??N0?p?DV?*? ~??w?*? ~??(#~?w?E?

Any key to continue:  ?-?*? 	^#V?}?0 .|?P(?N(?ͷV?Í?|ͅsä?|ͅs?VgͷV?N0?p?1??Y|!?V?T(!?W?F(!?X?M(!/Y?CʺY?	g?K??????The BUSH File Builder has reported insufficient TPA to build the
file list for the backup you have requested.  Try selecting fewer
source disks to be backed up at one time. The BUSH File Builder could not find the file containing the parameters to use
to build the list of files to back up.  It must be located on your configured
temporary-file disk, user area 15, or on disk A, also user area 15. The BUSH File Builder was unable to create the file containing the
list of files to back up, possibly to a full directory or a read-
only status on the temporary-file disk. The BUSH File Builder has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. ?Y????C2?p?A00:BUSH!S ?2?{\|! Z?F(!?Z?T(!r[?M(?K?^\!?[?C?C\??VThe BUSH File Sorter could not find the file containing the list of
files to back up.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH File Sorter has reported insufficient TPA to build the
file list for the backup you have requested.  Try selecting fewer
source disks to be backed up at one time. The BUSH File Sorter could not write the sorted file back to the disk. The BUSH File Sorter has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. S\????C4?p?A00:BUSH!B n\????C3?p?A00:BUSH!C 0 ?3?t^|?C?$!?\?F(
!_]?T(!?]??VThe BUSH File Cruncher could not find the file containing the list of
files to crunch.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH File Cruncher has reported insufficient TPA to crunch the
files.  You must have at least a 46K TPA to operate the BUSH system. The BUSH File Cruncher has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. ?4? c|?S?`?I?aa?X?vb!T_?F(
!?^?C(!?^??VThe BUSH Backup you requested is complete. The BUSH Backup Module has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. The BUSH Backup Module could not find the file containing the list of
files to back up.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. ?	g?E?The BUSH Backup will be resumed upon exit from your command string.
Remember, your command line should not cause any characters to be
sent to the list device if you are having a printed report generated. ?i??a!?w???DV??>?2B??JʲV??Y??{System command to execute:

 ?K?x?A?>?yͣ????(>:?>?##~? (?>?#?>>?>???f??	g?E?You may resume the backup from the same point at any time by simply
restarting BUSH.  If the 'BUSH!FIL.LST' file list is on a memory
drive, you should copy it to drive A user area 15 for more permanent
storage.  BUSH will find it in either location when restarted. òV?	g:2ew>????E?
The backup has been cancelled and the file list erased. ew???>?ʲVw??!qw?{?>???ew:????<???{
Can't write the file 'BUSH!FIL.LST'! ???8??d|!:c?F(
!?d?C(!d??VThe BUSH Restoration Module could not find the file containing the list
of files to restore.  It must be located on your configured temporary-
file disk, user area 15, or on disk A, also user area 15. The BUSH Restoration module has returned an invalid status code.  If this
happens again, please see 'In Case of Problems' in the BUSH.DOC file. The BUSH Restoration you requested is complete. ?	g?E?BUSH has been shell-invoked with an invalid parameter list.  This happens
occasionally when running 'VFILER' or 'VMNEU' under BUSH.  If this
happens again without good reason, see 'In Case of Problems' in the
'BUSH.DOC' distribution file. òV??{     Select Pull Down Menu or Press <ESCAPE> to quit:  ??H ????!? ?????_ ??? ??{?? *?}???|<Aw?<(?K?Aw?K??M?>??|~(
x<2Aw?C???E?
Can't find  ??f?E?, either in your selected DU or along the path.
Check that you have not moved the file to another DU. ??Bw?܃?K???f!?w>?????~??!?{?K???K??Y>?(????|??{?>?G?-|>?>?>
?>??-|????{Press any key to continue: ?-???{?-|????{------------------------------------------ ??{|  Hard Disk Backup/Restoration Utility  | ??{|                                        | ??{|  Beta Test Version B        20 Nov 87  | ??{|                                        | ??{|           by Steve Dirickson           | ??{	------------------------------------------ ????{------------------------------------------------------------------------- ??{|BUSH, the BackUp SHell, is an integrated hard disk backup & restoration| ??{|utility for use under ZCPR3.  It provides a convenient, single-program | ??{|manager for the control of full or partial backups of hard disk files  | ??{|to floppy disks, and for full or selective restoration of the archived | ??{|files.  A variety of file selection options are available, both during | ??{|the backup and when restoring files.  A backup operation may be inter- | ??{|rupted at any time and resumed later from the same point, with the same| ??{|file selections still in effect.  Miscellaneous options such as printer| ??{|logging and read-after-write verification are also available.          | ??{|Extensive in-context help is available at all levels of operation.     | ??{|                                                                       | ??{|    [Press any key for next screen]                                    | ??{------------------------------------------------------------------------- ?-???{BUSH relies heavily on the facilities of the Z System.  As a minimum,   ??{the following Z System modules must be present in your installation:    ??{                                                                        ??{       Command Line Buffer                                              ??{       Shell Stack                                                      ??{       External File Control Block (EXTFCB)                             ??{       Environment Descriptor, including TCAP segment                   ??{                                                                        ??{Since these are standard components in most ZCPR3 implementations,      ??{BUSH should run on your system with no requirement for modifications.   ?-???{Note that, due to the amount of code required to provide the advanced   ??{capabilities of BUSH, the program is made up of a main driver program,  ??{BUSH.COM, and a series of 'subroutines', called 'BUSH!x.COM', where 'x' ??{is a number or letter.  These files must all be located either in a     ??{specified DU (which may be selected by patching the BUSH.COM file--see  ??{the section on Configuration), or they may be located anywhere along    ??{the current path, and BUSH will find them there.  BUSH will load the    ??{'subroutine' files as it needs them, as long as they can be found in    ??{one of the two locations listed.  These subroutine programs pass        ??{control back to BUSH via the shell stack.                               ??{    [Press any key to start]           ?-???{?||!?v͐s??{?g???||!?s??{~???K??  @@@@@@@@@@@@        @@          @@        @@@@@@@@@@        @@           @@
   @@         @@       @@          @@       @@        @@       @@           @@
   @@          @@      @@          @@      @@          @@      @@           @@
   @@          @@      @@          @@      @@                  @@           @@
   @@         @@       @@          @@       @@                 @@           @@
   @@@@@@@@@@@@        @@          @@        @@@@@@@@@@        @@@@@@@@@@@@@@@
   @@         @@       @@          @@                 @@       @@           @@
   @@          @@      @@          @@                  @@      @@           @@
   @@          @@      @@          @@      @@          @@      @@           @@
   @@         @@        @@        @@        @@        @@       @@           @@
   @@@@@@@@@@@@          @@@@@@@@@@          @@@@@@@@@@        @@           @@
  Is this what you want?  A00:BUSH                         BUSH    COM                         BUSH!FILLST                        ?                                                                                                                                                                                                          Enter Letter of Drive(s) to Backup from as "A", "B", "ABDE", etc.:  Enter Letter of Floppy Drive to Backup to:   Backing up Drive(s):   to Floppy Drive:  Is this Correct (Y/N)?  Skip files that have been archived? (T3' bit set) (Y/N/?)?   Set archive attribute bit (T3') after backup? (Y/N/?)?   Backup all user areas (Y/N/?)?   Enter the desired user # (<CR> for current):    Print the backup disk index on the list device? (Y/N/?)?   Do read-after-write CRC verification of the backup data? (Y/N/?)?   Enter 8 Char Date for Reports (YY/MM/DD):          Enter the letter of the disk drive that will contain the
  backup disks from which you want to restore files:   Enter the filename/user code you want to recover:   Do you want to skip the recovery of files on the original
disk which have not been modified since the backup?   
  -??????????                        ??V#^#???|??????V#^#???|?????~#?(?(	?(
?>???S|??||??????*t~~?!8 V###~?(?~???=???????*t~~?!8 V#?X~?X~~?(?~???=???????*t~~?!8  ?X~?X~?X~~?(?~???=???????*t~~?!8  ?X~?X~?X~?X~~?(?~???=????????*t~~?!8  ?X~?X~?X~?X~?X~~?(?~???????*t~~?!8# ~2~##?X~~?(????}:~?'~????=??????%-?2~2~???%(?\(?>???>???dʴ}?Dʴ}?2(x?3(\?.(P?+(8?>(#?r(?R(?i(	?I(?>??>2~?>2~???}O?0???}?G??}??>?:~??2~???}?>????}d??}
??}?0?>????}???}d ??}
 ?:~???}?(:~??:~???(??O:~???}?(i?a??(???0?8???z?0 y?(z?>????   ~?(#?\ ~#?>??z?'~????O?(*??+ ~? >G??J~? ???????P~???? ??~#???\ ?#??"??? "t~??"t~?        ??2w~???;2x~2z~ ??;2y~2{~??/?:w~?(?;< (~?((?$??~##(???x2z~_?;?y2{~_ ?;?Я=??:x~_? :y~_ ? :z~G:{~O???????}2v~?/?:v~?(?$##??x? ?y? ??????????=?~?$ :x~<=G#~+?$ :y~O???? ???????H?(#O~?(%X ??6 y?(?w# ???????????>?????>???????@??(K?~#?( ?P?@?~?( ?;?@??x?(??K+?x?(?w+ ????@??w#? ??????????>??????>??????>??????[? >G2????? ? ? ??????ͧ?###~????????p? ?????G??~?(# ?????̓?~?;(
?(>;(
~#?(	 ??6 ????p? ??s#r?~#? ?????=??*?? ^#V??????*?? ~#fo~#fo~????*??$ ~#fo?|???*??" ~#fo?????*??- ~?????"???(~?(???( ?F#N+??????##?*?~???O? # ???????(?~?(ٸ 
#~+? ???? ?  ?*?? ^#V#~?ѷ??*??	 ^#V#~?ѷ??H?X G??*?? ^#V#~#F?ѷ???*??+ ~??????*?? ^#Vz?(	og6 ?????"???  ?>?2}?2~?$կ???~#?:ʴ??,???!??à??~????A?́?A??ȁ???<2}?#~?:???????2~?#~?:???Ł?G~#?:???0?Ł?
?ŁOx?????G???x? ?Ł2~????~?:??#~?,?"??!?:?>??'?:}?G:~?O?>????T?~?.?N?#?T??-??t??-????t??*?f?>??h?#?T????#?l?> ?t??  ~?ᄷ??!ڢ??=??_??.??:??;??,??<??>ɾ?????d;?
;??0?܂????? ??Ȃ????_y??҂?{? y?0?܂{?w#??  ~?0???0?
????bk)))????_z? W#???{????2D?"B??
? *B?#~#??o|? g6 ?:D???<??~??;????w#?.????+~#?   ??K?????? ~#?ʟ??	ʉ?? ???v??
?{???{?????P? ?P??P?y??P??P?y?G>?G?O> ?>???P????????dͻ?
ͻ??0?>????? ??Ńý??_y??҃??҃{? y?0?>?{???????>.?>?????????? ?>?????? ?>?? ?>???>???>??
?>???>???>^?>???@?>??????* .	:???????????_? ?????????Y ?? ?X? ????????? ?? ? O?G?????H ̈́???????Wͥ???????H ͚??????Wͥ?????r#x?¥???O?????A?Ä?[?Ä?y??>??y???O??0?ۄ?:?ۄ?y??>??y????a??{??_??????_ ? ?????*?ɢ?                                                                                                                             