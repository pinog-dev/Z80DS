�Z3ENV BCOMP��s**Z@ "-�*	�Dʑ"	�͗*	� �~�(���:] �/ʹ� �%:e � �1�,�5�y *->�P£�H�=�͵�k

                          BCOMP 3.0 INSTALLATION


 ���k

     1  Defaults
     2  Commands

     I  Information

     S  Save Changes
     X  Quit

Choice:  ͵��1�2rI	XL.LS) �:)�� �k  Save change�͔�)�n͵�k                    ===== COMMAND KEY INSTALLATION =====

 BCOMP commands are alpha keys, control keys, or meta-key/key combinations.
 Enter keys in LOWER case.  Enter controls with "^"key.  Enter combination
 keys as UPPER case.  (You can't install "^" as a command key.)

 Cursor Movement:  ^E - Up, ^D - Rt, ^X - Dn, ^S - Lt   (Or Arrow Keys)     
 Quit:  ^C      Skip Field:  <cr>     Refresh Screen:  ^R                   
                -- VIEW MODE --                        -- EDIT MODE--
 ��m*/ "1��)�i2(�a�/~#͜�:(<��� ��	
� � � 0��k ���@�3��k ���3����k�*1~ͳ���3�kDE���k S���k C���kES���kTA����k�:(G!e�(~#��"��q����:%!&�g�K$�No:'�o����ɯ���:(��0��G��S�C$�ͪ�/�G� ���������u���� �lͼܵ͖�l�����͖0��l����͖0��l͵ܼ͖0��l͵:%�̼͖Ԫ�l�]�� %^3 ��0^;�͋~�s���}͋�w����kDEL ���k SP ��k ��G��͸�[(�3͍��kESC ��ͅ����͍͋���w����k ����ͅ��3�͍���[( *1��K$�NG:%�2(�)ɯ2$2%2(�!%!$4{��76 �!%!$~�(5��s7�͵�k
====== DEFAULT MENU ======================��g�k     1  Delay time (1/10 sec)
     2  Echo flag
     3  Alternate video

     X  Done ͥ͵���g�kChoice: �͵��1�2H3�X. ��g# ��~���g# ��~�(�kOF���kON���g# ��~� ��*/��g�kHold time for messages which flash on screen (1/10 sec):   �G�0�8�
0
 ��w�]ͮ�s�g�kEcho file movement commands to alternate window? (Y/N)     ��͵�Y(�N(ͮ�s>�w�]���g�kHigh-light bytes in active window which differ from alternate? (Y/N)    ��͵�Y(��N(�ͮ�s͵�k

                    COMMAND KEY INSTALLATION FOR BCOMP 3.0


BCOMP commands are letters, puctuation, controls, or metakey/key
combinations.  VIEW and EDIT mode lists are scanned separately, allowing
a different command set in each mode.

VIEW mode command key assignments should avoid "0".."9", "-", and "#" or
you lose some "instant move" commands.

EDIT mode commands should be control characters if you expect them to work
while entering text in the ASCII field.  Letter commands cannot use the hex
characters 0-9, A-F.  Key definitions from the TCAP are used for cursor
movement and could conflict with some key choices, e.g. ^K or ^J.  The arrow
keys are scanned AFTER the installed command key list, so your choices will
override them.

Strike Any Key   �G��[/!% ~!A w!0 ~!@ w�k   ... Saving�\ ���5 >*-�P£�H ͵ͥ�{*��k No fil���6
>���q�kNo ZCPR3 EN��t�kRead/Write Erro��q�kBCINSTAL - Command key installation for BCOMP 3.0
  Syntax:  BCINSTAL [bcomp.com] �q�k Only for BCOMP 3.0 �q:i ��2,�:,2i \ �'� <�\ � 2]y�������J����� ���q��~#���(�(�3���ͅ�͍��k���k? (Y/n)��{͵�N(>Y�3�k��{�G� 0�@�a��{��_��A��[87�?�����#(##� �#���^#V���kFile: �\ ͱx�A�3y�ͳ��k�����k�~#� �3��!]  ���!!e  ���*-~��( "/ ��#���>�2)��Meta-ke�Top of Fil�End of Fil�Next Scree�Previous Scree�Next Lin�Back Lin�Next Byt�Back Byt�Go to Recor�Go to Addres�Set New Offse�Auto Compar�Input More Fil�Hex Cal�Echo to Both Screen�Toggle Alt Vid Displa�String Searc�Look Agai�Duplicate Bloc�Switch File�Next Screen Both File�File�Move Vie�Edit Mod�Exi�Hel�Hel�Cursor U�Dow�Right Ni�Right Byt�Lef�Alt lef�Switch File�Mark Bloc�Yank Bloc�Copy Bloc�Fill Bloc�ASCII/ HEX fiel�View Mod�BCOMP   COM             ������_� ���������� �(��������� /�������m���V#^#���������:c*hü���[j���[l��6�͝�����[n�ͫ�����[p��6�*d:a�W~�(��������*v�����[f�(�?:b��������������& �O�[z�������:`�g�:`�g ��gɠg�/�������[x�(��A�%-���%(�\ �8��O�D(L�2(C�3(;�.(+�+(*�>(�R(�I(�N ү�$,�}lg��0�g�|��8e�| |dͺ
ͺ�0��/�0��Gz�0 �A(�8x��~�(#�\ ~#�8�z�����O*�|�(�+ �~�(G��� ���������� �����"�|�(� "\�|�(D~�!8?� ~2^#~2_#~2` a ��͢��:^O	��͢� ��������!a6 #�s#r#�6 #s#r#�6 #�� �����s#r#�~#���\ �#��  ��~�(��# 	~� #���� 	������###�w����*�1 ����" *�|�(~#fo������ �0�x��� �*�|�(^#V#~������ͱ�(G! N͜����"��|�� >Z�� ��z�(* >�O>��G>Z��  �v���z�� ��|�� ��������! ~��#~��3ENV����Y ��X�������������� ��O�G�����>���������� rr# �������� �ѷ����O� ���������>.�8������� �8������&d�3&
�3�G����.��,0��g}� �|�> (��0G�8|���a��{��_ɘ                                    