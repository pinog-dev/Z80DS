/
SHOWFUNC  v1.0 by Jim Apolis San Jose, Ca.
1��	� :� �ºP	�  � 
 USAGE: A>SHOWFUNC d:filename d:file1 d:file2 options<cr>

        Where "d:" is an optional drive specifier and "filename"
        is the name of the target COM file and "file1" and "file2"
        are part of the command tail for the target program
        and "options" are the options for the target program.
$
File not found
$
SHOWFUNC  v1.0
$COM!�e  ��kb6  ��\ � < ��F* "s"B��R" W�R.
_
W�OG	|}��B�:�=2� �* r��R��!������w��%-V������$'s������k��038;PSX[`chkI�6��������������v�YH��\b�h����{~�lx�����W        1e	� ��R���!� ����R0$�	�r*s"  � 
File to big
$��r\ �r�8�(�
File read error
$��\ �r�\ kb# ��!� N#~�9 (�#~�9( ��2� � #~�9  �� y2� � ���!� \ ��� ~#�� �9(�+l ��� ���> kb
 �����#~+�: ~�@##~�a8� �(/�9(*8,�:((�($�*(/�.  #���!	 ���� ����ɯ�kb ����=�>? �#��;��=��,��/��[��]��>��<���� �����:	�(	:	�(��*	}�(+"	��	��r�2	�	�r	
�r!	~#���G~#�a8� �H 
	��r��D ʉ� �ʉ0��S		É�T(1�U(0�G �(� �(0�z� �{2	>�2	��*s" ����� �>�2	ʀ� �ʀ�x�S	�[  ~#�a8� �H(�O(�B(	
�D(+y2	 >����>�:	O~#�a8� �08��
8�8���0��kb8� �_ 8����>2	�[		!��u��	�r�!��z���	�r���*		~#�� 8� >._���r���"		!	5 �À������:	� L!�� ����!�y�d8	0�d0�q#�d�
8	0�
0�q#�:w	��r������!��u	��r�����  ����:	� �!��u	��r��!	�z		�r������  z�z{��?�?�?�?�0�:8�w#���0�:8�w#�

Trnnnnn  Trace for nnnnn steps then break
Urnnnnn  Untrace for nnnnn steps then break
Grnnnnn  (Un)trace until specified BDOS function
Drnnnnn  Dump 128 bytes at address nnnnn
RETURN   Single step trace or untrace

"r" is an optional radix D, H, O, or B
"nnnnn" is an optional number
$
Invalid entry$
     $
*$
Func #0   $0  DE=    $
HL=     $A=  $        
                                                                                                                                                                                                                                                