DO PGOVR1
@  6,27 SAY "**** STAMPA ARCHIVIO ****"
@  9,15 SAY "PRIMA DI EFFETTUARE LA STAMPA ASSICURATI CHE LA"
@ 10,15 SAY "STAMPANTE SIA ACCESA, QUINDI PREMI UN TASTO...."
STORE " " TO RISP2
DO PGOVR2
@ 21,2  SAY "PSEMI UN TASTO  " GET RISP2
READ
@ 12,15 SAY "ORA POSIZIONA LA CARTA ASSICURANDOTI CHE LA TE-"
@ 13,15 SAY "STINA DI STAMPA SIA *ESATTAMENTE* ALLINEATA CON"
@ 14,15 SAY "IL MARGINE SUPERIORE DEL FOGLIO...."
STORE " " TO RISP2
POKE 40,247
@ 21,2 SAY CIR(7)+"PREMI UN TASTO  " GET RISP2
READ
POKE 40,246
@ 17,27 SAY "<<<  ESEGUO LA STAMPA  >>>"
POKE 40,255
SET PRINT ON
SET SCREEN OFF
SET CONSOLE OFF
? CHR(27)+"@"+CHR(15)
REPORT FORM PGBTAB
SET CONSOLE ON
SET SCREEN ON
SET PRINT OFF
RETURN

















SCELTA  "
@ 22,59 GET SCELTA PICTURE "99"
READ
DO PGOVR2
DO CASE
CASE SCELTA="01"
STORE 1 TO FLAG
DO PGINRC
LOOP
CASE SCELTA="02"
STORE 0 TO FLAG
DO PGINRC
LOOP
CASE SCELTA="03"
DO PGRICE
LOOP
CASE SCELTA="14"
DO XGORDI
LOOP
CASE SCELTA9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 99 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 99 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 99 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 