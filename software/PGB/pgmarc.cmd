DO PGOVR1
@  6,18 SAY "**** MARCHIATURA PER PRE-CANCELLAZIONE ****"
@ 13,40 SAY CHR(201)+$(LDEMO,1,20)+CHR(202)
@ 13,42 SAY "CONDIZIONE"
@ 14,40 SAY CHR(195)+$(LDEMO,1,20)+CHR(196)
@ 15,40 SAY $(GABBIA,1,21)+CHR(192)
@ 16,40 SAY CHR(199)+$(LDEMO,1,20)+CHR(200)
STORE "X" TO CICLO4
DO WHILE CICLO4<>"T"
DO PGOVR2
STORE "                    " TO KNOME
@ 20,2  SAY "INTRODUCI IL NOME DEL PROGRAMMA  " GET KNOME
READ
STORE TRIM(KNOME) TO KNOME
LOCATE FOR @(KNOME,NOME)<>0
STORE "A" TO CICLO5
DO WHILE CICLO5="A"
STORE STR(#,5) TO NRC
@  7,3  SAY "NUMERO RECORD:"+NRC
@  9,3  SAY "TIPO........"
@  9,16 SAY TIPO
@  9,40 SAY "N. DISCHI..."
@  9,52 SAY DISCHI
@ 11,3  SAY "NOME........"
@ 11,16 SAY NOME
@ 13,3  SAY "PREZZO......"
@ 13,16 SAY PREZZO
@ 15,3  SAY "PRODUTTORE.."
@ 15,16 SAY MARCA
@ 17,3  SAY "NOTE........"
@ 17,16 SAY NOTE
IF *=.T.
POKE 40,247
@ 15,46 SAY "CANCELLATO"
ELSE
POKE 40,247
@ 15,46 SAY " NORMALE  "
ENDIF
POKE 40,255
DO PGOVR2
POKE 40,247
@ 20,2  SAY 'PREMI "T" PER TERMINARE, "A" PER CONTINUARE, "C" PER MARCHIARE'
POKE 40,255
@ 22,2  SAY "PREMI UN TASTO PER CONTINUARE  " GET CICLO4
READ
IF CICLO4="A"
CONTINUE
LOOP
ENDIF
IF CICLO4="C"
DELETE
LOOP
ELSE
STORE "X" TO CICLO5
ENDIF
ENDDO
ENDDO
RETURN










RN

 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9                                                                                                                                                                                                                  INARE, "A" PER CONTINUARE, "C" PER MARCHIARE'
POKE 40,255
@ 22,2  SAY "PREMI UN TASTO PER CONTINUARE  " GET CICLO4
READ
IF CICLO4="A"
CONTINUE
LOOP
ENDIF
IF CICLO4="C"
DELETE
LOOP
ELSE
STORE "X" TO CICLO5
ENDIF
ENDDO
ENDDO
RETURN


        0055401058706/7470945    CRR Ag.20        5VLL FNC 39L22 H501V                                      0       01GL131 GENER