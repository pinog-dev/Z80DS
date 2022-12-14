? Z3ENV ?TEMDSK>#SKPTYP>SKPTYPS>PRNHEXSYMBAK$$$TMPBADOUTSWPLBRARK               WASTE> #CRNTYP> CRNTYPS>MACZ80ASMBASPASDBFNDX      PTRNAME>Epson MX/FX Compatible         SETCONDENSED>          SET8LPI>0         RESET>@                   BUSHDU>   *	?+?90? ?>?20 * "1 ?t-?%͸-??/?C^0??(ʹ(BUSH Configuration ʹ(Select from the following Configuration Function Options:

    P    Configuring BUSH for your printer
      L  Selecting BUSH's disk location
    M    Miscellaneous configuration items
      S  Self-configuring BUSH
    X    Exit to the main BUSH menu ??&?P(H?L??
?M??S?w?X?  ʹ(You must select 'P', 'L', 'M', 'S', or 'X'. ???'?Y.To configure BUSH for your printer, you will need the following codes:
   The codes to set the printer to condensed print mode.
   The codes to set it to a line spacing of 8 lines per inch.
   The code to return the printer to your desired default settings
      for character width and line spacing.
Printer control codes will be entered by typing the CHARACTER that is to be
sent to the printer.  This does not mean to type the hexadecimal or decimal
value that corresponds to the code.  Thus, to enter an ESCape character
into the output string, press the ESCape key.  The normal CP/M line editing
functions such as Control-X and Backspace, and the Control-C abort, are
disabled during input of the control strings.  If you need to include a
Carriage Return in the string, use a Backslash ('\') before it.  Likewise,
to enter a Backslash into the string, type it twice ('\\').  End the setup
string with a <Return>.  To keep the current value shown, simply press
<Return> when asked for the new value.  You will be asked to verify each
string before going on to the next, so you will have a chance to correct
errors in entering the string at that time.

You may abort the Printer Configuration now by pressing ESC.

    [Press any key when ready to continue, or ESC to abort] ͎/???
??(ͦ(??'ʹ(What is the name of your printer (max 30 characters)?
 ?)!?>2?$? $(?ͦ(??'ʹ(What is the string to set your printer into condensed print mode
(20 characters max)?   ?)!?>	2?$? $(?ͦ(??'ʹ(What is the string to set your printer to 8 lines per inch
(max 20 characters)?   ?)!?>2?$? $(?ͦ(??'ͦ(?)ʹ(What is the string to restore your printer to normal values of character width
and line spacing (30 characters max)?
 ?)!?>2?$? $?
ʹ(That completes the Printer configuration. ?8-??'?Y.The various component programs of the BackUp SHell may be located in any
user area of any disk, as long as they can be found by searching along the
path.  However, BUSH will operate faster if it can go directly to the DU
containing the component programs of the system.

Do you want to specify a drive/user where the various BUSH programs will be
stored?  ͸'??'ʡʹ(
Enter the disk/user where the BUSH programs will be stored in the form

      DUU:

where D is the disk designator letter (A-P) and UU is the user number, in
the form of one or two DECIMAL digits:       !?06>??.ͦ(??'ͦ(!A0D'?h+?W%?C?ʹ(Your selected DU for BUSH is:   :??A͟/:?ͷ.>:͟/!(͵'??' ͦ(

??'?P??'?Y.You may also specify the disk where BUSH will place the list of files to
back up, and other temporary files.  If you have a memory disk in your
system, this will speed up the operation of BUSH backups significantly.
If you do not specify a disk, disk A, user area 15 will be used.

Do you want to specify the drive for the temporary files?  ͸'??'?ʹ(
Enter the disk letter (A - P) to use for temporary files:    ͸'?ͦ(??'ͦ(??A0?&??Q0??2ʹ(The disk you have selected for temporary files is  :?@͟/>.͟/!(͵'??' ͦ(

??'ͦ(
?	ʹ(That completes the BUSH Location configuration. ?8-??'?Y.The following miscellaneous items may be configured to your individual
specifications:

   The types of files that will be skipped during the backup.
   The types of files that will be automatically compressed if they
      are found in the list of files to be backed up.
   The maximum amount of blank space that will be left on the backup
      disk if the next file in the list will not fit.

You will be shown the current values of these items and given a chance
to change the values to something else, or to leave them as they are.

    [Press any key when ready to continue] ͎/??(ʹ(You probably do not want to have certain types of files copied to the
backup disks during your routine backups.  These file types include those
that are intermediate or temporary files, such as HEX, PRN, BAD, REL, and
$$$ file types, and those that you maintain on separate backup disks, like
LBR and ARC/ARK files. ͦ(??'ʹ(The current list of file types to be excluded from the backup is: !$:?m#ʹ(Press ESC if this is what you want, anything else to change the list:  ͎/???ͦ(??'ͦ(??'ʹ(Input the new list of exclusion file types.  Each entry is 3 characters
long, padded with spaces if necessary.  To change an entry, simply type over
the current entry.  Typing a hyphen as the first character of an entry will
delete that and all following entries.  Enter <ESC> when done with the list. ͦ(?)!$ͪ#ͦ(??'ì??'?Y.BUSH has the capability to recognize that certain file types may be
very large files, and to use CRUNCH.COM (only) to compress them
to a more economical (in terms of storage space) size.  Such files
as MAC, Z80, and ASM assembler source files, other language files
(BAS, PAS), and data base files (DBF), are candidates for compression.

You may select the file types to be compressed before being backed up.
The file list will be rebuilt after all compressions are complete.
CRUNCH.COM must have that name and must be located somewhere along your path.

IMPORTANT NOTE:  It is vital to know that, to ensure that the original
uncompressed source file is not included in the file list again, THE
ORIGINAL SOURCE FILE IS ERASED after the compression is complete.
So, you should use this capability carefully, and only after ensuring
other backup arrangements, until you are familiar with its operation.
Don't let BUSH backups cause lost files!

Press ESC to abort this item without selecting any file types for
compression, or any other key to select types to be compressed:  ͎/????(ͦ(??'ʹ(The current list of file types to be compressed is: !m:d	?m#ʹ(Press ESC if this is what you want, anything else to change the list:  ͎/??ʹ(Input the new list of file types to be compressed.  Each entry is 3 characters
long, padded with spaces if necessary.  To change an entry, simply type over
the current entry.  Typing a hyphen as the first character of an entry will
delete that and all following entries.  Enter <ESC> when done with the list. ͦ(?)ͦ(?)!md	ͪ#???'?Y.BUSH tries to minimize the amount of wasted space on the backup
disk.  If the next file to be backed up is larger than the amount
of free space remaining on the disk, but that free space is larger
than a particular value, BUSH will break up the file into fragments
and will put the first fragment on the disk in the remaining free
space.  If the remaining free space is smaller than the selected
amount, BUSH will go on to the next disk to start the file. ͦ(??'ʹ(The current value of the maximum amount of wasted space on the
backup disk is  *Z??.?Y.K bytes.  Press ESC to leave this value as is,
or any other key to select a new value:  ͎/??7ʹ(Enter the new value for the maximum amount of wasted space as a
DECIMAL number of Kbytes (0 - 65535):       !?06?.!A0??-?SZ??ʹ(That completes the Miscellaneous Item configuration. ?8-?)??'?Y.After you have completed all desired configuration selections, you may make
your settings permanent by modifying the  ͪ'?Y. program stored on disk to
include your desired configuration.  BUSH will look for itself first in the
disk/user area you have selected, and, if not found there, it will search
along the path.  You will be informed where the copy of  ͪ'?Y. that is
being configured was found, and will be given a chance to stop configuration
of that file if you do not want it changed.

Do you want to make your selected configuration permanent?  ͸'??'?)ͦ(??&?)(?< '?Y.Unable to open the file!  Sorry. ?)?Y.Configuring file  ͪ'?Y. located in disk/user  :(?@͟/?0ͷ.?Y.:.
Is this what you want to do?  ͸'??'?)!(?!#?Y.
The disk copy of BUSH has been configured.
 !B("b0:(2d0~?(ue0? ??!p0???/?Y.
Configuring BUSH module  ??=/>.͟/?< #?Y.  -  Unable to open the file! !d0?!#*b0 "b0??)"k# ????[k#???!? ?<(???Y.
Error while configuring the file! ?  Oͦ(
͐#?Y.   ~#͟/~#͟/~#͟/????y??_ x??(	_??G6-#???????y?O2?#ͦ(
?͎/?(G?(7?(? >͟/> ͟/>͟/+??a8?{0?_͟/w#?͎/?(??(?x?(#?????? ? ~?-(??q???Y.( Currently  ?<%?Y. ) :  H!?0͎/?a/?\({???$w#?͎/???$??'ʹ(------------------------- ʹ(|The string is too long!| ʹ(------------------------- ?S)???͎/G>͟/x? ?Y.<Return> ?P$?a/?P$???'?y? =??ʹ( The string you have entered is:  6 !?0?<%!(͵'??'??y?O !?0?????~#???(?a/??Y.<Return> ?ʹ(----------------------------------------- ʹ(|Invalid DU!  Disk letters must be A - P| ʹ(|and user numbers 0 -    inclusive.     | ʹ(----------------------------------------- ?S)?Pʹ(-------------------------------------------------- ʹ(|Invalid disk!  Disk letters are A - P inclusive.| ʹ(-------------------------------------------------- ?S)?ʹ(    Your Selection:   ?S)͎/?_ß/*?}?(0|<(?<(?K?(?K^0ͮ/>??q,(
x<2(?C`0??Y.
Can't find  ͪ'?Y., either in your selected DU or along the path.
Check that you have not moved the file to another DU. ??(?=/?_.??'!?(>??.??~??!(?_.??_.?Y>?(?????(ͦ(?>?G?)>͟/>
͟/?)??ͦ(?Is this what you want?  
  BUSH    COM                        BUSH!B  COMBUSH!C  COMBUSH!F  COMBUSH!G  COMBUSH!R  COMBUSH!S  COM                                 ??V#^#??)??????V#^#??)?????~#?(?(	?(
͟/??*)??S)??????* +~?!8 V###~?(Ϳ*???=???????* +~?!8 V#?+?+~?(Ϳ*???=???????* +~?!8  ?+?+?+~?(Ϳ*???=???????* +~?!8  ?+?+?+?+~?(Ϳ*???=????????* +~?!8# ~2?*##?+~?(???Ͳ):?*??*????=??????%-?2?*2?*???%(?\(͟/?͟/??d?`*?D?`*?2(x?3(\?.(P?+(8?>(#?r(?R(?i(	?I(͟/?>2?*?>2?*??p*O?0?͋*?G?p*?͟/:?*??2?*??p*͟/??p*d͡*
͡*?0͟/??p*??p*d ͡*
 ?:?*???*?(:?*??:?*???(??O:?*???*?(i?a??(???0?8???z?0 y?(z͟/???   ~?(#?\ ~#͟/?z??*????O?(*?-+ ~? >G???*? ????????*???? ??~#???\ ?#??"?-? " +??" +?  ??2`,a,??T+?:`,?(?h+ ??+ ???+ ?h+(?>??????,(# ??>  ?????X-(Z??/x2i,y2j,?f-G~?A8?0C2i,#?,(,?U,85??,(?U,8'# ??, ??t-O?),8?02j,:i,G:j,O???=?????????͂-( ??(??? # ???(? 	??????OG???=?~?0?!8?=??_??.??:??,??<??>ȷ??;ɯ?? ~?,(#?U,8Wy88?88?8O ?y????7??0??
0??7?                 ??2l,???0-2m,2o, ??0-2n,2p,?͓-:l,?(?0-< (~?((?-??,##(???x2o,_?0-?y2p,_ ?0-?Я=??:m,_? :n,_ ? :o,G:p,O???????}2k,͓-:k,?(?-##??x? ?y? ??????????=?~?$ :m,<=G#~+?$ :n,O???? ??????ͤ- >G2????? ? ? ???????*?-. ~??????*?-, ~??????*?-- ~?????*?- ^#V#~?ѷ??*?-	 ^#V#~?ѷ???*?-+ ~????"?-?  ????d??-
??-?0??-????? ???-??-?_y???-?{? y?0??-{?w#??  ~?0?.?0?
?.??bk)))????_z? W#??-{????2X."V.?
? *V.#~#??o|? g6 ?:X.??P.?~??O.?0w#?B.???+~#?   ??_.????? ~#?ʳ.?	ʝ.?a/?ʊ.?
ʏ.?ʏ.?ʓ.?d. ?d.?d.y??d.?d.y?G>?G?O> ͟/©.?d.???????d??.
??.?0͟/???? ???.??.?_y???.???.{? y?0͟/{?????'?/??/d ?/
 ?/}?0͟/????? }?o|?g?(/?/}?o|?gy??5/?? y?0ß/????S/>.͟/?S/?????? ğ/?S/?? ҟ/? ʟ/?ʟ/?ʟ/?
ʟ/?ʟ/??>^͟/??@͟/?????* .	?/??????????_? ?????????Y ?? ?X? ????????? ?? ? O?G?????H ??/??????W?0??????H ??/?????W?0????r#x??0???a??{??_????? ? ?????????_ ? ?????*=0Ɉ0                                                                 