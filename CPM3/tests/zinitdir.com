�Z3ENV  INITDIR  ��s�	1�	��S� 2l	!� F(:#~�/�o� (��	(�2k	�A8�Q8F�c1�	!�S��S�l�Y�K�)�P�2k	!m	yw#���S�l�A8�Q8>�S�2m	:� ��S:m	_� ��X:m	�A�_�7  � !G	�w w#�G	� <��X�O͏|��c^#V�St		 ^#V���!�	�V�^�Sn	�:��:��Sp	  :� �����S����v�� ���B	� �:H
�! c�<!�	�[n	  ~��(�!(}� o0$z� ��!��!�  �x(�*n	��R��<!v	6!#��!B	 ��!B	 ���6 #6 #��6 :� 	�S!�	  �Sr	�[n	~��(+�!('�y������D��_ �~ � �!v	�~�����  �z� �y�()� �!v	�~�y������D��o& � ��R(6�#���*r	�[p	��R(!� `6�#��!v	  ����� �
�DL�St�<��2k	����!  �V�^ >��R?8���=(�����f�n	DM͵��[t	�DM��������� ����Cu���!  �Kr	�V�^ >��R?8���=(�����f�n	DM͵��[t	�DM��� ��  �
�([ �Kr	�Cr	����:l	O � ͏�� ��)��S:k	��Q�{�	��	� �S��S�l�Y��)�� �(��a��{��_� ~#��        ���!��6 	�q�p� �s�r��?�n�f������!��6 
�q�p�?������!��6 �q�p�?������!��6 �q�p�?������!��6 �?�~������!��6 �?�~������!��6 �q�p�s�r�?�n�f����� �� ���

Illegal drive name$
Directory already initialized$
Not enough directory space on disk$
INITDIR  Ver 1.2  12 apr 93
Custom version for Z80 Darkstar (NEZ80) by P. Betti 20141017

   Initializing a Disk for P2DOS Date/Time Stamps which already 
   contains files marked with DateStamper Stamps may invalidate
   the existing DateStamper Times and Dates!
$
     Confirm Initialize Drive $: $(Y/[N]) : $

Initialize which Disk for P2DOS Date/Time Stamps? : $

Initialize another Disk? $ $
Directory read error$
Directory write error$
Usage: Prepare disk for CP/M-3 (P2DOS) style date/time stamping

Syntax:
	INITDIR		- Enter Interactive Mode
	INITDIR d:	- Initialize drive "d"
	INITDIR //	- Display this message

Note: ZCNFG may be used to configure a flag to suppress
      drive confirmation prompt and status messages
$
$
--> DateStamper !!!TIME&.DAT File Found <--
	Proceed anyway $
...Reading Directory Entries...$
...Writing Initialized Directory...$
p1$
p2$
p3$
p4$
p5$      !!!TIME&DAT                                             