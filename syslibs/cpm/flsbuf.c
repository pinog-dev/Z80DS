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
 *	_flsbuf for Zios stdio
 */

int _flsbuf(uint8_t c, register FILE * f)
{
	if (f->_flag & _IOWRT) {
		if (f->_base == (char *)NULL) {
			f->_cnt = 0;
			if(write(fileno(f), &c, 1) == 1)
				return(c);
			f->_flag |= _IOERR;
			return(EOF);
		}
		
		if (write(fileno(f), f->_base, BUFSIZ) != BUFSIZ)
			f->_flag |= _IOERR;
		
		f->_cnt = BUFSIZ-1;
		*f->_base = c;
		f->_ptr = f->_base+1;
	} else {
		f->_flag |= _IOERR;
		f->_cnt = 0;
	}

	if (f->_flag & _IOERR)
		return(EOF);
	return (c);
}

