1	� G!\ ~=�x2�#~� 2=+�!ͱ��!		"�!�"�"�:=��XX�����:�� ʱ�2�2�2�2�� � �� <@�ê*�6 #6 #�! "�=Ɓo& ͱ� <:=��D*�$. "�: 2����)�+*�"�� � �� <��U��+*��:���7� �� �� *�4�#�*�� "�����1����G������*�"�� � :�!��##��j�� <U�ø�� �� < �ø*��:����� *�N#Fx���p+q�� ��� ���G���)*�� "�Ç���+�@�)�������� <�a�*� "��*��ȯ2�!�6 #�w#�6 #6 #6 ��*� "��*��ȯ2�!���S>.�_�!�_�S���_� ���� �� < �ø*��:����� *�N#Fx���p+q�� ��� ���G���)*�� "�Ç���+�@�)�������
l� !m^ #"j6 ��*j�"j�ͧ�6 �\�@�5��5G�:�5���  �d�.�@�d�#w#w#w�"j� +~�?�\�Tx����*�rͅ�u>�#w�dͅ��|���aړ�{ғ�_� ���_��.��:��>п�~��� �#ç~#±�� ��� ��!�:l =_:<������ ��  ���� :�_� !�:\ ����#��>��D|��}��	� �ñ:<��  W����   FILENAME SYNTAX INCORRECT$
This program copies one or more files (ala PIP) between
two diskettes alternately mounted in the logged-drive.
Procedure: 
Enter a filename (may be wildcard like *.*) then Return
The name is validated and stacked in a list.
To end the list and begin the actual copying,
Enter a null line (simply a return)
$

Although drive qualification is allowed on the command line,
You may not specify a drive letter at this point; ABORTING$
Enter filename (just RETURN begins copying): $
FILENAME NOT FOUND$
UNEXPECTED OPEN FAILURE (COPY INCOMPLETE) OF FILE: $
I/O ERROR WHILE READING: $
Mount INPUT  Diskette and type RETURN$
Mount OUTPUT Diskette and type RETURN$
ABNORMAL TERMINATION OF ENTIRE PROCESS$
OUTPUT DISK OR DIRECTORY FULL, WRITE ERROR IN FILE: $
Mount SYSTEM Diskette, type RETURN to WarmBoot$                                                                                                                        