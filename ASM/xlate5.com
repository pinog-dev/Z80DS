�21��@�q��	�I� !�	
 �kʁ!�

 �kʥ!�

 �k��! �k�!N �k�K!w �k�Z!� �k�f!� �kʌ!�~� ʐ�	ʐ�#�}>	�*� ~� ���	���� �;���'ºʺ�#Ú�͗��� �;���9Úº͗):��� =���	�� ��> ��>	����/>2��:�=2��>.͡	>
2�:�=2��x͗	>22��~���#�/~� �B�	��#�9!-~� �~�	�~�;� ~�:ʎ�	ʶ�ʶ�;ʶ� ʶ�#�\͗��p�:��Z���ʠ�)ʠ�Q§> �#�>:#�~���������)���Q��y���> ���>:�y�����> ���>	�͗~�;���"���z͗"��<��#͗~�E�O#~�Q�O#~�U�����#͗~�M�O#~�A�O#~�C�O#~�R�O#~�O�����#͗~�S�O#~�E�O#~�T����~��������	�k<�͇Õ 	~� ʠ�	ʠ�#>	�͇*�~�M#�!��/�Ø(HL) ͇*��~�B���D���H��P�#~�S�#~�W��##�!�!�!�!�/�#��ØAF BC DE HL :�!C�E�9!E�N�9!G�L�9!I~2�#~2��Z NZC NC!T�zÕRET   !`�iCALL  !t�z>,�ÕJP    ͋:��:�� ���
 	N#F���͇!��/��HL, ͇!���A, ͇!���A,( ͇*�~�B���D��Ø!�Ü!�ÜA,(BC) A,(DE) ͇!�/��>)�ØHL,( ͇*�~�M�$�!��/�#~�#ë��͇!���͇!<��8* ͇>(����!Q�t),HL ͇!_��SP,HL ͇>(����!{�/�Ø),A ͇*�~�Bʓ�DʙØ!�Ü!��/*�#Ø(BC),A (DE),A ͇!���DE,HL ͇!��/Õ(SP),HL *�~�;�����#��+~� ���	��#�*�z��{��~�#��>	23�'>	2E�'>	2W�'>	2�͇>2{Õ:] �?�'͗	���͗	>
2�>22�>2��~���!{~��m�#�a:m � ��22d
2��!\ �	��~� ʔ��!m ~+� ¡!\ �	��!u ~� ʷ��X͗	!���f͗	!���x͗	�~�@͡	>:͡	#��>.͡	���~#͡	����� ���>�2���É	�� ���I�� ���C�� >�2�!�"���É	͗	� �Z	�YE	x͗	�� �"�ͤ��#�pH ���������ͤ��~#ä~� ʠ�	�#×��!�;�~��,:+-/* );	 ���H 	��F#N#~������y����<�������#�����Ʌo�#�~#���> �������*�w�	�:�=���	�#:�<2�#:�=�A�� ��L!�>�"�2������� ���É	:����i>��Y�� �	�2�2�!-P�*�"���:���­���� �� =�e	����2����"��!�4���w��;	�	��� ڀ#+À��*��x�P���>;�>�2��9	:���9	:���	��Z	�		��;�	�>�2��9	�:���-	���'�9	�2��9	���'�9	>�2���#6
#6 ���"���x�P�>�>
��q��a��{��_��Y{͗	3͗	E͗	W͗	�͗	a�x͗	�͗	�  ��͡	×	����_� �����ANI  AND  CMA  CPL  CMC  CCF  CPI  CP   HLT  HALT JMP  JP   ORI  OR   RAL  RLA  RAR  RRA  RLC  RLCA RRC  RRCA STC  SCF  SUI  SUB  XRI  XOR  DB   DEFB DS   DEFS DW   DEFW SET  DEFL ENT  ENTRYNAM  NAME RAM  DATA ROG  REL   ANA  AND  CMP  CP   DCR  DEC  INR  INC  MVI  LD   ORA  OR   SUB  SUB  XRA  XOR   DCX  DEC  INX  INC  LXI  LD   POP  POP  PUSH PUSH  REQ  RNE  RLT  RGE  CEQ  CNE  CLT  CGE  JEQ  JNE  JLT  JGE   RC   RNC  RZ   RNZ  RP   RM   RPE  RPO   CC   CNC  CZ   CNZ  CP   CM   CPE  CPO   JC   JNC  JZ   JNZ  JP   JM   JPE  JPO   DAD  ADD  �ADD  ADD  �ADC  ADC  �SBB  SBC  �ADI  ADD  �ACI  ADC  �SBI  SBC  �IN   IN   �LDA  LD   �LDAX LD   �LHLD LD   �MOV  LD   PCHL JP   *RST  RST  3SHLD LD   ?SPHL LD   VSTA  LD   eOUT  OUT  eSTAX LD   XCHG EX   �XTHL EX   �IFC  IF   
ICL  *INCLLST  LIST MAC  MACRO" 

XLATE5  8080-to-Z80 Translator  10/27/84

 

XLATE translates an 8080 source code file into a new Z80 source code
file that is ready to assemble using the Microsoft M80 assembler.  To
use, all these examples expect 'HELLO' to be an 8080 source code file.
If a single name is used the output file will have the same name, with
a .MAC type.

	A>XLATE HELLO			(1)
	A>XLATE HELLO.ASM		(2)
	A>XLATE HELLO.ASM TEST.TXT	(3)

Two lines will be automatically added at the very start, for use with
the M80 assembler:  .Z80 and ASEG.  The first makes it unnecessary to
use the "/Z" when assembling and the second insures absolute addresses
when using L80 to load the 'HELLO.REL' file made by M80.

All source code will be capitalized.  Any comment line starting with an
asterisk will be changed to a semilcolon.

Colons will be placed behind all labels except EQU, MACRO and SET.  The
time it takes to run the program may double, depending where on the disk
the input and output files are physically located at the moment.  A dot
is shown each 10 pmg lines, 50 dots to a line - two are 1000 pgm lines.
 Source file:    destination file:  
	.Z80
	ASEG

 ++ Output file write error ++
 ++ No source file found, for help type XLATE ? <ret> ++

 ++ No directory space ++
 Output file already exists - delete it and continue (Y/N)?  
++ Aborting to CP/M ++
 Processing complete
 
  
The following pseudo-ops have been used in your source and have not
been fully translated.  You must complete the translation using an editor.
	Original:		Must Be Translated To:
  #ENDIF			ENDIF
  ICL			*INCLUDE
  LST  <operands>		LIST <valid ASMB operands>
  MAC <$parameters>	MACRO <#parameters>
	[ ... ]			MEND
	#macro-call		macro-call
          ASM                              MAC                                                                                                                         