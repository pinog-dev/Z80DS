0 ! $"Enter ZFILER macro script: "
A   sys:alias $p
C ! $!sys:crc $p
D ! $!sys:sdd $p $$w
E   $d$u:;$!sys:edit $f;$h:
K ! $!sys:crunch $p $d$u:
L ! $!sys:ldir $p
N   $d$u:;sys:nulu -o $n -l;$h:
P ! prot $p $" Protect attributes: "
S ! $d$u:;$!sys:sq $f;$h:
T   $d$u:;if $t=lbr;ldir $n;run libtype $n;else;if $t=?z?;lt $f;else;if $t=?q?;lt $f;else;sys:vtype $f;fi;fi;fi;$h:
U ! $d$u:;if $t=?q?;$!sys:uf $f;else;$!sys:uncr $f;fi;$h:
X ! $d$u:;$n $" Command Tail: ";$h:
Z ! $d$u:;$" Command to perform on file: " $f $" Tail: ";$h:
#
ZFILER COMMANDS (06/11/87)

	0. on-line macro
	A. alias
	C. crc
	D. date/time display
	E. edit
	L. ldir
	K. crunch
	N. nulu
	P. protect
	S. squeeze
	T. type (vtype/lt/libtype)
	U. uncompress (uf/uncr)
	X. execute file
	Z. perform command on file

                                                                                      