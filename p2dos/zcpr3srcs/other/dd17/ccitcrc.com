1�:] � ������>2�
�2~2�O!��!  y�#�r$s%#�$:m 2�
�F�`!� "�
!  "�
r�>���>��<ʏ1�����:�
k�:�
�Fº*�
}�"�
>�͈��{r>��<��Q>��!rQ� 	�̈́�>�����:�
�S��:f ��`!e �r�`!] 9� ̈́ ̈́��w\ >��~<ʘ!��"�
! "�
*�
|� �=>����(>���ʛ\ >����c!} �!� ~#"�
*�
"�
*�
"�
� �O!�	~�W$^�"�
��*�
�:> �g*�
�:͂�`�`:�
�R���U���!} ~#�#�<�:e ��\ >!��:�
�U��!� ~�#�����#����~��#��*�
��� �s+r\ �>������>���<����*�
|��:e ��\ >!��:� ��!��!  ��4�#4�#4���g)�4>��g>��o�(��> �g|�I> �g}��R���
�[��0�g>�g>
����_��́�������g�w:�
�F�{�*�
�*�
}�|���!  "�
�*�
{�z���!�
���r>������ *�
"�
Ý ���Õ� ��!  "�
�!�
��*�
#"�
�� ���2h 2| :�
 !\ ���
̈́:\ 2�
>�+�!�
̈́\ >��>�!�
\  ̈́�\ ��<7�=������Ɓo& ��
́�] ́�2h 2�
!| w#6�#6�#6���z��z�~��$#� ~#x���Ø���:�
�F��!�
}�¯"�
>�͈�£r�>��<���>��]��  > ��A���������_>������>O� 
++No Directory Space for CRC File++ 
++No Disk Space for CRC File++ 
++Cannot Close CRC File++ 
++Aborted++ ++File Not Found++ ++Open Failed++ ++File Read Error++  Installed  Removed Done CCITCRC Ver. 1.2 by C.B. Falconer

usage: CCITCRC ambigfn [option]

The 2nd value output is that which, if patched
into the last 2 file bytes, will cause a ZERO
crc. Most CRCKLIST files can thus be eliminated

Only one option parameter may be entered
"F" causes the output to be written to CCITLIST.CRC
"S" causes system files to be checked
"V" causes checksum installation in safe files only
"U" installs unconditionally, may foul the file
"R" removes checksums installed by the V option

ex:  d>CCITCRC *.* V
installs checksums in all safe files
 --------- CCITCRC Ver. 1.2 ---------
  CTRL-S to Pause, CTRL-C to Abort

 xxxxxxxx.xxx  CCITcrc =  CCITLISTCRC                      CCITLIST$$$�t