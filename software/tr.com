� TR.COM (11/18/85 Version)

$Copyrights:
	Date:	By:
	1980	Ward Christensen
	1985	Alan W.  Warren

õ���>U���	:����2��
ͺ�q~#��ɯGq!up#z���1\!�^:l 2o:] � ʶ!g0��U��{��� 2�!d ͅ2&ͅ2qͅ2K!'͓!L�  �	� !  9"�1�͚��&Ͳ'Ϳ�2G(2I(1��q'͎&!�>�G:T(!O͍!h�����Z'?
 �.;^?ABCDEFHIKLMNOPQRSUXZ`$4�Vb�/s#����#j_8}�~Y�
#~�ʿG!��g'#~�¨#~��E�¨�g'��&"addr" means a hex address, or a .symbol
[xx] means an optional operand.	multiple addresses must be separated by
	either comma's, spaces, dots, colins, or semi-colins

 .		Sort symbol table
 ;		Dump comments table
;addr,COMMENT	Put in comment
;addr,		Delete comment

 ?		List memory manager settings
 ^addr,byte	Poke addr with value of byte
 A[addr][,addr]	Attempt to find DB
 B[addr][,addr]	Build dflt syms
 Caddr		Dump ctl from addr
Caddr,K		Kill ctl entry
Caddr,type	Add ctl entry
		B = Byte	E = End
		H = Hex byte	I = Instructions
		S = Space	W = Word
 D[addr][,addr]	Dump memory
D=nn		Change default dump size
DS[.symbol]	Dump symbol table
 Eaddr,.symbol	Enter/replace symbol into table
 F		Find next occurrence
Faddr[,startaddr]
		Find occurrence of address following start
 H		Help with commands
Hx		Help with command "x"
 Iaddr,offset	Increment every symbol from
		addr on, by "offset"
 K.symbol	Kill symbol entry
KCaddr,addr	Kill all control entries
		between addresses
 L[addr][,addr]	List (Disassemble)
L=nn		Change default # lines in list
 M  addr,addr	Mathmatics operations on addresses
 N		No address comments toggle
 O		Show current offset
Oaddr		Set offset for disassembly
 Paddr,addr	Prolog: ORG first addr, EQU's
		for all "outside" symbols
 Q any command	Quiet mode (no console out)
 Rname.type	Read .COM, .DOC, .CTL, OR .SYM file
 Sname.type	Save .ASM, .DOC, .CTL, OR .SYM file
 Uaddr		Use addr for comments table
 X		Purge all symbols and control
 Z		Close .ASM file
  �Z'.	Sort symbol table		K	Kill entry
;	Dump comments table		L	List (Disassemble)
?	List memory settings		M	Mathmatics functions
^	Poke address with byte		N	No address toggle
A	Attempt to find DB		O	Show current offset
B	Build dflt syms		P	Prolog for ORG & EQU's
C	Alter control table		Q	Quiet mode (no console out)
D	Dump memory		R	Read file
E	Enter symbol into table		S	Save file
F	Find next occurrence		U	Use addr for comments
Hx	Help with command "x"		X	Purge symbols and control
I	Increment symbols		Z	Close .ASM file

 ��Z'Y/N purge all symbols & CTL? ͎&:T(�Y��N���
�9%��E�%��E�2%#��>2G(�a';
;DISASSEMBLY OF: 
;   !8(�g'�a'.COM
;

	ORG	 ��z��!{��$>H��&��&��%��E�! 0##~��++~�#~�ڗ+~�#~����#F�#~+�A�#~���¤�F>2G(#~��&·�2$(�a':	EQU	 ��~����!+�~����!����!A(���#��7�����$>H��&��&�2G(##~̀!#�q'�}����>2I(T(!U(~#��#�,*�'��*("�'��9%�ʆ�S���=���,�g�%�*("�'���q�2%#��%�"�'�*�'�"�'*�'�"�'��E*�'�q'����$���%~��$#}��%}��%}���&�~� ھ���>.��&#}�����%ó��&��&"�':�'�:�'�҉�#�%#�"(����2%�S!V(~����#��"�*(�! 0^#V#~�����$�F#~��&#�&��&�q'�:J(�2J(�J�Z'No  �Z'addresses will print as comments
 �*�'��$��&��9%��s�%��E�"�'��9%��E�%��E�#�%��E�! 0##~��+~�+����~���~�w#~�w+##~#�oҰ$ð:H(�2\ 2h :V(� �E!U(�:� ~�@2\ ##] ���~��+#�.�+�~���.#�� > �+��9%��E�%��E��%��E*�'���z��]<�Es��9%��E�%��E�"(��%��E�"(��&!�~����&�Z' =  N#F#�!���*(�*(��!J(~�6�� ��&!J(�w�Æ+  -  *  �/   MOD$ANDOR XOR DM!  �xGyO����>�)����$��ɯ{�oz�g�z�g{�o�z�g{�o�z�g{�o�"(!(6  ů{_zW5��> � )D�*(�Ox�G��O	�!(?�1>2M(�2N(�q>2N(�q�2N(2M(�2G(:!(2"(2#(�9%�ʬ�,ʠ�=�5�%�"(��ʬ�2%#�%�"	(�2#(:K(<¶2K(�q':#(���:"(=���*	(:(�:(��:M(��*(�*�'~��'�#��~��'#��+���*(�>B���>I��:K(�=�.=:G(�>2G(��&��&�2G(�*(|�ʄ*(��Rڄ:G(�>�2G(:K(���&�2G(##F>2G(��&���s#~�\��&��&�e��&:K(�ʐ��&ì:K(�ʱ�¬>2G(��&>-��&�a';

 >�2K(*(�͚+ڿ###~2 (��I���&���>�2K(�2��I�+�E��#^#V�*(�͛�"(�2G(��S�N�Hʦ�Bʦ�W�~��&�Z': INVALID CTL ENTRY
 ���2G(ì#�%{��E2!(~#���2%Ð�:(/o:(/g#>2G(�a'DS	 |��!}��$>H��&��&�"(ì>2G(�a'DW	 *(�*�'^#V�� *(##"(��&ì�2%(<2G(�a'DB	 *(�*�': (�H~���
��� ����)�
����!>H��&:%(�2%(���0��&#�*(#"(�:(��
:(�ʔ*(��N#Ҡ:%(�2%(�Ҡ>,��&õ>'��&:%(<2%(~��&~�'��&#�*(#"(�:(��W:(�ʏ�*(��N#�ҏ:%(<2%(�#҇��|+~#� ʏ~� ڇ��6>'��&��>'��&��&ì�Z'
Memory open to  * +��$��&�9%����%�"(*�'"(�����%��E*�'"(*(��q'*(~#"(���~������+��$���%��:�'/_: (/W�͛>2G(�a'END
 �2G(:H(��=>�j&�(&�2H(�Z'++ASM FILE CLOSED++
 ����:] � �E!e &(x������'������t�E!�Ó!�:] � �E���&>.��&>��!&(ʶ =«e ~#��&»��&�_ �~#fo�Vd�E�T�ED�:H(�!��]�E! 0�Z'
SYMBOL ͘*(��$�Z'
CURRENT PC	=  *(��$�Z'
PROGRAM OFFSET	=  *�'��$*(|��m*(�Z'
COMMENT ͘*(��$! *�Z'
CONTROL ͘~#�##<+++��$��&͚��Z' TABLE	=  ��$͐͐: (W:(���$$. "�'�Z' --> SETTING OFFSET =  ��$͐:($��. �Z'-> SETTING COMMENT ͘�j͐��&7�͐%�! *Ϳ%  ��P�,�D�:�4��0�))))�o�Ϳ%�#s#r#Ϳ%w#�6�#6��! 0�"(##6 �] !8(��$6 ͐%�*�'|�0��� � ��� \ � �ʂ���$�*�'���$�>E��� � 7����*(�"(6�#6���Z'++NO, THAT WOULD OVERLAY THE DISASSEMBLER
BECAUSE OFFSET IS TOO SMALL:  �s͐%�Ϳ%���	����
��Ws#r#�# Ϳ%�	�Q��Qw#�>�p��  � ��ʽ�:�i��0�))))�o�Ϳ%�ʽ�Z!��]��͊�x��>2H(�2G(�&�Z'++WRITING .ASM ENABLED
USE Z COMMAND OR E CONTROL TO CLOSE FILE++
 �! 0�&^#V#~#G�� �(> �j&~�j&#�
>�j&>
�j&��>�j&�(&z��$�j&z��$�j&{��$�j&{��$�j&��*(##6 *(���&! *^#V#z�<�~�(>,�j&~�j&>�j&>
�j&#�Z>�j&�(&�Z'++NO FILE ACCESSES PERMITTED UNTIL .ASM CLOSED
 ��Z'++UNEXPECTED EOF
 ��9%�ʼ�%�ʶ�2%#~�����͚+��###�Ѿ��2O(͚�@�wʖ�K�E��m���! �~#�+<�:w#�/�%+++����w�E��! *~#�##<�K###�!���+~{��]z��]`i�s#r#:O(w���!�:O(͍���IBWSHE��#�##w�! *~#�+<7�#z�+�°{���###Ý͚ÿ! *�q'^#V#z�<���m���N#��~��&#��>:��&��&���%�%���$>,��&�~��&��&#ÿ���9%��v�%#��p�2%��R�.͟��~��*(s#r#� �#w��9#"(6�#6��p�*(~#�+<7�#z�+�f{��##~̀!#�U�R�y*(�q'^#V#z�<����$���&F#~��&��&#�y~#�<�+�T]##~̀!# ~#O�<A±�++"(��*(: =��7|���Z'++COMMAND IGNORED++
++Issue "UNNNN" to use address NNNN
as the start of the comments table
 ��Z'++COMMENT TABLE IS FULL++
 ��9%��E�%��E�:(��}"("(6�#6���Z'
++ADDRESS TOO LOW++
 ���>2G(*(��N#��H�����#®:K(<��&���&>:��&:J(�����&:$(�����&*(��$��&����~!�Á+-*/()�2G(>L2L(�%�%*(��$>2G(��&���>2G(͛*(�*�'"(~G����x���m���w���M���t"���\!.GÄ�t"#~G++"(!�Ä�t"!�GÄ�t"!GÄ! ~��N!�O#~�#~2O(#~�.�n!~�@�a"� ��&��*(:O(_�<̀!"(��&:O(�?�!��_ ����&*(��G ��!��!Ù!�5!�A!�M È �V �� �!�!�/!�� �R"�X"��!��!�$"�*"�"�7"��HACI ��ADC ��ADD ��HADI ��ANA ��IANI �ĊC.  �͊CALL�/ CMA �? CMC ��CMP ��HCPI �' DAA �	DAD �DCR �DCX �� DI  �� EI  �v HLT ��HIN  �INR �INX �J.  �ÍJMP �:�LDA �
LDAX�*�LHLD��LXI �@MOV �GMVI �  NOP ��ORA ��IORI ��HOUT ��PCHL��POP ��PUSH�� R.  � RAL � RAR ��RET � RRC � RLC ��RST ��SBB ��HSBI �"�SHLD�� SPHL�2�STA �STAX�7 STC ��SUB ��HSUI �� XCHG��XRA ��IXRI �� XTHL�� EXX � EXAF�VDJNZ�VJR  � VJRNZ�(VJRZ �0VJRNC�8VJRC  � BRLCR�BRRCR�BRALR�BRARR� BSLAR�(BSRAR�8BSRLR�@RBIT ��RRES ��RSETB �!�LXI �"�SI@D�#OINX �*�LI@D�+ODCX �4�INR@�5�DCR@�6�MVI@���ADD@���ADC@���SUB@���SBC@���AND@���XOR@���ORI@���CMP@��OPOP ��@XTI@��OPUSH��APCI@��@SPI@�	DDAD@�F�LDI@�p�STI@ ��RLC@��RRC@��RAL@��RAR@�&�SLA@�.�SRA@�>�SRL@�@�BIT@���RES@���SET@ �C�SBCD�D@NEG �E@RETN�F@IM0 �G@STAI�K�LBCD�M@RETI�O@STAR�S�SDED�V@IM1 �W@LDAI�JDDADC�[�LDED�^@IM2 �_@LDAR�g@RRD �o@RLD �s�SSPD�{�LSPD��@LDI ��@CCI ��@INI ��@OUTI��@LDD ��@CCD ��@IND ��@OUTD��@LDIR��@CCIR��@INIR��@OTIR��@LDDR��@CCDR��@INDR��@OTDR�@CINP �ACOUTP�BDDSBC NZZ NCC POPEP M BCDEHLMA>2K(���!��&È �t"GxG�ͼ �\ >B��&��&~� �{ ��} >.��&> ��&î �t"*(:O(�?�ʮ ~� ڮ �~Ү ͅ!>'��&��&~�
ڼ ��!>H��&�0��&>P2L(*(~͙!��&*(#^#V��N#�� :N(��� ���~"�� ��&:J(������&�z�>0��&z��#!��!{��$>H��&>N2L(�� >M2L(�� {�
ڼ ��!�!�G �� *(~�ü *(~��!��&��!*(�*�'"(�#"(�a'DB	 ͋ ��&��&>2K(*(~�!/ �o�$��>'��&��'��&���&���&*(~����!~����ʾ!��ʾ!>S��&>P��&�a'PSW �*(~��!*(~!? �̀!~��&����$�>0��&���$�5!��&��!�t"��t"�5!�"�t"��t"��!��&����>-��&�گ /<ï �t"�"�t"��t"ͮ �">2K(�t"�*(̀!##��N"%��� �a"��&�R"��&�� �*(�*�'~���X�*(#"(~G�!R(�: �ҕ"��_> �W>-Ø":L(w#z��${��$6H!R(�~�-±"��"ڻ"s#r����*(T]x��o|� g"(##6 ++DM*({���"z���"��"��s#r#p�#w��"���! 0��##�~#��D#��0#�:#O��'�)#�D#�~#�o�#$�#�++�ѷ�O��'�#�D#H��'�D#�#�++"(��7�! 0~#��\#~��k##~�7�#�o�Q#$�Q##~#G��7��9%�%���#�ñ"!U(~�C�$��#��"�EDM##~�o|� g#�*({�­#z�ʴ#ã#`i"(##6 ��D%#��#�.��#��E�-��#�A�E�[�E +�~#�$��#�+��#�-��#�0�
$�:��#�A�
$�[��#+���!V(�%����&$�%��E����}�|��E�͚��͚�>$### 0y�Ox�G�~6�#x��H$�m��q':�(��! 0�2�(##�N�G#��W$T]	##~#��W$�?Ҍ$���'ڔ$ý$O��'�ڽ$��>2�(~�O�++��!�(��$��O��$�(���$�^ #�g$w#��$����$w#���$w#���
��$��0����$��&���$��&|��$}��$> ��&#�D%�%�.�"%�-ʃ%�A�U%�[�E��#���"�T%^#V�~��E%��E!T(#�D%�<%�~��!O%Á	 ,;:�  �D%����0�E�:�u%�A�E�G�E��0�))))�o�#�X%�%�z/W{/_���! "(�2| \ � �<7��Z'<-- FILE NOT FOUND ���*(|���%��\ � ���!� ��%~#"(����&�Z'++UNEXPECTED EOF
 �>w��%�\ � \ � <�E�2| !� "(��\ � ��T&\ � <��Z'++CLOSE ERROR
 ��Z'++WRITE ERROR
 ��*(w,"(�����\ � ��T&!� "(������&R(>N
� !S(^ #6!S(#~���&�aک&�{ҩ&�_wé&~��&#��&���&>;�>,��&>	��&��&>;��&>*��&��&>��&>
�	�':$(�����	'>	�+'> 2$(>	�+'��'>�2$(>�
�+'�:$(<2$(����_�:I(�� �:H(!G(�{�j&{�
�V':#(��V'!"(5���ɯ2G(2I(��g'��~��&#~��g'����� �ʭ'� �ʎ'��&��Z'
ABORT Y/N  � �_�Y�  �����ɯ20! 0"(!�)6I#6�#x���'>2U(*(|��"(6�#6����#��'ɷ��	����
�� ��?ɀ     0                           *  CTLSYMCOMDOCASMSYSTEM   +-*/()                                                         