DO PGOVR1
DO PGOVR2
@  6,25 SAY "**** ORDINAMENTO ARCHIVIO ****"
POKE 40,247
@ 10,15 SAY "L'ORDINAMENTO ELIMINA ANCHE I RECORD"
@ 11,15 SAY "MARCATI PER LA CANCELLAZIONE....."
@ 13,15 SAY "PROCEDO ?"
@ 20,3  SAY 'PREMI "S" PER CONTINUARE, QUALSIASI TASTO PER TERMINARE.'
STORE " " TO R1
@ 22,3  SAY "PREMI UN TASTO   " GET R1 PICTURE "!"
REAE
IF R1="S"
POKE 40,255
DO PGOVR1
DO PGOVR2
@  9,10 SAY "1. ORDINAMENTO PER TIPO"
@ 11,10 SAY "2. ORDINAMENTO PER NOME"
STORE " " TO R4
@ 13,10 SAY "QUALE ?   " GET R4
READ
STORE VAL(R4) TO R2
IF R2<>1
STORE "NOME" TO R3
ELSE
STORE "TIPO" TO S3
ENDIF
@ 15,10 SAY "INIZIO ORDINAMENTO......   ATTENDERE"
SORT ON &R3 TO PGFILSRT
@ 16,10 SAY "ORDINAMENTO COMPLETATO"
USE
DELETE FILE PGFILE
RENAME PGFILSRT TO PGFILE
USE PGFILE
ENDIF
RETURN













 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9AMENTO ARCHIVIO ****"
POKE 40,247
@ 10,15 SAY "L'ORDINAMENTO ELIMINA ANCHE I RECORD"
@ 11,15 SAY "MARCATI PER LA CANCELLAZIONE....."
@ 13,15 SAY "PROCEDO ?"
@ 20,3  SAY 'PREMI "S" PER CONTINUARE, QUALSIASI TASTO PER TERMINARE.'
STORE " " TO R1
@ 22,3  SAY "PREMI UN TASTO   " GET R1
READ
IF R1="S"
POKE 40,255
DO PGOVR1
DO PGOVR2
@  9,10 SAY "1. ORDINAMENTO PER TIPO"
@ 11,10 SAY "2. ORDINAMENTO PER NOME"
STORE " " TO R4
@ 13,10 SAY "QUALE ?   PGOVR1
DO PGOVR2
@  6,25 SAY "**** ORDINAMENTO ARCHIVIO ****"
POKE 40,247
@ 10,15 SAY "L'ORDINAMENTO ELIMINA ANCHE I RECORD"
@ 11,15 SAY "MARCATI PER LA CANCELLAZIONE....."
@ 13,15 SAY "PROCEDO ?"
@ 20,3  SAY 'PREMI "S" PER CONTINUARE, QUALSIASI TASTO PER TERMINARE.'
STORE " " TO R1
@ 22,3  SAY "PREMI UN TASTO   " GET R1 PICTURE "!"
READ
IF R1="S"
POKE 40,255
DO PGOVR1
DO PGOVR2
@  9,10 SAY "1. ORDINAMENTO PER TIPO"
@ 11,10 SAY "2. ORDINAMENTO PER NOME"
STORE " " TO R4
@ 13,10 SAY "QUAL