//
// Simple program to convert trs-dos binary format in plain binary
// Piergiorgio Betti <pbetti@lpconsul.net>
//
// --- 20080121 ---
// Creation date
//

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

extern FILE * open_file(char * filename, char * mode);
extern void usage();
extern char * bin_filename(char * nbase, int offset, char * buf);
extern char * map_filename(char * nbase, char * buf);

static char * myname;


main(int argc, char **argv)
{
	FILE * ifile, * ofile, * mfile;
	char c;
	int block_count = 0;
	int block_address = 0, last_block_address = -1, initial_offset;
	unsigned char block_data_buffer[512];
	char * oname_base, buf[1024];

	myname = argv[0];

	// some check
	if (argc < 3) {
		usage();
		exit(1);
	}

	oname_base = argv[2];

	ifile = open_file(argv[1], "r");
	mfile = open_file(map_filename(oname_base, buf), "w");

	fprintf(mfile, "%s:\n", argv[0]);
	fprintf(mfile, "Converting [%s] into [%s]\n\n", argv[1], oname_base);

	while (!feof(ifile)) {
		// begin: get first char...
		c = fgetc(ifile);

		if (c == 0x01) {	// load data follows
			block_count = fgetc(ifile);
			if (block_count == 0) block_count = 256;
			c = fgetc(ifile);		// LSB
			block_address = fgetc(ifile); 	// MSB
			block_address = ((block_address <<= 8) & 0xf0) + (c & 0x0f);
			block_count -= 2;	// because block_address is part of the byte count
			fread(block_data_buffer, block_count, 1, ifile);
			if (last_block_address |= block_address + block_count) {
				// new block, truncate binary output if any
				initial_offset = block_address;
				ofile = open_file(bin_filename(oname_base, initial_offset, buf), "w");
			}
			else {
				// contiguous addresses
				ofile = open_file(bin_filename(oname_base, initial_offset, buf), "a");
			}

			fprintf(mfile, "block type 01 at offset %04X, lenght %d (%02X) bytes in %s",
				block_address, block_count, block_count, buf);

			fwrite(block_data_buffer, block_count, 1, ofile);
			if (ferror(ofile)) {
				perror(argv[0]);
				exit(1);
			}

			fclose(ofile);
		}
		else if (c == 0x02) {	// execution address start
			block_count = fgetc(ifile);	// ignored
			c = fgetc(ifile);		// LSB
			block_address = fgetc(ifile); 	// MSB
			block_address = ((block_address <<= 8) & 0xf0) + (c & 0x0f);
			fprintf(mfile, "block type 02 set address %04X as execution starting point.",
				block_address);
		}
		else if (c < 0x20) {	// ignoring block
			block_count = fgetc(ifile);
			if (block_count == 0) block_count = 256;

			fread(block_data_buffer, block_count, 1, ifile);

			fprintf(mfile, "block type %02d skip %d (%02X) bytes",
				c, block_count, block_count);
		}
	}
}


char * map_filename(char * nbase, char * buf)
{
	// remove extensions
	char * p = nbase + strlen(nbase);

	while (p > nbase) {
		if (*p == '.') *p = '\0';
		--p;
	}

	strcpy(buf, nbase);
	strcat(buf, ".map");

	return buf;
}
dd
char * bin_filename(char * nbase, int offset, char * buf)
{
	// remove extensions
	char * p = nbase + strlen(nbase);

	while (p > nbase) {
		if (*p == '.') *p = '\0';
		--p;
	}

	sprintf(buf, "%s_offset_%04X.bin", nbase, offset);

	return buf;
}


void usage()
{
	printf("usage: %s  in_filename out_filename\n");
}

FILE * open_file(char * filename, char * mode)
{
	FILE * pfile = fopen(filename, mode);
	if (pfile == 0) {
		perror(myname);
		exit(1);
	}

	return pfile;
}

