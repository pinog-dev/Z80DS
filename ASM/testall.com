�?���!�~��x�(#��\�
Program CRC = $���ͯ�Correct CRC = $  ͯ��  z�ʓ}� |�ʓ͗>�ZͩCRC MISMATCH - Faulty Copy$��Z�I/O Drivers are for $�-& ��^#V�7��m�\�����d�&�Q�L�C���1���:��2 ��ͭ��: �1�W�2�`�3�q�4ʂ�5ʓ�6ʔ�7ʪ�8ʫ�9ʬͩ
NOT SUPPORTED DEVICE SELECTED$��m���>��W�{ӛ�>��>@�>��>'��>��5>@�5>��5>'�5�>��Y>@�Y>��Y>'�Y����A��E�D �� ���: �1���2��3�^�4ʬ�5�@�6���7���8��	�9��
��\ͩ



  --- PARALLEL PORT TESTER FOR SPC-29 ---

Ports must be addressed at 54h, 78h and 98h


Starting - enter a ^C to exit this test

All leds on for 1 second$>�����mͩ
All leds off for 1 second$> ����mͩ
Walking bit across all channels$>�����m�����ͩ
Single channel sequential walking bit$�>����m�����>����m�����>����m�����ͩ
10 Seconds of random chaff$����4���4���4��2 �m�ۯ��ͩ
Do again ? $��d�Y���N��T�xӘ���U�yә���V�zӚ���T�U�V�x�y�zӘәӚ��(
�� ������\ͩ
Connect terminal to channel 1 of SPC-29 then
Press the return key$�T�\ͩ
Connect terminal to channel 2 of SPC-29 then
Press the return key$�T�\ͩ
Connect terminal serial channel to FDC-III then
Press the return key$�T�\ͩ
Connect 9600 baud terminal to SBC-800 serial port 2
then Press the return key$�(���͕�� ��͋͕���}���͋�� ���$���: �2(�3(�4(1�6(C��(�����(����(����5�(��4��(����Y�(��X��(���ۋ�(�ۊ���O: �2(�3(�4(�6(���(�y���5�(�y�4��Y�(�y�X�ۋ�(�yӊ��\�---- SBC-800 Centronic Printer Port Test ----$ͩ

Enter a byte to send (hex) : $�}Ӆͩ
Busy = $ۄ�hͩ
 Ack = $ۆ�hͩ
Again ? $��d�&�Y�v��\��
Checking for MPC-6 in bus - $��?�E�J>�ZͩMPC-6 NOT VISIBLE at ports 0..3$��Z��m�ͩ MPC-6 all present and correct$��m�\�}�(7�(3�J�
WRONG I/O DRIVER MODULE, SEE R.C.H.$��m��\�
Enter characters on any MPC-6 channel$�Enter control F to fill screen$�Enter a control C to exit$�R�2����&��w	��ʃ	��t	  ͗�P>X�&��	����#Like That ?$���w	�\�w	�&:�<��#	�$	�\�
Connect back to main port and press return$>��&�� ��                    ���������J��\�A-TO-D Card Display$� Press a key to exit$!!�A TO D =$ x��H
�A TO D =$x�@Ͳ
���@Ͳ
��@  �A��[
�@O�A�w#> ͅy�hx� �4
�BITS  = $!!> ͅ~#� (>0ͅ>1ͅx�
��!
���� ����������\��SB͗>*ͅ�2"�;�[B�z�W͗:"!$_ ^#Vr+s���͗> ͅ�[B{�(:"<�2"�SB͗>*ͅ���
��!K:"_ ^#V��h
&>V           ����یG �mی�¡�(SBC-800 Required for interrupt test$�!P�"@`{ӌz�G>�ӏ>ӏ�^�*@|��û��ͩ
SBC-800 Illegal Interrupt$�*@+"@}�����M��>ӏ>-ӏ>ӏ���M!������+}� �������� ��[:*<�����y� �� ��[:*<�E���y� ��2 ��4�K>*:w]T��*:�K>_>I�&>�&{����_y��4�K>*<w]T��*:�K>_>D�&>�&{����_y�±�y��Y> �&������[Bz�W͗!.:"_ ^#Vr+s��ͩ      $���͗*8#"8����K��
͗=>-�/��͗P���͗���͗ ��͗ ��͗2 ��͗>-=�/0͗D͹�:H�h>:ͅ:I�h>:ͅ:J�hz! ":͗�ͯ�͗���S<ͯ����R">���
SME Systems Board Test Program V1.2$
--------------20/01/84-------------$
       Enter an option$
 1) Test SPC-29 PARALLEL ports$
	 2) Test SPC-29 SERIAL port 1$

 3) Test SPC-29 SERIAL port 2$
 4) Test FDC-3  SERIAL port$
 5) Test SBC-800 Centronic printer port$
 6) Test SBC-800 Serial port 2$
 7) Test MPC-6 serial channels$
 8) Display ADC-32 data$
 9) Test DRC-II memory$
 C) Display program CRC$
 Q) Quit to CP/M$
?$� ����CP/M$SBC-800$CP/M & MPC-6$SBC-800 & MPC-6$ 
Entering Echo mode, press ^C to exit $
Connect terminal back to main port then PRESS A RETURN - BYE$YZ��                                          Memory Test Section$From$To$$Time Start$&Time End$Test$Current  Iterations  Loops  Fails  Fail Address$	Test      Size$Interrupts$Port Addressing$Walking Bit$Barber Pole$LDIR / LDDR$Total Fails$Press Any Key To Quit$��!  9"x1h��*x��!��ͦg�ͦo��a��{��_����zz� ������ ��  ���:w�(�(�(+��&õ��&�õ���>2w�z ��������*z����*|���*~���>͵> ͵����z��U�r#s#�S����B!  :�����G�X�08;�
07T])))_ �%�B!  :�����G�X�0�
8��0))))�o����:��կ2���d�!�"�!  ��*�~2�#"���d͟�ͦ���ͦÅ͟��_ !n�z:oͦ�:n�k�����2i���Ɛ'�@'�͟z�ͦ���ͦ�{�k͟��!n�z:pͦ�:o�ͦ��ͦ�Ö����� ���������������������##~#��-�$�-ͅ����ͅ������(	�$(ͅ�����>ͅ���>ͅ>
����!����!����!�~��G#~ͅ���t�������!�����!������!��t:��_:��W:��(zͅ{{ͅzͅ�����V#^͗�����=       *  T  Y            �>2����>��2m>�������:� _!&^#V����Ʌ.7D�R�0�Å�R�0> Å�R�0:mÅ�0 :i� >0��>0Å�>�2i��>>�2w��Su��6 #�!u�~w#��~�'w#������~#�$(ͅ��������>Ӈx�Ӄ��x�(��#����>ӇӃ����xӅ>= �ۄ��o�����>�Ӈ�o�ӄxӅ>Ӈ>= ��6x�(�oӄxӅ�6#x� 
�>�Ӈ>Ӈ��>Ӄ=Ӄ��������~�(G#N#��������!��������:��(
=!�͒͆�2��(
=!�͒͆����~��G#~�&�ɷ� _���_��� ABM 85)  ^  j  l            ���(  q  k  m            ��!  "���*����2�*�|��):��o��|�g}�o"��������G�#�_�w4~#���������G�4~#�w�#�/w�~�����4g�4o��R|�g}���(�����O #~#�(
G�~#Ͳ����(\�
(X� ���� �� ��_x�8�J�{w#Ͳ�� �&_>^�&{�@�&x��+~� 0�����>�&> �&>�&�x������R��{��BK��#�>��#�>��#�>U�#�>�w�7��� �6 #x� �6 ���_wx�{(T]�������� �6�����7��S�"��|/g}/o#�Z7�#"�>2�2���*��*�
w#z�ʏ:�=2��q��>2��q��>2�*��*�
���#{�ʾ:�=2���>2�Ý:���>2�:�=2��j����7�  @������߿  @������߿��d�Y(�N �ͅ�Y�.�:����=$:����=&����� 
����2��:��ʧ5�͚����>���͚�� ���(��� �:�=� ���(�� ������O� �� �͚��(�:�=��>0= �y����:�G�7�_�������O	 !�����_� �������� !��* ��������� !��>���SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS                                                  