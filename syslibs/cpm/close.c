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

int close(uint8_t fd)
{
	register struct fcb *	fc;
	uint8_t		luid;

	if (fd >= MAXFILE)
		return -1;
	fc = &_fcb[fd];
	luid = getuid();
	setuid(fc->uid);
	if (fc->use == U_WRITE || fc->use == U_RDWR || bdoshl(CPMVERS,0)&(MPM|CCPM) && fc->use == U_READ)
		bdos(CPMCLS, (uint16_t)fc);
	fc->use = 0;
	setuid(luid);
	return 0;
}
