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
 *	fread for Zios
 */

int fread(void * buf, uint16_t size, uint16_t nitems, FILE * stream)
{
	register char *		ptr;
	register unsigned	count;
	short			c;

	count = size * nitems;
	ptr = buf;
	while (count)
		if ((c = fgetc(stream)) == EOF)
			break;
		else {
			--count;
			*ptr++ = c;
		}

	return (nitems - (count+size-1)/size);
}
