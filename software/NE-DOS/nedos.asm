;;
;; NE-DOS LOADER part I
;;
;; This will move the real loader in upper memory
;;

rsym	ndosboot.sym



	ORG TPA

	LD	HL,CODAREA
	LD	DE,LOADOFFS
	LD	BC,CODESIZE
	LDIR
	JP	GOBOOT

	;; That's all folks!


CODAREA	EQU	$	; here will be appended ndosboot code

