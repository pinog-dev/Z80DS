�O(  PROM150.HLP   	EPROM.DAT    Copyright (c) 1984 SME Systems Melbourne$ͥ'�"�t>2��7� (��(��
(���'���:sK�(�2sK��)�"͹��($��!�%�})�       	 
	
!�E�����"V#^#�*���^#V#�͵)��������*��)>�?5:�K���>2�K!�E�A^#V�S#~2R#~� # ��͵)��?5!�F�A"T�S!�F�A"�!�F�A"� ���:�K:�K_ ^#V�� �  >�2sK��)͊) ---- EPROM LOG Data File ----$�}*͊)Program Runs = $�[�K�Q)͊)Date Last Run $�K�#)͊)PROM Serial Number = $�[�K�Q)͊)----  EPROMS Programmed  ----$��)��) �'+            Type $y<��(ͽ�'+              Type $y<��(ͽ��)�͊*ú͊)DEFAULT   Buffer 1 at $�[�K�5)͊)'Current Eprom size = $�[�5)͊)DEFAULT   Buffer 2 at $�[�K�5)�����'+ = $!�K 		^#V�Q)����2<!��#(##�^#V��1�2�3�4�5�6�7�8�9�?yS�L�D�M`BoE�UVCnF�OtP>Q!R�!{&Q'?�">�?5�'+ILLEGAL option - Press ? for HELP$��?5���'�">2�:����:�� -��!͊)Indexing Help File$�A72����>�2�:�͡72�>�2sK:�����:��8�_ !�^#V͵)���'�'+ $�:����ȯ2��'<Qf{�Undefined help error$Help File Not Found $Help File incorrect $Excess help sections$Help File read error$Help program error  $Illegal help screen $   >2�K���>�>�>�>�>�>�>�>	�!  "�J�2�J��!͊)---- Save of Memory to DISK ----$͊)	Enter Disk file name or <cr> to exit : $�2�J�J�6:�J�ʒ� :�J�? >�{�t���J!�J��;�J��;�J͟<������)͊)OPERATOR This file exists, ERASE IT Y/N ? $��6�!��Y(�N����Jͧ=����͊)OPERATOR, cannot ERASE the disk file$���'���J͉<���0͊)OPERATOR, cannot CREATE your file$���'��͊)Enter start address or <cr> for buffer 1 : $͈(}�ʨ�͊)Enter number of bytes or <cr> to quit    : $͈(}�ʒMD�*�K�K͊)Writing to disk - Please wait$~��#y����R���O!�J:�J_ q<2�J��������:�J���!�J_ 6#<����2�J�J͂<�*�J#"�J͐<����)͊)
OPERATOR, WRITE failed$���'�:�J����J�t<��͊)
OPERATOR, Could not CLOSE the file$���'��!�>�2tK��!!  "�J�2�J��!͊)---- Memory LOAD from DISK ----$͊)	Enter Disk file name or <cr> to exit : $�J��6:�J���� :�J�? >�{�tÖ�J!�J��;�J��;�J�m<���k	��)͊)OPERATOR This file not FOUND$���'Ö:�J�H¾	:�J�E¾	:�J�X¾	͊)Load this file as a HEX file  Y/N ?$��6�!���Y¾	�2tK͊)Enter start address or <cr> for buffer 1 : $͈(}��6
�͊)Enter number of bytes or <cr> to quit    : $͈(}���MD�*�K�K"s
͊)Reading File$:tK��u
��Nw"s
#y� ��N        �Co
"m
��
��[m
��R]T��Sq
��
ڿ
x�ʿ
�[q
�R��
ڿ
w"s
#�[o
z���
�So
�Ð
�Ko
�N���0�
������: ��O��
ط(G��
�g��
�o��
�7�����
�O���
����O�����:�J��3�/!�J:�J_=2�J>��_ ~������J�{<�*�J#"�J>�2�J͐<��7��~ �*��)>�?5�'+Premature file end. $��?5Ï͊) There were $�*�B��5)�'+ hex bytes read. Last address = $*s
��5)�J�t<ú>�2sK��!͊) Enter a drive and file name or <cr> to exit$�'+
->$�2QP�6:Q��P��=�'+
Free space on $:1M���=�'+ = $�(=��=�               ��!�TͿ+>�2sKɯ2���!͊)---- Blank Eprom Test ----$͊)Insert prom and press return : $��6�!�Y͊)Testing$��)�K  :Ro������R��S͊) Not erased at location $�5)�'+h. - $���(>�2��'+. Enter Q to quit else continue : $��6�!�Y�Q�Yy���:�� $͊)**** Your Prom is BLANK ****$6�*��)>�?5�'+**** Your Prom is NOT BLANK ****$��?5��S��͊) Job Done - Press a key$��)�7��!� ��!�T���'�[�K͔>>�2sK�>�2sK��!͊)---- CRC of PROMs Section ----$�S�'+

Load a prom and press return $��6�!���?(��.>�{�t�.�'+
The $:�K��'+ of the prom is $����5):�K��.��[��g��o��'+  PROM CRC/CKSUM = $�5)��}� |� �'+  PASSES$�.�'+ FAILS$�.ú  �K:�K�(:�K�ʏ'�h'�S��!͊)Insert FIRST prom, press <cr> to read or S to skip or ? $��6���!�S(�? >�{��!�t�*�K��͊)
Insert SECOND prom, press <cr> to read or S to skip$��6���!�S(
�?(�*�K���K�[�K*�K��#y� �ú͊)Reading...$  �K���w�#y� ��S�"͊) Verify FAIL at $�5)�'+h. $��(>/��'~��(�'+...Press Q to quit else continue :$��6��Q�����!͊)Memory or Buffer routine required (M/B/?) ?$��6ʖ�!�B��?(�M �>�{�t�n��!͊)---- General Checksum/CRC routine ----$!  ""͊)Enter (hex) memory start : $͈(�͊)Enter (hex) number of bytes : $͈(MD�x�ʖ���^ *�"�#y� �����5~��5#y� ���5"��!͊)-- Checksum --    -- CCITT Polynomial --$͊)Result  $�[�5))�*�[�5)͊)Compliment  $�[���5))�*�[���5)ú{/_z/W�    ��!
�*:�K��'+ of buffer 1 is $�[�K͈��5)�'+     for $�[�u*�Q)�'+ Bytes$͊*
�*:�K��'+ of buffer 2 is $�[�K͈��5)ú:�K�K��~'�W'���!͊)
Enter 1) For Buffer 1 fill$͊)
   or 2) For Buffer 2 fill$͊)
   or M) For memory fill$͊) Enter an option or ? : $��6��p�!�1�A�2�F�Mʊ�?>�{��!�t�p*�K*�K���!͊)
Enter Byte to fill with (HEX) : $͈(��p}��Kw]T���p��!͊)
Enter Memory start address    (HEX) : $͈(}�����!��)͊)ZERO is an illegal fill address, aborting$���'�p�͊)
Enter number of bytes to fill (HEX) : $͈(DM|���p�͊)
Enter the byte to fill with   (HEX) : $͈(}�w]T����!���!͊)AUTO Serializer set $:�K�ͪ�?(��Y :�K���2�K�t͊)Serial Number  $��)�[�K�Q)ͪ�?(��Y�͊) Enter (decimal) SERIAL # or <cr> to skip $�a(}�("�K͊)AUTO CRC SET to $��):�K�ͪ�?(��Y :�K���2�K�͊)CRC MODE is $��):�K�ͪ�?(��Y :�K���2�K�͊)BUFFER 1 Address = $��)�[�K�5)ͪ�?(��Y��͊) Enter (HEX) ADDRESS or <cr> to skip $͈(}�("�K�{͊)BUFFER 2 Address = $��)�[�K�5)ͪ�?(��Y�G͊) Enter (HEX) ADDRESS or <cr> to skip $͈(}�("�K��͊)Terminal Delay = $:�K��(�'+ mS Decimal$��)ͪ�?(��Y§͊) Enter (decimal) value $�a(}2�K�ú͊)---- Toggle Modification And Display ----$͊)    Change Y/N ? $��)��6(�!�?�>�{��!�t>?�����J�(�J͵)���+�(5͵)��CCITT CRC$CHECKSUM$��!͊)
Enter 1) For program from Buffer 1$͊)
   or 2) For program from Buffer 2$͊)
   or M) For general programming from memory$͊) Enter an option or ? for help : $��6�!��1(�2(�M(3�Q��?�>>�{��!�t�>*�K*�K  �K�C��S�"�����!͊)   Enter hex MEMORY start address   : $͈("�͊)   Enter hex EPROM starting address : $͈("�͊) Enter hex number of bytes to write : $͈(}�(�"���!͊)PROGRAMMING A PROM From $�[��5)�'+h  (memory)$͊)INTO PROM starting at $�[��5)>h��'͊)!For $�[��5)�'+h Bytes$:�K���͊) Serialize this prom Y/N/? ? $��6���? >	�{��!�t��Y��*��[�[�K+r+s�S�K͊)Last two locations set to $�Q)�'+ decimal$:�K��͊) Do a $:�K��'+ of Memory Image Y/N/? ? $��6���? >
�{��!�t���Y�:�K�[��K��(�W'�~'�*��[�++++�s#r͊)Third and fourth last bytes set to $�5)�'+ Hex$�S͊) Press a <cr> to start, Q to quit or R to re-enter : $��6�!���Qʂ�R�/��͊) Blank Check in progress :$��)*��[��K����O:R��oy��o�S���)͊) NOT ERASED at $�5)�'+Hex. Enter Q to quit, or I to ignore : $��6�!���Qʂ�I(��#x��͊) Please Wait while PROGRAMMING the prom $��)*��[��K����S �*��)͊) Verify in progress :$*��[��K�������z2��S͊) Verify FAIL at $�5)�'+h. $:���(>/��'~��(�'+...Press Q to Quit, I to Ignore or ? for Help $��6�!��I�z�? >�{��!�t��Q��#y����S��!͊) Repeat this programming Y/N : $��6�!���Y��͊)   Re-program from start Y/N : $��6(�!�(	�Y�>�N ��  ��!͊)
Enter 1) For read into Buffer 1$͊)
   or 2) For read into Buffer 2$͊)
   or M) For general reading into memory$͊) Enter an option or ? for Help : $��6�!��1(�2(�M(3�Q��?��>�{��!�t��*�K*�K  �K�C��S�"��r��!͊) Enter HEX memory start address   : $͈("�͊) Enter HEX eprom starting address : $͈("�͊) Enter HEX number of byes to read : $͈("�}��o��!͊)READING A PROM Into $�[��5)�'+h  (memory)$͊)FROM PROM starting at $�[��5)>h��'͊)For $�[��5)�'+h Bytes$͊) Press return to READ the prom or Q to quit : $��6�!ʦ�Q�o��r�S͊) Please wait while READING the prom $��)*��[��K�ͭ�S��!͊) READ Another eprom Y/N : $��6�!ʦ�Y���Nʦ��      ���w�wͪ #y�­��  �ͧ ���#ͪ y�������S �*��)͊)
PROM programming error at $��5)�'+h  eprom = $���(�'+  memory = $~��(͊) Enter Q to quit, C to continue or ? for HELP : $��6�!��? >�{��!�t�/ �Q��C�/ � �*��)͊) Continuing....$����  �:!<2!�
!�*!~� !!~#"!��'>��'��37�
!�7��!�'+Quit ?$��6�!�Y�� �����U�'+       $�� \|/- !�"�'+
Writing logging file$*�K#"�K�K!�K ��:}KO怷(+uK�t< �� 2�J  � �'+ to USER 0$uK�m<�K��;uK͂<�ʵ!�'+
Disk Error on writing new eprom log file$�'+
Closing logging file$uK�t<:�J�(	:�J_ � �'+

OO-ROO$ò'� �*��)�"��� �*��)��:�K��_ ��'��)�%�})͊)
Terminal Installed for    : $�;5~��'#�>�2sK͊) Test memory Buffers Y/N/?  ? $��6�!�!�? >�{�"��#�
�#�N�#�Y�Q"͊)Testing memory from $�M�5)�'+  to  $*  @�B��5)��M�6�#��)͊)Memory failure at $��5)͊) Loading EPROM LOG data file$��)�K��;!uK��;uK�m<��³#͊) CREATING LOG file for eprom recording$��)uK͉<��­#��)͊) UNABLE to CREATE a new LOG file, ABORTING$ò'uK͂<:}K怷(�'+ on USER 0$���'uK�{<:�K�(!�K�K ��͊) Enter System Date : $��)�K�6*�K|�@�$! P"�K*�K|�P�'$! p"�K� SME Systems PROM-150 Main Menu$-------- Eprom Options --------$Current Eprom = $+--- Program Options ----$+S = Save memory to disk$+L = Load memory from disk$+D = Directory$+B = Blank prom test$+M = Monitor$+E = Edit memory$+	U = CRC Proms$+
V = Verify proms$+C = Generalized CRC$+F = Fill memory$+O = Defaults modify$+Q = Quit to CP/M$+? = Help$ R = Read an eprom$ P = Program an eprom$ Enter an OPTION _$� Press any key to continue$� SME Systems PROM-150 EPROM PROGRAMMER Driver$------------- V 1.07 25-01-85 -------------$Copyright (c) 1984 SME Systems Melbourne$��7�@�?>�2sK��)͊) Defaults display section$�'+

Default Buffer address 1  = $�[�K�5)�'+
Default Buffer address 2  = $�[�K�5)�'+
Current eprom size        = $�[�5)͊) Display LOG file Data Y/N $��6ڲ'��Y�V>�2sK�. �ox� �}/o& �. ���ox� �}/o& �S���5��5x� ���5���5����5x� ���5�S��!  9"�L1�L��*�L��!�!�'�18-09-84$��)g��)o��a��{��_�����'z� ������ �   ���:�L�(�(�(+��7�7��7��7���>2�L��L ��������*�L����*�L���*�L���>�7> �7����z���'�r#s#�S���Ͷ(!  :�L����G��(�08;�
07T])))_ �%Ͷ(!  :�L����G��(�0�
8��0))))�o����:�L�կ2�L�L�6�!�L"�L!  ��*�L~2�L#"�L���'�)��)͎*���)��'�)��_ !�L��*:�L�)͎*:�L��(�����2�L���Ɛ'�@'��x�(����'������)z��)͎*���)͎*{��(�)��!�L��*:�L�)͎*:�L��)͎*��)͎*�
)��͕)�� �������A*�͠)����A*�͠)����##~#�ʳ)�$ʳ)��'������(	�$(��'�����>��'���>��'>
����!\*���!a*���!f*~��G#~��'����)�������!k*����!p*�����!R*��):X*�_:Y*�W:W*�(z��'{{��'z��'�����V#^�*�����=       +  T  Y  .2 .0 �>2�L���>��2�L>�������:�L _!�*^#V������'�*�*�*��*�0���'��*�0��'> ��'��*�0��':�L��'�0 :�L� >0��>0��'�>�2�L��>>�2�L��S�L��6 #�!�L�~w#�+��~�'w#�+������~#�$(��'��������>Ӈx�Ӄ�d+x�(�d+#���G+>ӇӃ����xӅ>= �ۄ��o�����>�Ӈ�o�ӄxӅ>Ӈ>= �ʹ+x�(�oӄxӅʹ+#x� 
�>�Ӈ>Ӈ��>Ӄ=Ӄ����!  9"�L!�+�04
ASMLIB Monitor
M>*�L��!4!�+�04͜4�(��
(�O��+4Ͱ4�y!�+��[�L�!�L�?�:,�A8�0��_ !5^#V���*�L�>?�7��+!C,�04��+
A = Ascii Dump of memory        A 5000<cr>
B = Select memory bank          B 1<cr>
D = Display memory              D 5000<cr>
E = Examine memory              E 5000<cr>
F = Fill memory                 F 5000 5010 FF<cr>
G = Goto and execute memory     G 100<cr>
H = Hex sum and difference      H 4000 5000<cr>
I = Input from a port           I 68<cr>
I = Multiple input from a port  I 88 n<cr>
K = Read clock                  K<cr>
K y m d w m h s Set Clock
L = Locate a string of bytes    L 0 100 1 2 3 4 5<cr>
M = Move memory                 M 5000 5010 6000<cr>
O = Output to a port            O 88 55<cr>
O = Multiple port output        O 88 55 n<cr>
P = Examine a port              P 88<cr>
P = Port map                    P ^<cr>
Q = Quit this program           Q<cr>
S = Substitute memory           S 5000<cr>
T = Test memory                 T 5000 6000<cr>
U = Write console to ram        U 5000<cr>...^Z
V = Verify memory               V 4000 5000 5001<cr>:�L��2,�(B�4*�L�͔2y�7��R� ��7���+� (�^(�? ���4� 	�!4η �B������:�L�(�S�L*�L��4DM��[�L��R0*�L	+T]*�L���*�L����>+�7��4�+4���R>-�7��4����:�LO:�L�8:�LG� ���y�4�x�4��3��!4���F ������:�LO:�LW:�L�8:�LG� ����Q��3��F ���:�L��4���R� ���4:�L��2,G<2�L!�L�Lw#�:�LG*�L�L� #�*�L��4�!4��3*�L�[�L��R��S�L��4����[�L�� �����+��4~#�4����+��4~�:4�!4�������3�� *�L}��w#��R� �*�L}�����1#��R� ���3>P�7����4��4~�4�!4����:�L�0	� �"�L��!4���*�L��B�2, ��B(0}�G�������4��t2��3��F(��7���+�^(�-(�+(�  �����!4�� �R� �R� ���~�4��4#��+4�+4��~#͔2y�7���O� 8�{�.����4~�:4>-�7�Ͱ4�:�L�(:�Lw#:�L�(�+�:�L�^(�#�:�L�^("�& E>�7>�7>=�7>#�7>!�7��2� i& ��!4��4��x��4��4��3��{� ��:�LOy�4�x�4�Ͱ4�:�Lg:�L�(:�L�y>^�(��>^� ��*�L��:�L���+:�L����+:�L���+�  �7�ʅ3w�7#��!4�>>�7��4��+!�L:�L�(��2,�Lw#��L�s+��L�7+�!�L�~�:4>-�7�~�:4>-�7�~ �4�+4�~�:4>:�7�~�:4>:�7�~�:4�!4��37��7���+�.��+ɷ�R�2,#���:4�+4��>�7>
�7> �7~���7#���C4��Ɛ'�@'�7�0�
����08�:8�@8�G0�ɯ<�� ��^(�&(����!4���!  E͜4�k4��V4�y�N4))))�o��7��a8�{0�_O�7ɯ!�L���w �L��2�L̀4�2,y2�L� (��u �t:�L<2�L�#�#y� (��|�:4}�4��4	x�	�>-�7�+4y�7 0Y32,�1�2 1q0�0�02,�32102,�0�2T32,�2�1i312,2,2,2,!�5�������:�L�(
=!�5�w5�k5�2�L�(
=!�5�w5�k5����~��G#~�7�ɷ� _���_��� TV    )  G2 G4 G8           ���(  G0 G0 G0           ��!  "�L��*�L���2�L*�L|��):�L�o���5|�g}�o"�L������6���
� ������SM"�L�|/g}/o#�)67�#"M>2M2M�6�*M�*M
w#z��^6:M=2M�@6��>2M�@6��>2M*M�*M
�¥6#{�ʍ6:M=2M�l6��>2M�l6:M��>2M:M=2M�96����7�  @������߿  @������߿�7��'�Y(�N ���'�Y��7�(����'
�7�(����'�ɷ7�.�����O	 !-7����_� �������� !.7�* ��������� !.7�>��!A:��;/;��;A:�m<��ʻ9�9(;�:�X7:l:� ��9ʘ7�: �:g:�@ʳ9_<2g:!o: �[h:s#r#:n:w�X7:g:�ʷ9��2e:��8ڧ9�78��7�8�9��8�ʥ9�B(��Qʥ9�ʥ9� (��(��
(�ó7:��8�ʥ9�ʥ9�ʥ9�Qʥ9�L(�N �:g:_:e:���7<2e:ä7:e:=�(�2e:ä7�9��8�Qʥ9�L(��B �>2e:ä7��)��)�2m:>2l:�9��8�> 	:l:�(>>�
 :m:<� �~8>���2m:>
�: :l:� :m:G>��G��)���>:�(
�	(��'�F8>2l:>��'�F8> ��':l:��F8> ��'��8:l:<2l:� ��F8>��7��! +}� ���͵)�7��':e:�(_:g:��{�z9/;��;A:�{<*h:#"h:��7�:n:��<9=2n:*j:~#"j:� ����(�
(	:l:<2l:�ɯ�*h:A:͐</;��;A:�{<*h:#"h:��j9>�2n:!/;"j:�9!/;6]T ���\9!o:=_ ^#V#~2n:O>��!/;O 	"j:�"h:A:͐<ɯ�>>>
>>>�7�
End of File. Press Q to quit $
Press return for next page or Q to quit $
Section End. Press N for Next section or Q to Quit $                                                                                                                                                                                                                                                                                                                                                                             �� ���ɯ2UM����2/M!	M�#��;#��;~2UM��7�:UM���ï;�ͮ=���O�: ��'�@w #6?]T
 ��÷;�~#�.("�* �\<��'y�ʷ;�~�.½;#y�ʷ;�c<~#��'�* �\<÷;y�ʷ;�÷;x��>?x��> ����ï;��ï;��!ï;��"ï;��ï;����! 	s#r������ï;��ï;�� �ï;���_ͯ;����ï;���� ��������[XM��;��<}�1�=��_.� �½;:� _:� W:� g�|gzW{_�|2ZMz2[M{2\Mß=!  "ZM�2]M��<2^MO:]M�(Ͷ<� "bM ^#V�#�*bM##~�2_M� "`M�+#~�s=�z�(��^=��*ZM#"ZM���:^M_:]M�({Ͷ<*ZM:_M=()�"[M�2ZM!ZM��÷;��ï;����6 #6 ]T �� 6 �����������<~�(��(#V#^�Q)���ɷ ���� ���<�@��'{�(� �>!1M��;��[XM��;��):WM�2dMG1M͟<��ʷ;�B> :dMG��)1Mͦ<�'>��:dM� ͭ<���(:1M��=�'+> $�'+ : $�������*XMO 	#~#��'�>.��'~#��'���*.*.**** COPYRIGHT (C) 1984 Richard C Holmes ****{2�C �S�C>�2D��)D�}) �*�0C>2�C>2�C�s@�>��7��??2�CO:�C�(�:�C�(�=2�C!	?�:�COy��B:�C��2�C�(�CA�2�C�$Az2�C{2�C�:�C� >���2�C�� �*�[�C���*��)��)�0C��)��*���)D�}) �*�0C͒@�s@�:�C��<2�C:�C�2�C�s@:�C��=2�C:�C�2�C�s@:�C�(:�C�<�_:�C=2�C{2�C�s@:�C��_:�C�(��2�C��2�C:�C=2�C{� {2�C�s@:�C�(:�C�K�M@_:�C<2�C{2�C�s@:�C�7�M@_:�C�(��2�C:�C<2�C{� 	��2�C{2�C�s@:�C��<2�C�����2�C:�C�(><�2�C>2�C͂@:�C_:�CW�*��:D_:�C�(͒@���%�*:�C2D�[�C_�5)��� ���G:�C�(:�C_ *�Cp��@��?x��'�0�
8���O*�C:�C_ :�C�(~����@�yO~��w��@��?�**�C:�C_ �$A~��(�CA~ͮC��'�s@�*�:�CO���_y�O���� 8<W�WA:�CO���_y��<W��*��:�C��$A�CAͺBE�})�E�})�7��'��B��)�pA*�C "�C �*�0C͒@�pA�*�C �R���C͒@ �*�0C��pAd�37�pA�� �*��)�'+ADDRESS to goto (hex) : $͈(}2�C. �[�Cz�("�C �*�0C͒@�]Az2�C{2�C �*��)�pA�pAͺBͱB�pA��)*�C~#ͮC��'�37�OB�7��zB͒B���C*�C|���3B�'+
Address $�[�C�5)��)�3B��)E�}) �*�0C͒@�pA�7�(����)���zBͺBD�})�s@ͺBE�}) �*��)2	C!�B2-C!C�#(##��B^#V��?O?
�?�?�?�?M@gA�?�?�?�?[?n? �@�B+�AN�A-�AL�AS�AG�AO?P$BH'BV0B A*�C" D ͸C����[ D�5)! " D͸C�'+    $��͸C~#��(͸C> ��'x�	 ͸C> ��'͸C�͸C�'+   $�͸C~#ͮC��'͸C�͸C��)͸Cy��:Cz��� 8��>.��37��7���� �7�����)�����*�C �"�C�����*�C �R�       B       PAGE Editor$Cur Addr =$Edit MENU$^J or ^X  Down Line$^K or ^E  Up Line$^L or ^D  Right char$^H or ^A  Left char$^P  Print the page$^T  Toggle edit mode$9^R  Re-paint screen$9^W  Repeat 4 times$9^C  QUIT editor$9Esc Goto COMMAND mode$� PAGE Editor$Command MENU$+ Goto NEXT page$- Goto LAST page$G Goto an address$S Scroll pages$V View memory$9Esc Goto EDIT mode$9^C QUIT editor$�? _$�  ��j2�J�i��E�E�EFF,FAFXFoF�F�F�F�F�F�F�F �1) Intel 2708$ �2) Intel 2716$ �3) TMS 2716$ �4) 25 Volt 2732$  �5) 21 Volt 2764$  6) 8748 Processor$ �7) IQS 25 Volt 2732$  �8) IQS 21 Volt 2764$ @�9) IQS 21 Volt 27128$   .) Null $�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�F�:�J��j��j2�J���I�I-JJ�I;JJ�I�IGGGGGGGG1GG`GsGbH�G
H
HGGGGGGG��ͧJz���ͧJz���~�h�j���j>��H˷�j2�J�~���ͧJz�@�jz���j~�hz���j>���Hz�����j2�J��I��7�~���ͧJ>���G��G��7�~���͚J>�   �CH   ͌G��7�:�J�h�j   �h�:�J��j2�J��~���ͧJ y���G>��G��G�®Gy��O����G��G��>���G��G��7��z���j~�hz�����j���Hz���j2�J�z��j  �h���j2�J��~���͚J y��7H>�CH͌G��Hy��O���CH͌G��7H�>��CH͌G��7��>��j~    �h   >��j���H>��j2�J�͖J~� �>��i>��iz���j2�J��H>��i��H~�h��H>��i��H>��i>���H>��i��H>��iz�@�j2�J>�i��H�h�����j2�J�i��Gd�= ��>�͚J(�QI � �(�XI � �(�_I � ��:�J� �(�fI �����(�mI � �(�tI � �(�{I � ��͂I � �~�ĉI�~�ĉI�~�ĉI�~�ĉI�~�ĉI�~� ĉI�~�@ĉI�~�ĉI�����hz���j��h����j2�J�   �j�h��j>��H��j����hO> �j2�J� �<���ͧJz��j2�J�h�ͧJz��@�j2�J  �h�͚J> �j  �h�>&2�J�j��͚J> �j�h�> �j��ͧJz��j�h���j2�J��ͧJz�����͖J>��iz����j���H>��i��H��O�j2�J��H>�i��H�h�͚J> ��j2�J�
���h�͚Jz���j2�J�
���h��{�h�z�i:�J��j=�j{�i�          ON$OFF$                                                                                                                                                                                                                            22-01-85PROM150 LOG FILE 22-01-85      P p
                                                                                          �SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS                                                                                                      	
 �                                     P�            