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

/*
 *	_filbuf for Zios stdio
 */

int _filbuf(register FILE * f)
{
	f->_cnt = 0;
	if (!(f->_flag & _IOREAD))
		return(EOF);

	if (f->_base == (char *)NULL) {
		uint8_t	c;
	
		f->_cnt = 0;
		if(read(fileno(f), &c, 1) == 1)
			return(c);
	
		f->_flag |= _IOEOF;
		return(EOF);
	}

	if ((f->_cnt = read(fileno(f), f->_base, BUFSIZ)) <= 0) {
		if (f->_cnt == 0)
			f->_flag |= _IOEOF;
		else
			f->_flag |= _IOERR;
		return(EOF);
	}

	f->_ptr = f->_base;
	f->_cnt--;
	
	return ((unsigned)*f->_ptr++);
}
