//
//  '########'########::'######:::'##::: ##'########'########:'#######:::'#####:::
//  ..... ##: ##.... ##'##... ##:: ###:: ## ##.....:..... ##:'##.... ##:'##.. ##::
//  :::: ##:: ##:::: ## ##:::..::: ####: ## ##:::::::::: ##:: ##:::: ##'##:::: ##:
//  ::: ##::: ##:::: ##. ######::: ## ## ## ######::::: ##:::: #######: ##:::: ##:
//  :: ##:::: ##:::: ##:..... ##:: ##. #### ##...::::: ##::::'##.... ## ##:::: ##:
//  : ##::::: ##:::: ##'##::: ##:: ##:. ### ##::::::: ##::::: ##:::: ##. ##:: ##::
//   ######## ########:. ######::: ##::. ## ######## ########. #######::. #####:::
//  ........:........:::......::::..::::..:........:........::.......::::.....::::
//
//  Sysbios C interface library
//  P.Betti  <pbetti@lpconsul.eu>
//
//  Module: c_bios header
//
//  HISTORY:
//  -[Date]- -[Who]------------- -[What]---------------------------------------
//  27.09.18 Piergiorgio Betti   Creation date
//

#include <cpm.h>


static long _ssize(register FILE * f)
{
	uint8_t	utmp, ftmp;
	long	x;
	register struct fcb *	fc;
	char	buf[SECSIZE];

	if(f->_flag & _IOBINARY)
		return _fsize(fileno(f));
	fc = &_fcb[fileno(f)];
	if((ftmp = f->_flag) & _IOWRT)
		fflush(f);
	utmp = fc->use;
	fc->use = U_READ;
	f->_flag |= _IOREAD;
	f->_flag &= ~_IOWRT;
	lseek(fileno(f), -(long)SECSIZE, 2);	/* seek one sector before end */
	f->_cnt = 0;
	fread(buf, sizeof(buf[0]), SECSIZE, f);
	x = ftell(f);
	fc->use = utmp;
	f->_flag = ftmp;
	if(f->_flag & _IOWRT) {
		f->_cnt = BUFSIZ;
		f->_ptr = f->_base;
	}
	return x;
}

fseek(register FILE * f, long offs, int ptr)
{
	long	roffs;

	clreof(f);
	if(!f->_base)
		if(lseek(fileno(f), offs, ptr) == -1L)
			return -1;
		else
			return 0;
	if(f->_flag & _IOWRT)
		fflush(f);
	switch(ptr) {

	case 0:	/* relative to beginning of file */
		break;

	case 1:	/* relative to current postion */
		offs += ftell(f);
		break;

	case 2:	/* relative toend of file- CP/M makes us work hard */
		offs += _ssize(f);
		break;

	default:
		return -1;
	}
	if((roffs = offs - ftell(f)) == 0)
		return 0;
	if(f->_flag & _IOREAD)
		if(roffs >= 0 && roffs <= f->_cnt) {
			f->_cnt -= roffs;
			f->_ptr += roffs;
			return 0;
		} else
			f->_cnt = 0;
	if(lseek(f->_file, offs, 0) == -1L)
		return -1;
	return 0;
}

long ftell(register FILE * f)
{
	long	pos;

	pos = lseek(f->_file, 0L, 1);
	if(f->_cnt < 0)
		f->_cnt = 0;
	if(f->_base && f->_flag & _IOWRT)
		pos += BUFSIZ;
	return pos - f->_cnt;
}
