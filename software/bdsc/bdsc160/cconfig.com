* �  ��  �K�÷ P�N,Qó÷������Ä�=�]�zÌæÑ��2͵��^#V#�*~#fo��^#� *~#fo��^#V#�*n��^#� *n��^#V#��	~#fo��^#��& 	~#fo�! �+�!  �#�! �+�!  �#�! �+�! �+� ��  �� ��  �� �� ��}��|���z��{���|��}���|���z��7��|���|��7�z��Z��Z��)��|/g}/o#�  |����͉��k|/g}/o#���k��o&�9�DM��:����~#f|��/g}/o#:�<2����q��DM!  x��xGyO҃�)��v|���͔`i��|���)Ö�x  ���ڷ�z/W{/_ѯzW{_�=��yOxGæ�2��Z��Z�͉�O|���}���ȯ|g}o����)��|/g}/o#�z/W{/_�! 9~#fo�! �! �!
 �! �! �! �p! 9�~#�A���"�!U�*"�!�"�!�Y"h>�2~>�2�>�2�2��>� � ʉ� !� �F#x� ��~#�!� W�2�~#� ʳ����"��2���+}|~#����G:��x����"���2�+w#� ��+6 #ó�!�6 #� �A�2�2g>�                                                                                         *��          !  9"�* ����*���*�*��|��+�Ü�� W�2�!���>����o& �����=�¹�	�
�ڳ~�2���������� ���56 ��!  �+�W���?��_ !�~�7�z�?������:> �3���@w#�Y�q�.�D�Y�w w#w#w#w�����*>?�|���zw#�Z�����q> w#�|��������ң� �� �2����& ��0Ox������G��Ҧ�/���Ï�xØ���.7��:7��7��!��a��{�� �� ���	����0��:?�ŷO�"�!��y����$ ��7�����o& ))T])))�!�y������ �� 2����_ � ���������:��Rzw#�Z�����q> w#�|��������ң�                                                                                                              �&:�A��w/�* B|���:�A��^1:�A���^1��4�04�4�5-~��,#�:���&:�A�>�2�A>2�A�&�-��,H�w%��č�y���'ҟ'�T4�-� .͎ú&�T4:�A���(:�%��(�I(�(�^1�2�A�2�A:�%���?(�>2�A�!  �;(#" B����nî:�A��^1:�A��n(�* B|�!  �f(#" B���2�:�A�ʀ(>2�A��_(:�A��ʚ(�4�0ı8 6̱8é(�4�0ı86̱8�6ͱ8>$2�A>2�A��:����(;%��(����(###~;%+++��(�ͮ�4>�v�T4���b)��%�:�A��	)ͧ+�5-�2�A�$)��éÝB��@�BðJá=óJ�9�C�fB��J�?�<C�hC�!��9�DM͂!�
�ͅ�!�
�ͅ�!'�ͅ�!f�ͅ�!��ͅ�!��ͅ�!�ͅ�!`�ͅ�!  �͈�|��	!��ͅ�͋!��ͅ�!��ͅ�!�ͅ�!N�ͅ�!��ͅ�͎!&Q�͑�͔!��ͅ�!��ͅ�!�ͅ�!�P�͝��͚��͗�}2%Q}�q�~	�aʷ	�3
*P|�ʬ	!�͈�|�ʡ	͠!.�ͅ�é	!Q�ͅ�ô	!q�ͅ�͋!��ͅ�!��ͅ�`i�w#w͐ 
 ���0
!��ͅ�͐ Pn}2
P͐ )P~#fo�!

�! 9~#fo��*
P�͐ Pn�}��$
! "P`i^#Vr+s��	�?	*%Q& �ͣ�|��b
!�P�ͦ��`is#rz�b
͐ 
 ���m
!��ͅ��?	!��ͅ�͐ Pn}2
P͐ )P~#fo�!�
�! 9~#fo��*
P�͐ Pn�}�ʷ
! "P�?	33��
BDS C v1.6 Automatic Configuration System

 This program makes physical changes to the files CC.COM and CLINK.COM so as to customize their operation for your specific file system and operating system environment. Do NOT run this program until you have backed up your master BDS C distribution disks and physically removed them from your disk drives.

 Have you backed up your master disks and placed copies of CC.COM and CLINK.COM in the currently logged directory? Then do so now, and run this program again when ready
 

Then we are ready to begin.
 
	Note:	Typing ^Z-<CR> (control-Z and a return) in
 		response to any question in the option dialogue
 		causes the option value to remain unchanged and
 		control to return to the main menu.

 Type the code number of the option you wish to change, 'all' to go through the entire list, or 'q' to quit:  
Write changes to disk? New CC.COM and CLINK.COM written.
 Old configuration left intact.
 No changes specified.
 
	Note: ^Z <CR> returns to the main menu at any time.

 

 Invalid selection. Try again... 
 ����@!����!Q����!�����!�����!�����
Note: The term "currently logged", as used in the following dialogue, refers to the disk drive and user area that will be currently logged at the time CC.COM or CLINK.COM is invoked, not necessarily the drive and user area currently logged right now while you run CCONFIG.

 �=��@���#D�ZD�fB�_8!���+��.!���+�!��+�!T��+�!���+�!���+�!���+�!&��+�!�P��:���7���4�}2%Q& ��1�|�ʲ*%Q& ��}2P÷>�2P�DEFAULT LIBRARY DISK DRIVE:
 The default library disk drive is the drive that CC and CLINK automatically search for system header files and default library object modules. If you do not choose a specific drive, then the currently logged disk at the time of command invokation will be searched by default. Enter either an explicit default library disk drive, or type RETURN to always search the currently logged drive:  �p��@���<C�fB�_8�hC!���^��a!���^�!<��^�!}��^�!���^�!���^�!��^�!^��^�!�P��j���g���d�|���!�P��m�}2P��>�2P�DEFAULT LIBRARY USER AREA:
 The default library user area is the user area that CC and CLINK automatically search for system header files and default library object modules. If you don't choose a specific user area, then the currently logged user area at the time of command invokation will be searched by default.
 Enter either an explicit default library user area, or type RETURN to always search the currently logged user area:  å��@���#D�ZD�fB�_8!�͓�͖!8�͓�!t�͓�!��͓�!��͓�!2�͓�!p�͓�!�P�͢��͟��͜�}2%Q& �͙�|��*%Q& ��}2P�>�2P�"SUBMIT FILE" DRIVE SELECTION:
 In order to terminate a batch ("submit") file sequence upon fatal compiler or linker error, CC and CLINK must know which disk drive contains the temporary scratch file used by SUBMIT.COM and similar utilities. This will usually be either drive A: or the currently logged drive. Enter the drive name now, or type RETURN to use the "currently logged drive":  æ��@Û8!��͠�!�͠�!\�͠�!��͠�!��͠�!�͠�!Y�͠�!��͠�!��͠�!�͠�ͣ}2P�CONSOLE POLLING FOR CONTROL-C:
 When console polling is enabled, CC and CLINK will constantly check the console keyboard during their operation to see if control-C has been typed. If control-C is detected, the command is immedieatly aborted and control returns to CP/M command level. Any characters OTHER than control-C are ignored and discarded. Therefore, if your system supports keyboard "type-ahead" and you want to take advantage of that feature during CC or CLINK operation, you may not want console-polling activated.
 Do you wish to have console-polling take place?  �F��@Û8!���@�!��@�!I��@�!���@�!���@�!��@�!C��@�!���@�!���@�!	��@�!K��@�!���@�!���@�!���@�!9��@�!I��@�!���@�!���@�!��@��C|�͝}2P�WARM-BOOT SUPPRESSION CONTROL:
 CC and CLINK have the ability to return to CP/M command level following completion of their tasks without having to perform a "warm-boot" (the re-loading of the CP/M Console Command Processor (CCP) from disk). They take advantage of this ability any time a compilation or linkage does not require the use of the memory occupied by the CCP. This "warm-boot suppression" results in a speedier return to command level.
On some CP/M-like systems, though, this feature doesn't work because a valid stack pointer is never provided to transient commands by the operating system. One symptom is that the command will appear to terminate normally, but instead of returning to command level, the system hangs. In the case of CC.COM, for example, a .CRL file may be successfully generated before the crash.
If something like this happens on your system, you must a) DISABLE warm-boot suppression to insure clean command termination, and b) don't use the -n CLINK option when the target system cannot handle warm-boot suppression. 
Do you want warm-boot suppression?  �4��@Û8!���.�!���.�!��.�!I��.�!���.�!���.�!���.�! ��.�!X ��.�!� ��.�!� ��.�!!��.�!J!��.�!�!��.�!�!��.��1}2P�PARITY BIT CONTROL:
 This option deals with the handling of parity bits (the high-order bit of ASCII-encoded text characters) by the compiler during compilation. Normally, CC strips (forces to zero) the parity bits from C source input files. The only case where this might be undesireable is when a special character set, utilizing the high-order bit as part of the character representation, is being used. Bilingual or extended character sets, for example, may use the parity bit in this way. If this is the case in your situation, then do not enable parity-bit stripping. Otherwise, you should let the parity bits be stripped, so that the compiler will not be confused by source files produced under certain text editors that use the parity bit for formatting information.
 Do you wish to let parity bits be stripped?  ��!��@Û8!�"���!�!�"���!�!�"���!�!4#���!�!q#���!�!�#���!�!�#���!�!*$���!�!h$���!�!�$���!�!�$���!�!#%���!�!c%���!�!�%���!�!�%���!�!&���!�!J&���!�!�&���!�!�&���!�!�&���!�!5'���!���!}2P�USER-AREA SWITCHING CONTROL:
 Normally CC and CLINK expect to be running on a CP/M (or CP/M-like) system supporting "user areas" (the subdivision of disk drive directories into 32 partitions numbered 0-31.) The upshot is that specific user areas may be directly addressed by CC and CLINK during the course of their operations, thus possibly creating a conflict between themselves and certain third-party command processors (MicroShell, ZCPR3, etc.) that maintain an automatic search path mechanism for data files. If you are running such a utility on your system and you notice that files aren't being correctly located by CC and CLINK, try disabling user-area switching with this option. The effect will be that CC and CLINK will no longer perform any user-area operations at all, allowing your own command processor to determine the default user areas for file operations.
 If your system does not support user areas at all, then you definitely want to disable user-area switching here.
 
(Note: In order to disable user-area switching in C-generated COM files, it is necessary to customize the run-time package by changing the value of the NOUSER symbol in CCC.ASM.)
 
Do you wish to disable user-area switching?  �l'��@Û8!�'��f'�!�'��f'�!<(��f'�!v(��f'�!�(��f'�!�(��f'�!6)��f'�!v)��f'�!�)��f'�!�)��f'�!-*��f'�!;*��f'�!|*��f'��i'}2P�RED EDITOR ERROR FILE CONTROL:
 CC can write out an error file containing information about the location and nature of source file errors detected during the course of an unsuccessful compilation. The RED text editor recognizes this file and makes the editing of those errors very convenient. If you wish, you can have CC automatically write out such an error file whenever source file errors are detected. If you choose not to have CC write the file out automatically every time, you may still choose to have the file written during individual compilations through use of the CC command-line option "-w".
 Do you wish to have the RED error file written out automatically every time compilation errors are detected?  û*��@�<C�fB�_8�hC!Z+�ͬ*�!y+�ͬ*�!�+�ͬ*�!�+�ͬ*�!*,�ͬ*�!j,�ͬ*�!�,�ͬ*�!�,�ͬ*�!(-�ͬ*�!e-�ͬ*�!�-�ͬ*�!�-�ͬ*�!%.�ͬ*�!c.�ͬ*�!�P�͵*��Ͳ*��ͯ*�|��Q+!�P�͸*�}2P�Y+!y.�ͬ*��CDB RESTART VECTOR SELECTION:
 The CDB Debugger allows interactive debugging of C programs through the use of an interrupt vector down in low system memory, just as DDT or SID uses restart 7. As distributed, CDB is compiled to use RST 6 for this purpose, and the compiler correspondingly presumes a default of -k6 when the -k option is given without an argument. If you wish to change the restart vector used by CDB, then you must recompile CDB according to the CDB documentation to change its default restart location.
By choosing a new restart vector value HERE, you are only telling CC.COM what the new default is, so that you don't have to bother specifying it when using the -k option on the CC command line.
 Enter the restart vector (1-7) you wish to have CC use as the default -k argument:  Value left unchanged.
 â.��@�}A�ZD��JÛ8�!��9�DM!�0�͓.�!�0�͓.�!�0�͓.�!01�͓.�!m1�͓.�!�1�͓.�!�1�͓.�!�1�͓.�!2�͓.�!;2�͓.�!f2�͓.�!�2�͓.�!�2�͓.�!�2�͓.�!43�͓.�!m3�͓.�!�3�͓.�!�3�͓.�!4�͓.�͖.!"4�͓.�!c4�͓.�!g4�͓.�!�4�͓.�!�4�͓.�! 5�͓.�!:5�͓.�!x5�͓.�!�5�͓.�!�5�͓.�!�5�͓.�!%6�͓.�!Z6�͓.�!�6�͓.�!�6�͓.�͖.�͙.��`is{�F��/�S��/�E��/Ë0> 2PÖ0>�2PÖ0>�2P!�6�͓.�!7�͓.�!T7�͓.�!�7�͓.�!�7�͓.�!�7�͓.�!8�͓.�! 	6#6 ͐ ��҈0!78�͓.�͐0 �͜.�!<8�͓.�*P�͟.�͐+���� |�g}�o}2P! 	^#Vr+s�20Ö0!@8�͓.�í/333��CODE OPTIMIZATION CONTROL:
 Compiled BDS C code can be optimized for either speed or space, through the use of several unique 'tuning' controls. The configuration you are about to perform sets only the default optimization mode; any compilation may be individually tailored by using the -o and -z CC command-line options.

 There are three code optimization modes for BDS C:  'fast', 'short' and 'extended-short'.

 FAST mode causes all code sequences to run as fast as possible; this can be achieved by using the "-o" and "-e <xxxx>" CC command-line options while making all variables in the program external.
 SHORT mode replaces several common code sequences by calls to equivalent subroutines in the run-time package. This slows execution down a bit, due to the subroutine overhead, but saves considerable space. This is the default mode set in the distribution package.
 (Press RETURN to continue) EXTENDED-SHORT mode does everything that simple-short mode does, but also takes advantage of any unused system restart vectors that may be available on a SPECIFIC target computer system. This is accomplished by collapsing certain very common, short (3-6 byte) code sequences into 1-byte RST instructions. To use this mode you must first know which RST vectors are available on the target system. Then you change the appropriate symbols (ZOPT1-ZOPT7) in the run-time package source file and re-assemble the run-time package. Finally, the "-z" CC command-line option is used to tell CC which RST vectors are available.
 
Please choose the default optimization mode:
 Fast (F), Short (S), or Extended-Short (E):  For extended mode, you need to specifiy those restart vectors that are guaranteed to be unused by any other software on the target system. Any restart vector except RST 0 may be used, i.e., RST 1 through RST 7.
 Answer 'y' or 'n' to each query to specify if the respective RST vector is available for extended-short RST optimization:
 RST   ?  Invalid selection. Try again:
 �k8��J�fB�4K�!  9DM͐��b8�͐��e8���|�8!&Q��h8�͐��ê8�ZD�fB�_8��@�!��9�DM! "P!�P�ͤ8��͡8��͞8��`is{�Y��8! ��8��8`in}�N��8!  ��8!�8�ͧ8�ò83��Please answer 'yes' or 'no'... ?  �%9��@ÑD�!��9�DM!*;��9�!e;��9�!�;��9�!�;��9�*P}���a9!�;��9��t9*P& A �!�;��"9��!�;��9�*P}��9!�;��9�ß9*P& �!<��"9��!<��9�*P}��»9!4<��9���9*P& A �!K<��"9��!U<��9�*P}���9!o<��9���9!w<��9�!�<��9�*P}��:!�<��9��:!�<��9�!�<��9�*P}��/:!�<��9��7:!�<��9�!�<��9�*P}��R:!�<��9��Z:!�<��9�!�<��9�*P}��u:!=��9��}:!
=��9�!=��9�*P}�:!&=��9��;!J=��9�*P}��´:!W=��9��;!c=��9�`i6#6 ͐  ���;*P�͐ + ��� |�g}�o|���:͐ �!u=��"9��`i^#Vr+s��:!y=��9�*P& �!�=��"9��!�=��9�33��
The configuration options are currently set as follows:

  Code#	Option			 Current Setting
  -----	------			 --------------- 
  0:	Default Drive		 Currently logged drive Drive %c: 
  1:	Default User Area	 Currently logged user area User %d 
  2:	Submit File Drive	 Currently logged drive Drive %c: 
  3:	Console Interrupts	 Enabled Disabled 
  4:	Suppress Warm Boot?	 No Yes 
  5:	Strip Source Parity?	 Yes No 
  6:	Recognize User Areas?	 No Yes 
  7:	Write RED Error File?	 Yes No 
  8:	Optimization Mode	 Fast Execution, Long Code Sequences Short Code,  No Restarts Use RST vectors:  %d  
  9:	Default CDB RST Vector	 RST %d 

 ó=�RK��@ðJúK�cL! �!0>�ͤ=��")P#|���=! �!7>�ͤ=��"+P#|���=!A>�ͧ=�!w>�ͧ=�!�>�ͧ=�ͪ=! �!-P�*)P�ͭ=���+|��>!�>�ͧ=�ͪ=!
 �!P�!�P�Ͱ=����CC.COM CLINK.COM 
CCONFIG requires copies of both CC.COM and CLINK.COM to be present in the currently logged directory. Please copy them to this directory now, then run CCONFIG again.
 Disk error reading CC.COM. �?�cLôL�MùM��@ðJúK!
 �!�P�!P��?���!  �!  �*)P��
?���! �!-P�*)P��?���+|��c?*)P��?�Æ?!�?��?�!
@��?�!2@��?�!f@��?��?! �!-P�*+P��?���!
 �!0P�!P��?���!  �!  �*+P��
?���! �!-P�*+P��?���+|���?*+P��?���?!�@��?��k?!�@��?��
Error writing CC.COM. Please place fresh copies of CC.COM and CLINK.COM in the current directory, and run CCONFIG again. Sorry, but I don't know why this happened.
 
Error writing CLINK.COM. 
CC.COM and CLINK.COM successfully updated.
 ��@úA��JñD�!��9�DM! 	^#Vr+s�n�`is{��zA`in}�
�PA͐���@��*P#"P+�M ���PA`in& ���@�͐n}��MA!  ���@���@!
 ���@�`in& ���@�|��qA`in& ���@�! "P��@3��ÉAüM�4K��@�!��9�DM̀A�`is#rz�¨A!&Q�̓A�!�A�͆A�͐ 33��
 ��AñD�!��9�DM`i�w#w͐n}���A! 	^#Vr+s�n& �ͽA�|���A`i^#Vr+s��A͐ 33���B��@��J�C�fB�!��9�DM͐"|��/B͐"��	B�`i��B�!  "P`i��B���B���|��ZB! �]B�]B!  �! 9�����lBñD�!��9�DM! 	^#Vr+s�n�`is ��iB�|�ʕB�tB`in& 3����B�(�[ÐÝ�=�+��!�c'Ð.é*��D!  �*�B�*�B�*�B�*�B�*�B�*�B�*�B�*�B�*�B�*�B�!P�;B�! 9��!  "P"P��C�-E�!  9DM! 	n& ��C�|��1C! 	n&   �8C! 	n& & ���!  9DM! 	n& 0 ��ͯ�fC! 	n& 9 �ͯ���nC�<C�!��9�DM`i�w#w! 	6#6 ͐	n�! 	s{�	ʡC! 	n}� ¯C!	 	^#Vr+sÅC! 	n}�-��C! 	6�#6�!	 	^#Vr+s!	 	^#Vr+s�n�! 	s ��kC�|��D͐ 
 �?�! 	nѯg���`is#r��C͐�͐ ��?33333���,D�-E�YE�!  9DM! 	n& ��&D�|�ͣ�XD! 	n& ��)D�|�ͣ���`D�YE�!  9DM! 	n& ��]D�|�ʆD! 	n& ��ÍD! 	n& & ��ÚD��JÅE�!  9DM*�D�! 	�͗D�����!  9DM! 	n}� ͝��D! 	n}�	͝��D! 	n}�
͝���!��9�DM! 	�`is#r͐ ~#fo|��)E! 	^#Vr+s�͐ ~#fo��s#r`i^#Vr+s��D33���!  9DM! 	n& A ��ͯ�WE! 	n& Z �ͯ���!  9DM! 	n& a ��ͯڃE! 	n& z �ͯ��ÔEÁI�<C� J�{J�!��9�DM!( 	^#Vr+s�~#fo�! 	s#r͐(�! 	s#r! 	^#Vr+s�n�`is{��uI`in}�%�FI! 	�! 	s#r!" 	6�#6! 	 s!  	s#6 ! 	6 ͐n}�-�)F! 	^#Vr+s! 	6͐n}�0�:F! 	60͐n& �͋E�}��\F! 	�͎E��!  	s#r͐n}�.F! 	^#Vr+s! 	�͎E��!" 	s#r͐n}�lF! 	^#Vr+s! 	^#Vr+s�n�`is{�d��F�u�G�b�G�x�%G�o�.G�c�tG�sʮH� �I�I͐~#fo|�G! 	^#Vr+s�6-͐�͐~#fo����s#r!  	^#Vr+s! 	6
�4G! 	6�4G! 	6�4G! 	6!  	�~#fo�! 	n& �! 	^#Vr+s�~#fo�! 	�͈E���ѯg����s#råG! 	^#Vr+s�! 	^#Vr+s�~#fo��s!  	^#Vr+såG͐6 ! 	�! 	s#r�͑E��! 	s#r! 	n}��H!  	^#Vr+s!  ��H͐*�͐,�! 	n& �!H�! 9~#fo����#|��H!���xI��G! 	^#Vr+sz��_H͐*�͐,�! 	^#Vr+s�n& �!MH�! 9~#fo����#|��\H!���xI�H! 	n}�ʫH!  	^#Vr+s!  �ҫH͐*�͐,�!  �!�H�! 9~#fo����#|�¨H!���xI�iH�CI! 	^#Vr+s�~#fo�! 	s#r͐�͑E��! 	s#r͐"�͐�����H͐"�! 	s#r!  	�~#fo�͐�����s#r��G!  �xI͐*�͐,�`in& �!4I�! 9~#fo����#|��CI!���xI�rI͐*�͐,�`in& �!cI�! 9~#fo����#|��rI!���xI��E!  �!$ 9����ÇIÁI�!��9�DM͐�͐	�����I͐^#Vr+s�͐����I͐0 ��I͐7 ��s! & �J͐	�͐�͐	�͉�͐�̈́I����`is͐	�͐�͐	��)�͐�̈́I���`in& #& 3���&J�<C�!��9�DM`i�w#w͐~#fon& ��#J�}��sJ͐ 
 �?�͐^#Vr+s�nѯg���`is#r�4J͐ 33���!��9�DM`i�w#w! 	^#Vr+s�n}�ʨJ`i^#Vr+sÉJ͐ 33��� �
q#p#�!  9�s#r#��s#r!  ��
���!j�9�6�
�� 
� �#F#�x���J~#��J�����
��
�K� >
_� :���2K� ��(K��� �� ���
N#F#^#V#"�����*�~#fo����7��,�aK>
�2��*p���/:��2� ���>ʱK:��):r�ʝK=ʝK=>±K:��w#�w#w:�o& �5��52g��7:p�)V>�]Lz�>�]L�z�2:p�,"�!  "�*t|�*���K�5��*r�� *��!�� ѷ�&L2g�� L�� L!����K*���K*t+"t*r� "r*�#"�*�! 	N#Fp+qx���K##6>2g��K2g��7*t|���DM*r�*p��ڒL><�L����~#x�L��	�	�><�L����~+x�¢L��|��}��úLÒN�7�:p�,>��L2g���! ^#V*r:t���L=��L��L*p��ͷL���*r�! �s#r����7:p�)"xV>ڳMz�>	ʳM�z�2:p�,"�!  "�*t|��aM*�! ^#V�*x#^#V������YMr+s*��5��*r��� �� "r*��"� *��ʉM2g�\M#"�*t+"t*�! 	N#Fp+qx��3M##6>2g�YM2g��#:�o���M�2�g��!�~��N#�~��N@N
� 
� !BN">N:AN!�w�O�N_ 4!BN6
�5*>N~#">N�%N� ��%N
� >
G:��x��4N�� �!���o& �25O $GETLINER0013 #RANDBEG�v&RANDEND��#RANDSTRT�g)RANDEFRAND�%RANDSTRTC��
�,ңN>2g�����)~�2#"��!! �~#fo�#� ��^#Vp+q*��~#fo����N�s#r���5��R