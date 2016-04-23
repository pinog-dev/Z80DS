�Z3ENV��*	���	Z3INS Version 1.5
 :] �/�5�  �	
Z3INS installs ZCPR3 utilities for a given environment

Syntax: 
  Z3INS envfile listfile
    Installs multiple files as listed in listfile for
    the environment contained in envfile
-or-
  Z3INS envfile filename
    Installs filename.COM for environment contained in envfile

Path search for the "envfile" is performed if it is not found
in the current directory.  The "envfile" name may be omitted;
if omitted, SYS.ENV will be assumed.  If filetype of "listfile"
or "filename" is omitted, .INS is assumed first and .COM second.
DU: and DIR: references are also accepted for these filenames.

 �:m � ��:y O!\ �l �j
!c��j
y2i e !l��u !o��!l u�j
ʹ	�
�\ ���
�}�o|���	=��	��5��	\ ͤ͹�A��5�	
 *File  ] �o	�	 Not Found* ���
��"����
z���{�	
 Invalid Environment Descriptor �}��U\ ����	!u\ �j
\ ��!e r���#¢!�"�*�"��f!re �j
í\ ͤ͹¼*���6"��* |�
���@�	
 Not Enough Free Memory for Installation
   Make Installation File Shorter �*��~�w#��D�ͦ
"�~�;����?\ ͋!] ~�?ʕ#�k\ ͤ͹���*�~#�
�O���	
 Ambiguous File Name Not Allowed:  ] �o	Å͓	~#�	���ʅ�
ʅ�ʅ� ��͠	��> ͠	y������	
  Installing File  ] �o	*��y��F�	 -- NOT a ZCPR3 Utility Å*�~���R�W��(###^��(#�_~�#���
��	 	> �G�j
Ï 	~#~�2|  *��%y�ª\ ��Å�	
 File Write Error �� ��j
�* ��z�
����	
 Memory Overflow ��\ ���� ���j
!� �� \ ����� ���j
!� ��	��� ��j
� 	�\ �	��%��	
 *Installation Complete* �Z3ENV SYS     ENVINSCOMPrint help	JP	Z,HELP�>�2}2~$կ��~#�:ʴ�,��!�à�~��
�A���A������<2}#~�:��?��2~#~�:����G~#�:��0���
��Ox�����G��x� ��2~��~�:�#~�,�"�!�:>?�':}G:~O�>����T~�.�N#�T�-�t�-��t�*�f>?�h#�T��#�l> �t�s ~��
���!ڢ�=��_��.��:��;��,��<��>ɾ������w � 
���������
����>�������������
�����
���������
�����������
�������
������	����� ~#��k	�	�U	͠	��B	�
�G	��G	��K	�	 �	�	y��	�	y�G>�G�O> ͠	�a	�	�������ͅ	>.͠	ͅ	������ Ġ		��>͠	>
͠	������O* .�	������������ 2�	� � 2�	��	����:�	_� :�	_ � �����;'����Y �� �X� ��������� �� � O�G������� ����H �)
������W�J
������H �?
�����W�J
����r#x��J
��j
�H 	�	����s
�	�	����H �s
������|�ړ

}�ړ
~#x�
�����	�	�~+x�
Î
�~#�ʳ
��
ʧ
+���~#�ʳ
��
·
ó
��O�	!�
���
#��
y���  	
��a��{��_��* }���
$. ��;FN2��2����22 ���22���:��<��<�g~��l͹͌##�<��x2_���y2_ ����3�=�m��:_� :_ � :G:O�������}2��:�ʳ͹##��x�y��������=�~�$��:<=G#~+�$��:O���� ����*�	 ^#V#~�ѷ�"��	������ <G���G! N�X� �Y � �����͹##��x�y��������=�~�$��:<=G#~+�$��:O���� ����*�	 ^#V#~�ѷ�"��	������ <G��