global	_BFlag
psect	data
_BFlag:
defw	0
global	_PFlag
_PFlag:
defw	0
global	_FDx
_FDx:
defw	1
global	_RemEcho
_RemEcho:
defw	0
global	_Online
_Online:
defw	0
global	_Filter
_Filter:
defw	0
global	_ParityMask
_ParityMask:
defw	0
global	_Msgfile
_Msgfile:
defb	90
defb	77
defb	80
defb	46
defb	77
defb	83
defb	71
defb	0,0,0,0,0,0,0,0,0,0,0,0,0
global	_Phonefile
_Phonefile:
defb	90
defb	77
defb	80
defb	46
defb	70
defb	79
defb	78
defb	0,0,0,0,0,0,0,0,0,0,0,0,0
global	_Logfile
_Logfile:
defb	90
defb	77
defb	80
defb	46
defb	76
defb	79
defb	71
defb	0,0,0,0,0,0,0,0,0,0,0,0,0
global	_Cfgfile
_Cfgfile:
defb	90
defb	77
defb	80
defb	46
defb	67
defb	70
defb	71
defb	0,0,0,0,0,0,0,0,0,0,0,0,0
global	_Configovly
_Configovly:
defb	90
defb	77
defb	67
defb	79
defb	78
defb	70
defb	73
defb	71
defb	0
global	_Initovly
_Initovly:
defb	90
defb	77
defb	73
defb	78
defb	73
defb	84
defb	0,0,0
global	_Termovly
_Termovly:
defb	90
defb	77
defb	84
defb	69
defb	82
defb	77
defb	0,0,0
global	_Xferovly
_Xferovly:
defb	90
defb	77
defb	88
defb	70
defb	69
defb	82
defb	0,0,0
global	_KbMacro
_KbMacro:
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	48
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	49
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	50
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	51
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	52
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	53
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	54
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	55
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	56
defb	33
defb	0,0,0,0,0,0,0,0,0,0
defb	77
defb	97
defb	99
defb	114
defb	111
defb	32
defb	75
defb	101
defb	121
defb	32
defb	57
defb	33
defb	0,0,0,0,0,0,0,0,0,0
global	_Modem
_Modem:
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0,0
defw	0
defw	0
global	_Line
_Line:
defw	5
defb	78
defw	8
defw	1
global	_Pbufsiz
_Pbufsiz:
defw	2048
global	_Maxdrive
_Maxdrive:
defw	80
global	_Inhost
_Inhost:
defw	0
global	_Mci
_Mci:
defb	32
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0
global	_Sprint
_Sprint:
defb	32
defb	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
defb	0,0,0,0
global	_Chardelay
_Chardelay:
defw	0
global	_Linedelay
_Linedelay:
defw	0
global	_FirsTerm
_FirsTerm:
defw	1
global	_Baudtable
_Baudtable:
defw	110
defw	300
defw	450
defw	600
defw	710
defw	1200
defw	2400
defw	4800
defw	9600
defw	19200
defw	-27136
defw	-7936
defw	11264
defb	0,0
global	_QuitFlag
_QuitFlag:
defw	0
global	_StopFlag
_StopFlag:
defw	0
global	_Crcflag
_Crcflag:
defw	1
global	_XonXoff
_XonXoff:
defw	0
global	_XonXoffOk
_XonXoffOk:
defw	0
global	_Sending
_Sending:
defw	0
global	_Zmodem
_Zmodem:
defw	0
global	_Nozmodem
_Nozmodem:
defw	0
global	_Blklen
_Blklen:
defw	128
global	_Xmodem
_Xmodem:
defw	0
global	_Zrwindow
_Zrwindow:
defw	1400
global	_Bufsize
_Bufsize:
defw	16384
global	_TxtPtr
_TxtPtr:
defw	0
global	_Stopped
_Stopped:
defw	0
global	_Mspeed
_Mspeed:
defw	60
global	_Wheel
_Wheel:
defw	62
global	_Wantfcs32
_Wantfcs32:
defw	1
global	_main
global	ncsv, cret, indir
global	_Invokdrive
global	_bdos
global	_Invokuser
global	_getuid
global	_getvars
global	_Overdrive
global	_Overuser
global	_Userover
global	_strcpy
global	_addu
global	_ovloader
global	_printf
global	_fputc
global	__iob
global	_mswait
global	_Userid
global	_exit
psect	bss
F543:
defs	2
psect	text
_main:
call ncsv
defw -26
ld	hl,0
push	hl
ld	hl,25
push	hl
call	_bdos
pop	bc
pop	bc
ld	a,l
ld	e,a
rla
sbc	a,a
ld	d,a
ld	hl,65
add	hl,de
ld	(_Invokdrive),hl
call	_getuid
ld	h,0
ld	(_Invokuser),hl
call	_getvars
ld	(ix+-2),l
ld	(ix+-1),h
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+-1),h
ld	(_Overdrive),bc
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+-1),h
ld	(_Overuser),bc
ld	c,(hl)
inc	hl
ld	b,(hl)
inc	hl
ld	(ix+-2),l
ld	(ix+-1),h
ld	(_Userover),bc
ld	hl,(_Overdrive)
ld	a,l
or	h
jp	nz,l13
ld	hl,(_Invokdrive)
ld	(_Overdrive),hl
ld	hl,(_Invokuser)
ld	(_Overuser),hl
l13:
ld	hl,_Initovly
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_strcpy
pop	bc
ld	hl,(_Overuser)
ex	(sp),hl
ld	hl,(_Overdrive)
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_addu
pop	bc
pop	bc
ld	hl,0
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_ovloader
pop	bc
pop	bc
l14:
ld	hl,19f
push	hl
call	_printf
ld	hl,_Termovly
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_strcpy
pop	bc
ld	hl,(_Overuser)
ex	(sp),hl
ld	hl,(_Overdrive)
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_addu
pop	bc
pop	bc
ld	hl,0
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_ovloader
pop	bc
ld	(F543),hl
ld	hl,29f
ex	(sp),hl
call	_printf
pop	bc
ld	hl,(F543)
ld	a,h
or	a
jp	nz,l33
ld	a,l
cp	67
jp	z,l21
cp	82
jp	z,l20
cp	83
jp	z,l20
cp	85
jp	z,l22
l33:
ld	hl,_Termovly
push	hl
ld	hl,49f
push	hl
call	_printf
pop	bc
ld	hl,0
ex	(sp),hl
call	_exit
L5:
pop	bc
jp	l14
l20:
ld	hl,_Xferovly
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_strcpy
pop	bc
ld	hl,(_Overuser)
ex	(sp),hl
ld	hl,(_Overdrive)
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_addu
pop	bc
pop	bc
ld	hl,(F543)
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_ovloader
pop	bc
ld	hl,__iob+8
ex	(sp),hl
ld	hl,7
push	hl
call	_fputc
pop	bc
ld	hl,300
ex	(sp),hl
call	_mswait
ld	hl,__iob+8
ex	(sp),hl
ld	hl,7
push	hl
call	_fputc
L6:
pop	bc
jp	L5
l21:
ld	hl,_Configovly
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_strcpy
pop	bc
ld	hl,(_Overuser)
ex	(sp),hl
ld	hl,(_Overdrive)
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_addu
pop	bc
pop	bc
ld	hl,0
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_ovloader
jp	L6
l22:
ld	(ix+-4),0
ld	(ix+-3),0
ld	hl,(_Userover)
ld	(ix+-6),l
ld	(ix+-5),h
jp	l26
l23:
ld	de,(_Userid)
ld	l,(ix+-4)
ld	h,(ix+-3)
or	a
sbc	hl,de
ld	l,(ix+-6)
ld	h,(ix+-5)
jp	nz,L2
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_strcpy
pop	bc
ld	hl,(_Overuser)
ex	(sp),hl
ld	hl,(_Overdrive)
push	hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_addu
pop	bc
pop	bc
ld	hl,0
ex	(sp),hl
push	ix
pop	de
ld	hl,-26
add	hl,de
push	hl
call	_ovloader
pop	bc
pop	bc
jp	l24
l29:
ld	l,(ix+-6)
ld	h,(ix+-5)
L2:
ld	a,(hl)
inc	hl
ld	(ix+-6),l
ld	(ix+-5),h
or	a
jp	nz,l29
ld	l,(ix+-4)
ld	h,(ix+-3)
inc	hl
ld	(ix+-4),l
ld	(ix+-3),h
l26:
ld	l,(ix+-6)
ld	h,(ix+-5)
ld	a,(hl)
or	a
jp	nz,l23
l24:
ld	l,(ix+-6)
ld	h,(ix+-5)
ld	a,(hl)
or	a
jp	nz,l14
ld	hl,(_Userid)
push	hl
ld	hl,39f
push	hl
call	_printf
jp	L6
global	_grabmem
global	_cpm_malloc
global	wrelop
global	_cpm_free
psect	bss
F554:
defs	2
F555:
defs	2
F556:
defs	2
psect	text
_grabmem:
global csv
call csv
ld	hl,522
push	hl
call	_cpm_malloc
pop	bc
ld	(F555),hl
ld	hl,16394
ld	(F556),hl
l38:
ld	hl,(F556)
push	hl
call	_cpm_malloc
pop	bc
ld	(F554),hl
ld	a,l
or	h
jp	z,l36
l37:
ld	de,(F556)
ld	hl,-10
add	hl,de
ex	de,hl
ld	l,(ix+6)
ld	h,(ix+7)
ld	(hl),e
inc	hl
ld	(hl),d
ld	hl,(F555)
push	hl
call	_cpm_free
pop	bc
ld	hl,(F554)
jp	cret
l36:
ld	de,-1024
ld	hl,(F556)
add	hl,de
ld	(F556),hl
push	hl
ld	hl,59f
push	hl
call	_printf
pop	bc
pop	bc
ld	de,(F556)
ld	hl,-10
add	hl,de
ld	de,2048
call	wrelop
jp	nc,l38
ld	hl,0
ld	(F556),hl
jp	l37
global	_reset
global	__ctype_
global	wrelop
global	wrelop
global	_Currdrive
global	_Curruser
global	_setuid
_reset:
global csv
call csv
ld	e,(ix+6)
ld	d,(ix+7)
ld	hl,-32
add	hl,de
ld	(ix+6),l
ld	(ix+7),h
ex	de,hl
ld	hl,__ctype_+1
add	hl,de
ld	a,(hl)
and	3
or	a
jp	z,cret
ld	hl,(_Maxdrive)
call	wrelop
jp	c,cret
bit	7,(ix+9)
jp	nz,cret
ld	e,(ix+8)
ld	d,(ix+9)
ld	hl,15
call	wrelop
jp	m,cret
ld	l,(ix+6)
ld	h,(ix+7)
ld	(_Currdrive),hl
ld	hl,0
push	hl
ld	hl,13
push	hl
call	_bdos
pop	bc
ld	de,(_Currdrive)
ld	hl,-65
add	hl,de
xor	a
ld	h,a
ex	(sp),hl
ld	hl,14
push	hl
call	_bdos
pop	bc
ld	l,(ix+8)
ld	h,(ix+9)
ld	(_Curruser),hl
ld	l,(ix+8)
ld	h,(ix+9)
ex	(sp),hl
call	_setuid
jp	cret
_addu:
ret	
global	_deldrive
global	_index
_deldrive:
global csv
call csv
push hl
ld	hl,58
push	hl
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
call	_index
pop	bc
pop	bc
ld	(ix+-2),l
ld	(ix+-1),h
ld	a,l
or	h
jp	z,cret
inc	hl
push	hl
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
call	_strcpy
jp	cret
global	_dio
global	_bios
_dio:
ld	hl,3
push	hl
call	_bios
pop	bc
ret	
global	_chrin
_chrin:
ld	hl,1
push	hl
call	_bdos
pop	bc
ld	a,l
rla
sbc	a,a
ld	h,a
ret	
global	_getchi
_getchi:
ld	hl,255
push	hl
ld	hl,6
push	hl
call	_bdos
pop	bc
pop	bc
ld	a,l
rla
sbc	a,a
ld	h,a
ret	
global	_flush
_flush:
jp	l48
l49:
ld	hl,0
push	hl
ld	hl,1
push	hl
call	_bdos
pop	bc
pop	bc
l48:
ld	hl,0
push	hl
ld	hl,11
push	hl
call	_bdos
pop	bc
pop	bc
ld	a,l
or	a
jp	nz,l49
jp	_getchi
global	_purgeline
global	_mcharinp
global	_minprdy
_purgeline:
jp	l52
l53:
call	_mcharinp
l52:
call	_minprdy
ld	a,l
or	h
jp	nz,l53
ret	
global	_openerror
global	_wait
_openerror:
global csv
call csv
push hl
ld	e,(ix+10)
ld	d,(ix+11)
ld	l,(ix+6)
ld	h,(ix+7)
or	a
sbc	hl,de
ld	hl,1
jp	z,L7
dec	hl
L7:
ld	(ix+-2),l
ld	(ix+-1),h
ld	a,l
or	h
jp	z,l56
ld	l,(ix+8)
ld	h,(ix+9)
push	hl
ld	hl,69f
push	hl
call	_printf
pop	bc
ld	hl,3
ex	(sp),hl
call	_wait
pop	bc
l56:
ld	l,(ix+-2)
ld	h,(ix+-1)
jp	cret
global	_wrerror
_wrerror:
global csv
call csv
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
ld	hl,79f
push	hl
call	_printf
pop	bc
ld	hl,3
ex	(sp),hl
call	_wait
jp	cret
global	_allocerror
global	_perror
psect	bss
F578:
defs	2
psect	text
_allocerror:
global csv
call csv
ld	a,(ix+6)
or	(ix+7)
ld	hl,1
jp	z,L8
dec	hl
L8:
ld	(F578),hl
ld	a,l
or	h
jp	z,l59
ld	hl,89f
push	hl
call	_perror
pop	bc
l59:
ld	hl,(F578)
jp	cret
_perror:
global csv
call csv
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
ld	hl,99f
push	hl
call	_printf
pop	bc
ld	hl,3
ex	(sp),hl
call	_wait
jp	cret
global	_kbwait
global	lmul
psect	bss
F582:
defs	2
F583:
defs	2
psect	text
_kbwait:
global csv
call csv
ld	de,10
ld	l,(ix+6)
ld	h,(ix+7)
call	lmul
ld	(F582),hl
jp	l62
l63:
ld	hl,100
push	hl
call	_mswait
pop	bc
l62:
call	_getchi
ld	(F583),hl
ld	a,l
or	h
jp	nz,l64
ld	hl,(F582)
dec	hl
ld	(F582),hl
inc	hl
ld	a,l
or	h
jp	nz,l63
l64:
ld	de,27
ld	hl,(F583)
xor	a
ld	h,a
or	a
sbc	hl,de
ld	hl,1
jp	z,cret
dec	hl
jp	cret
global	_readstr
global	asamul
global	_readline
psect	bss
F586:
defs	2
psect	text
_readstr:
global csv
call csv
push	ix
pop	de
ld	hl,8
add	hl,de
ld	de,10
call	asamul
call	_flush
jp	l66
l67:
ld	de,10
ld	hl,(F586)
or	a
sbc	hl,de
jp	z,l66
ld	a,(F586)
ld	l,(ix+6)
ld	h,(ix+7)
inc	hl
ld	(ix+6),l
ld	(ix+7),h
dec	hl
ld	(hl),a
l66:
ld	l,(ix+8)
ld	h,(ix+9)
push	hl
call	_readline
pop	bc
ld	(F586),hl
ld	de,13
or	a
sbc	hl,de
jp	z,l68
ld	de,-2
ld	hl,(F586)
or	a
sbc	hl,de
jp	nz,l67
l68:
ld	l,(ix+6)
ld	h,(ix+7)
ld	(hl),0
ld	hl,(F586)
jp	cret
global	_isin
global	_stindex
_isin:
global csv
call csv
ld	l,(ix+8)
ld	h,(ix+9)
push	hl
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
call	_stindex
pop	bc
pop	bc
ld	de,-1
or	a
sbc	hl,de
ld	hl,1
jp	nz,cret
dec	hl
jp	cret
global	_report
global	_locate
_report:
global csv
call csv
ld	hl,42
push	hl
ld	l,(ix+6)
ld	h,(ix+7)
push	hl
call	_locate
pop	bc
ld	l,(ix+8)
ld	h,(ix+9)
ex	(sp),hl
call	_printf
jp	cret
global	_mstrout
global	_mcharout
psect	bss
F594:
defs	1
psect	text
_mstrout:
global csv
call csv
jp	l73
l74:
ld	a,(F594)
cp	33
jp	z,L15
cp	10
jp	nz,l76
L15:
ld	l,13
push	hl
call	_mcharout
ld	l,10
ex	(sp),hl
call	_mcharout
pop	bc
ld	a,10
ld	(F594),a
jp	l77
l76:
ld	a,(F594)
cp	126
jp	nz,l78
ld	hl,1
push	hl
call	_wait
pop	bc
jp	l77
l78:
ld	a,(F594)
ld	c,a
push	bc
call	_mcharout
pop	bc
l77:
ld	a,(ix+8)
or	(ix+9)
jp	z,l73
ld	hl,__iob+8
push	hl
ld	a,(F594)
ld	l,a
rla
sbc	a,a
ld	h,a
push	hl
call	_fputc
pop	bc
pop	bc
l73:
ld	l,(ix+6)
ld	h,(ix+7)
ld	a,(hl)
inc	hl
ld	(ix+6),l
ld	(ix+7),h
ld	(F594),a
or	a
jp	nz,l74
ld	hl,100
push	hl
call	_mswait
pop	bc
call	_purgeline
jp	cret
psect	data
19:
defb	10,87,97,105,116,46,46,46,0
29:
defb	10,76,111,97,100,105,110,103,32,111,118,101,114,108,97,121
defb	46,46,46,10,0
39:
defb	79,118,101,114,108,97,121,32,37,100,32,110,111,116,32,100
defb	101,102,105,110,101,100,46,10,0
49:
defb	70,97,116,97,108,32,101,114,114,111,114,32,105,110,32,37
defb	115,46,79,86,82,10,0
59:
defb	32,37,100,32,0
69:
defb	10,10,69,82,82,79,82,32,45,32,67,97,110,110,111,116
defb	32,111,112,101,110,32,37,115,10,10,0
79:
defb	10,10,69,82,82,79,82,32,45,32,67,97,110,110,111,116
defb	32,119,114,105,116,101,32,116,111,32,37,115,10,10,0
89:
defb	77,101,109,111,114,121,32,97,108,108,111,99,97,116,105,111
defb	110,32,102,97,105,108,117,114,101,0
99:
defb	7,10,69,82,82,79,82,32,45,32,37,115,10,10,0
global	_Prtbuf
psect	bss
_Prtbuf:
defs	2
global	_Dialing
_Dialing:
defs	2
_Userover:
defs	2
global	_MainBuffer
_MainBuffer:
defs	2
global	_Lastkey
_Lastkey:
defs	2
global	_Prtbottom
_Prtbottom:
defs	2
global	_Lastlog
_Lastlog:
defs	20
global	_Thefcb
_Thefcb:
defs	36
global	_Current
_Current:
defs	7
_Invokdrive:
defs	2
global	_Buf
_Buf:
defs	128
_Currdrive:
defs	2
global	_Buftop
_Buftop:
defs	2
_Overuser:
defs	2
global	_Prttop
_Prttop:
defs	2
global	_Prthead
_Prthead:
defs	2
global	_Prttail
_Prttail:
defs	2
_Userid:
defs	2
global	_Book
_Book:
defs	2
_Curruser:
defs	2
_Overdrive:
defs	2
_Invokuser:
defs	2
psect	text
defs	2
global	_Prtbottom
_Prtbottom:
defs	2
global	_Lastlog
