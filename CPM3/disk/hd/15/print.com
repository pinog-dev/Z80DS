�Z3ENV �*	��1     � ���            � ���  !  9"6��"  "'"�;�g~2##~2G+~��2##~2* � ���o͓PRINT III,  Version 2.0 :] � ʝ�/�n͓
   PRINT file1,file2,...,filen o...
Options:
 E       Exact Print (expand tabs, form feed, no line
           or page numbers, no heading)
 F       Toggle File Name Display
 H@head@ Specify Page Heading (@ is any printing char)
 I       Inspect and Select Files First
 L       Toggle Numbering of Each Line
 M       Toggle Multiple Runs (MR=No TOF Msg)
 N       Toggle Numbering of Each Page
 Onn     Offset Printout by nn Characters from Left
 Snnnn   Skip to Specified Page before Printing
Examples:
   PRINT MYFILE.TXT,*.MAC LH'SAMPLE'
	    -- Number Lines, SAMPLE is Heading
   PRINT MYFILE.* S25E
     -- Skip to Page 25, Exact Print
At any time, ^C aborts PRINT and ^X skips to next file *6��Ͱ* ͸
��
͸
�/#~��L#� ʃO��ʝ�ʡÒ�!��GWX�y�!)�o�2 �*'w��E�F�H�ILMN'O/S7 :+/2+�:,/2,��*'�~��G#~����#��#��://2/�:)/2)�:./2.�:*/2*��6{20�>�2 �6�"!�z���2 �* ͸
"*���\ > *�8"\ ͅ\ �i*>��K�� x�ʍÃ$. "
�* |�
�2��������x���"`i"*�P*�*DM* ç��*~�,��#�R͓
** PRINT Abort **
 ���ix���� 6 x����:/��͓
--- PRINT File Inspect Mode ---
  Option  Function
  Y (def) Select File
     N    Don't Select File
     Q    Select Rest of Files
     S    Skip Rest of Files
 ͓
Select  ��
͓ -- (Y/N/Q/S)?  ͅ��͖�Q��S�%�N��6�x����͓
 Rest of Files Selected �6�x��%͓
 Rest of Files NOT Selected �~��:.�͓
File:  ��
͓ -- Set Top of Form  ͅ�����Ͷ���
*
"3�`:G:5�²͆͆ͻ	��o!  "##"%:25͓
Printing File  !��
��i�~�͓
File  ���
͓ NOT Found ��:O*
"1�@�4�@�4�*16��Ͱ*16�����*1�!� �~�#�Q�"1��K
*##"#*3 ~���	~��ʳ���#�	ʾ�������
����������u� �u�h	� 	�u���*
�u> �h	� 	y�¾�u���h	 �uͻ	 �u�h	"3>���y��u>�h	�u�h	�u:0G:��G:)��	x�Gx��~���#~��/	� 	��1	����> �h	><�h	><�h	>�h	>
�h	 : ���K
:)����     :  �G�]�y	����ʨ	: �x̪�
�:5=25�:25�*%#"%:��	�~��
�:5��	:�:��	û:�	:5��	Ì	G��: ��:���	͆��	�͆>ê: ��:)���*#�2��:  ���: ��9
:+��-
�K
:*��d
:,��y
�*'~�ĩ
�: ��͆Æ*%�*!|��}���2 �: ���:0��b
O> �h	�Y
��: ����Page  *%�2�: ��͠
!͔
>.ͪ͔
�~�ͪ#
��� --  �: ��͠
*'���~#� ʸ
+�~#� ��
���
+�����x�A͖y��͓:  #��
>.͖��
���~͖#��
�?�����r:��5H=͈:��3���4��*@�*@�*�?���"�?�"@�"@���2'�������O��:)�ɯ2*2)��y2+����~2(�:¥#:'��|��ʌ�Tʌ:'���:*��ѯ2)����~2(:(� 	��.»#����� 	�:+:)��͗��*��>?����#�?����͗�#���!)4����������,ʈ�#�:G~�A�$�@��Q2*#~� �����~� �>���P#�'~� �P��HO͹��Q2+���=����\����Vʈ�#�ʈ����z#�o��ʋ� 	��d�=�2+2*��~�!ڷ�=��_��.��:��,��<��>ȷ��;ɯ�� ~͗��#����Wy������������O½y����7��0��
��?�7ɯ���> ����y���~#��x��7��*�. ~�����*�, ~�����*�- ~����*� ^#V#~�ѷ���*�0 ~# ��_ ���"��G7������ <G��ʘG! N�X� �Y � ���������!  "��"I��x����~���~�w�*�#"��*I����"I��� 	��*�DM����7�~#�����
 ~���:F� �@�%�<��<:F� �::F�G~���<��>���           �21"$ 	"%��l��Ϳ����͖��"2͚*/�*2͇͇"4�=����* z�ҕ�������� ##~2+#~2,##^#V�#"-�#^#V�#"/�"'*%6 #w#��6?#�w#��!  ")���
�*%�� �����=*)DMɯ� �`� o& �C�@�X�@�*4���"4�* |�	��*)#")�=��
 	~��:1�U�@�����*)|�ʒDM*'���#�����ځ�������� 	�x��g�=��x�����"4�`i"!��*2s#r#�! ��x�ª*!"#�*#|g}o�� "#"*#"�*!}�|���*"*#�*}�o|�g"��|����*#"ͺ��*�*͟��*!DM*2"*4"*�*���D��Uy��9� �  *~#~*�*���*^#V*�����"*^#V*�*##"�y��1�����*2DM�+)	�+)	N�q#N�q��*2DM�+)	�+)	�N#F�^#V`i:1� ����	 	�	����������#�����~�O���#���~#�ɦ9{�_����{����:�a:           �  ~�0�Z�
�Z��bk)))���_z� W#�:{���q���ͅ������w �%�����������>��Ò��������������Ë�����ʽ������������������� ~#��%�	��D����
������� ����y�����y�G>�G�O> ͪ����������� �8����'�[��[d �[
 �[}�0ͪ����� }�o|�g�j�]}�o|�gy��~��~> ê y�0ê�>ͪ>
ͪ���͙����� ~#����	��͖����
��������Þ ÞÞy�ʞÞy�G>�G�O> ͖��Þ������� �����d�
��0͖���� ����_y��-��-> ͖{� y�0͖{��>͖>
͖��� Ҫ� ʪ�ʪ�ʪ�
ʪ�ʪ��>^ͪ��@ͪ�����* .~��/��������* .	�����������O* .������������O* .������������� 2�� � 2�������:�_� :�_ � �����  ���� �� � O�G������� �����~��"��w#�����H �.������W�O������H �D�����W�O����r#x��O��o�H 	�	����x�	�	����H �x������|�ژ}�ژ~#x������	�	�~+x�Ó����F#x���~#´�y��!���                                 ��Q �  θ            � � �0                                                                                                                       �!  PRINT              �?                                           ��a��{��_��*�}���$. ���                         