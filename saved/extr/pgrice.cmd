DO PGOVR1
@  6,25 SAY "**** RICERCA PROGRAMMI ****"
STORE "X" TO CICLO4
DO WHILE CICLO4<>"T"
DO PGOVR2
STORE "                    " TO KNOME
@ 20,2  SAY "INTRODUCI IL NOME DEL PROGRAMMA  " GET KNOME
READ
STORE TRIM(KNOME) TO KNOME
LOCATE FOR @(KNOME,NOME)<>0
STORE "C" TO CICLO5
DO WHILE CICLO5="C"
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
DO PGOVR2
POKE 40,247
@ 20,2  SAY 'PREMI "T" PER TERMINARE, "C" PER CONTINUARE, "M" PER MODIFICARE'
POKE 40,255
@ 22,2  SAY "PREMI UN TASTO PER CONTINUARE  " GET CICLO4
READ
IF CICLO4="C"
CONTINUE
LOOP
ENDIF
IF CICLO4="M"
STORE 0 TO FLAG
DO PGINRC
DO PGOVR1
DO PGOVR2
LOOP
ELSE
STORE "X" TO CICLO5
ENDIF
ENDDO
ENDDO
RETURN










RN

 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9SAY NOME
@ 13,3  SAY "PREZZO......"
@ 13,16 SAY PREZZO
@ 15,3  SAY "PRODUTTORE.."
@ 15,16 SAY MARCA
@ 17,3  SAY "NOTE........"
@ 17,16 SAY NOTE
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
LOOP
ELSE
STORE "X" TO CICLO5
ENDIF
ENDDO
ENDDO
RETURN










