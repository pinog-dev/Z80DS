This LiBRary contains the source files for ZCNFG.CFG. MCFG.COM
is an ALIAS which invokes ZMAC and ZML to assembly and link the
source files and make ZCNFG.CFG. It is invoked by:
	MCFG ZCCFG ZCNFG
ZCCFG.SRC is the main source file; the LIB files are referenced
in ZCCFG through INCLUDE statements. The TXT files are the LIB
files with the same name. The LIB files were made from the TXT
files using the public domain program TEXT2DB.
                                                                      