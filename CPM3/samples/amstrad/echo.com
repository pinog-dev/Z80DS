�[ECHO v1.03 for CP/M 3. (c) J. Elliott, 1994.
�                                       � �0�L:� ���o& � 6 !� ͵��"͛�a:] �/ʔ�-¿:^ �H¿��S�� ��  0	�S�~��� �#õ!] ����[!] ����_:����m*͵�_~��_#�%��^��"���A��[�� �)��~#��_�~#��_��_:��C��K��S�{�3���� ���� ���� ���m������1� ���:��-�� ��c2��� <���� �� <��*�"��� ��c�� <�\�S�! �"���c��S�:��-�� ��c2����� <�6���� <�C��c"��� �� <�C�� <�C!  "���c���S�6��S�����	� �����*~#���%���d�"���<�d"�!'"���� |�<ʕ2��*��d ��͹ y2* 	"���*#������#����#�~#���%�����^�����"���d��S�!�6 #���c
�S�_�m-�� !36 #�'� <�J� '� <�K>2J!J�~#��_���)���P�2����*� ���������=�k����:�͑:�͑�\�͚���
ڣ��0_� �ONOFF$ $�  P  $echodat$$$                                                                                                                                                       WARNING: Can't delete temporary file.
$WARNING: Temporary file not found. CONOUT:=CRT
$WARNING: Can't make temporary file.
$CP/M Plus is required for this program.
$�  CON:CNO:LST:PRN:AUX:AXO:OUT:                                                                                                                                                                           Type ECHO /H for help.
$ECHO v1.03 for CP/M Plus

Syntax:

ECHO ON                  Turns screen output on
ECHO OFF                 Turns screen output off
ECHO { >out: } "message" Prints the message
ECHO { >out: } <infile   Prints the file infile

If the >out: modifier is present, it sends output as
follows:
(not present) - screen on, output printed, screen off
CON:          - output printed (no screen on/off)
LST:          - output sent to printer
AUX:          - output sent to aux device
OUT:          - output sent to user-defined output

The infile is just a normal text file.
[more]$      
The message is formatted thus:
All characters are printed in lower case, except when
they are preceded by a %. So,  A -> a  but  %A -> A.
The character after a ^ is a control character.
The character " is not printed.
To get any of the characters %, ^, " printed, put
a % in front of them.
$ERROR: Input file not found.
$