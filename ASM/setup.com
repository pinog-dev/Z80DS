�t��>��ͣ            Terminal Installation Program V 1.0  30/12/83

                    Copyright by SME Systems 1983

                      Written By Richard Holmes$>���͓>
���v�!���>: ��+	�2�ͣ



              ---- Main Menu ----
        1) Edit Terminal Defintions
        2) Kill a terminal definition
        3) Replicate a terminal definition
        4) Display Terminals on file
        5) Create a terminal definition
        6) Install a .COM file
        7) Quit to CP/M

  ---> ?$͍͊�1��8�v�o�7ʤ�5�+	�6�S�4�M�1���2ʯ�3��ͣ $������Lͣ

  Enter file NAME to install a terminal for : $�2�2�2P!�6 T]	 �����:���W:��: :�͊�@ڊ�Ҋ2P!�!�Q~͊�.ʜ�*ʜ�?ʜ#�P� ���g:��(Fͣ

Do you want to install code for $�[#��ͣ   Y/N $?���L��ͣ

YOU MUST CHOSE A TERMINAL TO INSTALL CODE FOR
display Terminal Choices Y/N ?$����ͣ

Enter Terminal Number (0 = exit to main menu) ?$�}2���J: �ڣ�L!  "�>�2��ͫ:���B�:�����J���:���7ͣ

Patch Complete - Closing file$PP� ���}ͣ

   Do again Y/N ?$���V>����ͣ
Unable to close file$�W�.(.ͣ
No wildcard * or ? characters allowed$�Wͣ
File Types are assumed to be .COM, DO NOT ENTER$�Wͣ
Patch Number > maximum allowed$ͣ
File Sector = $*���ͣ   HEX Byte offset = $:�͐�Jͣ
Unable to find this file
$�Vͣ
Drive name error
$�V���S����� ����� ������ ����� ���2��:��� :���7*�#"��"�(>2�7�O<2� *N	~���:��� :���7*�#"��"�(>2��O<2� *N	�w>�2��*��6�2��:���:�o& ��:��ʱ�ʌ�(>2��ͣ
.Patching Function Codes$#P Pͣ
....Patching Clear Codes$4 +ͣ
......Patching Set Codes$  ��  *#�~#������: �ʖGͣ

There are $xͧͣ Terminals on file$ͣ
Display them on the printer Y/N ?$���O�k! �x�(4G>��	��1��1�Lͣ
 $��#ͣ    $��#�: 0
ͣ
 $��:�o& ���L�oͣ

Press a Key to return to main menu$͍�}ͧ�����ͣ)..$�[#���ͣ..$�! �������      Term ID  Term Description         $>��ͣ

Terminal Defintions On file = $: ͧ��ͣ

Defining Terminal Number # $: <ͧ���b
�L�~�L�V�L͡ͣ

Write To file Y/N ?$��(}�LͣRe-start at Beginning Y/N ?$���[	ͣ
Re-start at cursor addressing Y/N ?$��ʓ	ͣ
Exit to main menu Y/N ?$�����+	: <2 o& ��[#��!  ���[#<!  �>��ͣDo Again Y/N ?$���0	���S�:'�(**���[����ͣ    Confirm Y/N ?$���"��L�[��1!Q6 ]T ��!Rͣ -> $͍�(w#͐ͣh $��x�(
ͣ    $��ͣ                     Confirm Y/N ?$��(�[�:'�ʶ
�Lö
>�2Q!Q�[� ���S��     �L*#P "�͂
ͣ
Send ROW (Y axis) First  Y/N ?$�� �>�*�w#�ͣ
     Decimal X offset value $�}�w#�ͣ
     Decimal Y offset value $�}�w###"��>��ͣTerminal Editing$>�2'ͣ

What terminal Number (00 = exit) ? $�& }���: �8�ͣ

Display defintion on PRINTER Y/N ? $�� �k�L}2����[#�ͣ
Terminal   I.D. : $���! �ͣ
Terminal   Desc : $��*#  "�!���*#P "�!���*�~#�(ͣ
         Send COL First$ͣ
         Send ROW First$ͣ
     X Decimal offset = $�~#ͧͣ
     Y Decimal offset = $~ͧ###"�!����oͣ
Modify this Defintion Y/N ?$����ͣ


Change Description or ID Y/N ?$����ͣ

Change Attribute Codes   Y/N ?$���~ͣ

Change Cursor Addressing Y/N ?$���Vͣ

Change Function Codes    Y/N ?$��̡ͣ

Write modifications to file  ?$�� 	:�o& �ͣ

  Edit Another Defintion Y/N ?$����2':����o& ����ͣ

There are $: ͧͣ Terminals on file
Enter terminal number to replicate (00 = end) $�}�ʌ: �0,ͣ

Number entered > maximum allowed
$����: <2 o& �ͣ
Done

$��!  ��: *#w!  �:����o& ����ͣ

There are $: �ʛGͧͣ Terminals on file
Reading all terminal defintions into memory$x *#"%*#� "#�& i����*%"#ͣ

Terminal number to delete (00 = end deletions) ?$�}��&: �ҥͣ

Number entered > maximum allowed
$�2E*#� �~����ͣ

This definition ALREADY DELETED
$�2�ͣ
Delete the definition for $���ͣ  Y/N  $����2 6�T]���2ͣ

Write new list back to disk file Y/N $����*#: G � *#"#~��(	�i& ���y2 !  ��: *#w!  �*%"#��ͣ

No Terminals on file, cannot do deletions$���L�L^#V#���1*�~͐ͣh $#�ͣ  -  $*�#~�("� 8ͫ� ͣEs$>^ͫ~�@ͫ
> ͫ> ͫ> ͫ#�"������[#��(����(!  ���[#2 �>��ͣ
TERM.DAT   Not Found    Enter an Option Please
         Q = Quit
         C = Create a new TERM.DAT
         L = Log on a new drive
   ---> ?$͍͊�o�Qʁ�L(�C�N�^>��ͣ	Enter Drive (A..P) ---> ?$͍͊�o�@8��0�2(�>>��ͣCreating a NEW TERM.DAT$(� ����LͣFile Created Successfully - Initializing 16 sectors$��!  ����#���LͣTERM.DAT Initialized - Entering DEFINE Mode$�+	ͣ
Enter terminal ID.  : $�2}|��:~��|��|ͣ
Enter terminal DESC : $�2����:���|��|�[#!|�s*# �!��s>���7��L*#  "�!��^#V#�͂
�L�����L*#Z "�!��^#V#�͂
�L����͍͊� 8��~0��o�Y��N >N��ͣ $��G�L���*#6 ]T ��6 _ ����LͣNo Directory Space - Aborting$Á�LͣNo Data Space - Aborting$Á�LͣRandom Read Fail - Aborting$Áͳ!� ~��#x� �ͼN}� |�(�!���2(��(� ͣ

Closing TERM.DAT
   Bye$Á� � !� "� ��! 	�s#r�(���[#��(�����Q(���[#��(�������/P���[N��P���P���[N��P������ͣ
Data write error$�P� ��#N #���                               
                       � 0`�Hx�����Start HALF INTENSITY...$Clear HALF INTENSITY...$Start BLINKING.........$Clear BLINKING.........$Start REVERSE VIDEO....$Clear REVERSE VIDEO....$Start UNDERLINE........$Clear UNDERLINE........$Erase whole Screen.....$Erase to end of Line...$Erase to end of Screen.$Enable Cursor..........$Disable Cursor.........$Cursor Addr. Lead in...$         TERM    DAT                           0 FILE    COM                        �!  9">1.��*>��!��a��{��_���͠z� ������ ��  ���:=�(�(%�(A��o�~��o�͞(͍� ͍� �����~���>2=�@ ��������*@����*B���*D���>�~> �~���j!  :J����G̀�08;�
07T])))_ �%�j!  :J����G̀�0�
8��0))))�o����:F�կ2JI���!K"G!  ��*G~2F#"G�Ê������
����ë����_ !4�t:5���
:4͓�����2/���Ɛ'�@'��x�(��ͫ�������z����
�����
{Ó����!4�t:6���
:5����
����
þ���(	�$(ͫ�����>ͫ���>ͫ>
����!����!����!�~��G#~ͫ���n�������!�����!������!��n:��_:��W:��(zͫ{{ͫzͫ�����V#^͑�����=       *  T  Y            �>2Q���>��23>�������:Q _! ^#V����ɫ(1>�L�0�ë�L�0«> ë�L�0«:3ë�0 :/� >0��>0ë�>�2/��>>�2=��S;��6 #�!;�~w#��~�'w#������~#�$(ͫ�����!  "S��*S���2R*S|��):R�o���|�g}�o"S�����(�����O #~#�(
G�~#�2��͍�(\�
(X� �C�� �C ��_x�8�D�{w#�2�� �o_>^�o{�@�ox��+~� 0�T�T�>�o> �o>�o�x����.�����_� ���������_� ���������� �(��������� ����>��SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS                                      