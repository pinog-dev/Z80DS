
10  INTEGER I,LN(1000),LASTLN,CURLN,INC,START
20  REAL T
30  STRING LINE$(120),INAME$,ONAME$
40  STRING ST$,OLINE$(120)
50  INTEGER NEWLN(1000)
60  INTEGER NUM,J
70  ERASE 
80  PRINT 
90  PRINT 
100  PRINT "               Softaid's Renumber Program for MTBASIC"
110  PRINT 
120  PRINT "    RENUM will renumber an MTBASIC program. The program must"
130  PRINT "be one that has been written out via the MTBASIC SAVE command."
140  PRINT "Enter the name of the file to be renumbered. The file"
150  PRINT "must have an extension of .BAS, but don't specify the"
160  PRINT "extension. RENUM will create a new"
170  PRINT "file with the extension of .RNM. Enter the file"
180  PRINT "name now: ";
190  INPUT$ ST$
200   INAME$=CONCAT$(ST$,".BAS")
210  OPEN 0,1,INAME$
220   IF  ERR >< 0 THEN  PRINT ERR$: STOP 
230  CLOSE 1
240   ONAME$=CONCAT$(ST$,".RNM")
250  OPEN 0,1,ONAME$
260   IF  ERR >< 0 THEN  GOTO 310
270  PRINT "File ";ONAME$;" already exists. Delete it (Y/N) ? ";
280  INPUT ST$
290   IF  ST$ >< "Y" THEN  STOP 
300  DELETE 1
310  CLOSE 1
320  PRINT 
330  PRINT "Enter new starting line number: ";
340  INPUT START
350  PRINT "Enter line number increment: ";
360  INPUT INC
370  '
380  ' Do Pass 1 on a line to get the numbers, make the conversion table,
390  ' and call pass 2 to output corrected lines.
400  '
410  GOSUB 630: ' Do pass 1
420  GOSUB 450: ' Translate line numbers
430  GOSUB 850: ' Do pass 2
440  STOP 
450  ' 
460  ' LN contains the line numbers in the program. Make
470  ' NEWLN contain the equivelant line numbers after renumbering.
480  ' The first entry in NEWLN will contain the renumbered line
490  ' number which corresponds to the non-renumbered line number in
500  ' the first entry of LN, etc.
510  '
520   CURLN=START
530  FOR I=1 TO LASTLN
540   IF  CURLN > 0  AND  CURLN < 32000 THEN  GOTO 580
550  PRINT 
560  PRINT "Renumbered line number out of range"
570  STOP 
580   NEWLN(I)=CURLN
590   CURLN=CURLN + INC
600  NEXT I
610  RETURN 
620  STOP 
630  '
640  '  Pass 1. Read each line and build a table of line numbers
650  '
660   I=1
670  OPEN 0,1,INAME$
680   IF  ERR >< 0 THEN  PRINT ERR$: GOTO 1690
690  FILE 1
700  INPUT$ LINE$
710   IF  ERR = 10 THEN  GOTO 810: ' Exit if end of program
720   T=VAL(LINE$): ' Get line number, if any
730   IF  T < 1 THEN  GOTO 700: ' Ignore blank lines
740   LN(I)=T + .01: ' No rounding errors allowed
750   I=I + 1
760   IF  I < 1000 THEN  GOTO 700
770  FILE 0
780  PRINT "The file has more than 1000 lines. RENUM can only"
790  PRINT "handle 1000 lines before overflowing its LN buffer."
800  STOP 
810  CLOSE 1
820   LASTLN=I
830  FILE 0
840  RETURN 
850  '
860  ' Pass 2. renumber the lines as needed.
870  '
880  OPEN 0,1,INAME$
890  OPEN 1,2,ONAME$
900   CURLN=START
910  FILE 1
920  INPUT$ LINE$
930   IF  ERR = 0 THEN  GOTO 980
940  CLOSE 1
950  FILE 2: PRINT "END": FILE 0
960  CLOSE 2
970  RETURN 
980   IF  LEN(LINE$) < 2 THEN  GOTO 910: ' Skip blank lines
990   IF  LINE$ = "END" THEN  GOTO 940
1000   OLINE$=MID$(STR$(CURLN),1,LEN(STR$(CURLN)) - 6)
1010   CURLN=CURLN + INC
1020   OLINE$=CONCAT$(OLINE$," ")
1030  FOR I=1 TO LEN(LINE$)
1040   IF  MID$(LINE$,I,1) = " " THEN  GOTO 1060
1050  NEXT I
1060   I=I + 1
1070   IF  MID$(LINE$,I,1) = "G" THEN  GOTO 1240: ' Possibly a GOSUB or GOTO
1080   IF  MID$(LINE$,I,1) >< CHR$($27) THEN  GOTO 1130: ' Comment?
1090   OLINE$=CONCAT$(OLINE$,MID$(LINE$,I,1)): ' Copy comment to output buf
1100   I=I + 1
1110   IF  I >< LEN(LINE$) + 1 THEN  GOTO 1090
1120  GOTO 1170
1130   OLINE$=CONCAT$(OLINE$,MID$(LINE$,I,1)): ' Copy statement to output 
1140  GOSUB 1380: ' Check for quotes
1150   I=I + 1
1160   IF  I < LEN(LINE$) + 1 THEN  GOTO 1070
1170  FILE 2
1180  PRINT OLINE$
1190  FILE 0: PRINT OLINE$
1200  GOTO 910: ' Get next line
1210   IF  MID$(LINE$,I - 1,1) >< ":" THEN  GOTO 1150
1220   OLINE$=CONCAT$(OLINE$,": ")
1230  GOTO 1070: ' Multilined statement next
1240  '
1250  ' A GOTO or GOSUB may have been found
1260  '
1270   IF  LEN(LINE$) < I + 5 THEN  GOTO 1130
1280   IF  MID$(LINE$,I,5) >< "GOSUB" THEN  GOTO 1330
1290   OLINE$=CONCAT$(OLINE$,"GOSUB ")
1300   I=I + 6
1305   IF  MID$(LINE$,I,1) > "9" THEN  GOTO 1130
1306   IF  MID$(LINE$,I,1) < "0" THEN  GOTO 1130
1307   I=I - 1
1310  GOSUB 1470: ' Fix line number after GOSUB
1320  GOTO 1210
1330   IF  MID$(LINE$,I,4) >< "GOTO" THEN  GOTO 1130
1340   OLINE$=CONCAT$(OLINE$,"GOTO ")
1350   I=I + 4
1360  GOSUB 1470: ' Fix line number after GOTO
1370  GOTO 1210
1380  '
1390  ' Ignore anything found in quotes
1400  '
1410   IF  MID$(LINE$,I,1) >< CHR$($22) THEN  RETURN 
1420   I=I + 1
1430   IF  I > LEN(LINE$) THEN  RETURN 
1440   OLINE$=CONCAT$(OLINE$,MID$(LINE$,I,1))
1450   IF  MID$(LINE$,I - 1,1) >< CHR$($22) THEN  GOTO 1420
1460  RETURN 
1470  '
1480  ' Convert a line number to the new, renumbered value. On entry,
1490  ' I points to the start of the line number in LINE$. On exit,
1500  ' append the new line number to OLINE$ and set I to point
1510  ' to right after the line number in LINE$.
1520  '
1530   I=I + 1
1540   NUM=0
1550   IF  I > LEN(LINE$) THEN  GOTO 1590
1560   J=ASC(MID$(LINE$,I,1)) - $30
1570   I=I + 1
1580   IF  J > -1  AND  J < 10 THEN   NUM=NUM * 10 + J: GOTO 1550
1590  FOR J=1 TO LASTLN
1600   IF  LN(J) = NUM THEN  GOTO 1650
1610  NEXT I
1620  FILE 0
1630  PRINT "Line number ";NUM;" not found."
1640  STOP 
1650   ST$=STR$(NEWLN(J))
1660   ST$=MID$(ST$,1,LEN(ST$) - 6)
1670   OLINE$=CONCAT$(OLINE$,ST$)
1680  RETURN 
1690  STOP 
END
+! 96 ?U?????!?s?????F#N#??S?F#N?!?sF#N#???V#^??!	 9~??G! 9~??O?_x?ny?x{?(?xy?x{?({?w#~#F