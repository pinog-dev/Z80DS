�8Patch program - patches COM files with CMP files.
��� �0ڼ: =2�-�� :] � ��/ :^ �H�$	���:m �/�� ���:e �  !CO"e >M2g :u �  !CM"u >P2w !\ � ��!l � �����\ � <�P=������	o& ��~�!\ �U\ #� �j�*} "�MD: ��5�"��R�5�!����*�� !���9��*�ͅ=������� <�K�� �� !���P��ͷ�@�8�ͷ�-gͷ�eoͷ�eWͷ�e_�'�p�� ͅ �� ��R�"�ͷ�eͷ�egͷ�eo�4�p2���(*���{ͷ�eͷ�egͷ�eo�4�p2�*�^w{2��� :�͔ ��:�͔ ��:�͔ͷ(_�����
 ����kj����l !� ��!l �U!BA"u >K2w ���l � <(l � <ʓ\ !� ��\ � <ʞ!��U�!��K�͔�(!������Y���Y��Y���  �����O:��y���O:��y���O:��y��:� _ !� �6 �~��#�-(�/ �~#�Q(	�C �2��2������
	�Y!���"/!���Q$!���:!���b!�!����� �l� �!���s�!�������͔)��~͔M�l ����\ �����l ��M�������������	� ��������� <��������������~����@_��:��#^˻���.��#^˻������0��G?��:?��A��4�g��4�_��|���Lg}���L����:8������� T] 6 �������:�g. ���R�<����������|͔}͔�������ͧ�ͧ����0�:_���_�����:�����o& <2�~�����2������ �����! 6��������� ������C�"��S��y<ʅ|��y<ʋ|��[���!� "��yO|�y<ʋ�[��S�z��gy�ʈ�2�yO|�y<ʋ�����[�� ���>�>�>�>�>��C�"��S��y<|��y<ʈ|��[���!� "��yO|�y�ʑ�ʋ<ʈ=�[��S�z�»�yO|�y<ʑ��Option C failure. Expected value=$. Actual value=$ - $ records loaded.
$ - Opened successfully.
$
All values altered.
$Z80 Processor Required.
$CP/M v3.0 or above required.
$Only one file name entered. $No filename entered. $File patched satisfactorily.
$ - File not found.
$ - File is read only.
$ - File is too long.
$ - Read error.
$ - File empty.
$ - File ended in middle of line.
$ - Bad hex digit.
$ - Cannot delete.
$ - Cannot rename to $ - Disk full.
$ - Directory full.
$ - Write error.
$For help type COMPAT /H
$COMPAT v1.00

Syntax:
        COMPAT comfile cmpfile {/C} {/Q}

 This program overlays "cmpfile" on "comfile". "Cmpfile"
is made up of a number of lines in the following format:
ADDR EV NV {Comment}
Where: ADDR is the hex address. EV is the expected value
(see /C option below) and NV is the new value for the
contents of this address.
 The /C option checks the real contents of every address
against the expected value, and abandons the program if
they differ. The /Q option stops progress reports being
displayed.
 If there are no filetypes, the first filetype defaults to
COM and the second to CMP.
$                                                                                                                                                                                                                                                                 �                                                                                                                