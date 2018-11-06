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
 *	fclose - for CP/M stdio
 */

int fclose(register FILE * f)
{
	if (!(f->_flag & (_IOREAD|_IOWRT)))
		return(EOF);
	
	fflush(f);
	
	f->_flag &= ~(_IOREAD|_IOWRT|_IONBF);
	if (f->_base && !(f->_flag & _IOMYBUF)) {
		_buffree(f->_base);
		f->_base = (char *)NULL;
	}

	if (close(fileno(f)) == -1 || f->_flag & _IOERR)
		return EOF;
	else
		return 0;
}
