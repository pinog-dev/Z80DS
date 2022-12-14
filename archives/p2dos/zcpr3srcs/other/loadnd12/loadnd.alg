Program Name: LOADND.COM

Author: Al Hawley, Znode #2, (213) 670-9465 (modem)

Program purpose: In a system with more than one drive, changing
a disk will very likely mean that a new NDR module must be loaded
in order for PWD to show the correct directory names. The only 
solution to date (to my knowledge) is to prepare an NDR file for
each case with MKDIR. Obviously, in view of the number of possible
combinations becomes very large: the number is a combinatorial
function of the number of drives and number of disks with unique
directories. The solution proposed is in two parts. 1) Place an
NDR format file on each disk. The file would contain only the directory
names unique to the disk on which it resides. 2) Use this program
to merge the data from the DISK NDR file with that from the data
in ZCPR3 Named Directory Buffer. The algorithm for merging must allow
for handling of potentially duplicate names and for the possibility
of overflow of the NDR buffer.

Invocation syntax:

	LOADND [DU:!DIR:][<FN>][.<FT>]       ( ! = EXCLUSIVE OR)

where the default values are current DU, FN=DISK, FT=NDR

Algorithm for LOADND:

Initial data:	current DU from operating system
		default FN.FT in local FCB
		target D, U, FN, FT from command tail
		location & size of resident NDR from Z3ENV

1)  Copy directory data from ZCPR3 Named Directory Buffer to ndrbuf:

2)  Read directory data from target disk into dskbuf:

3)  Replace all Drive specifications in dskbuf to D

4)  Delete all records in ndrbuf whose drive desigation is D

5)  Count the total number of directory name entries in dskbuf
    and ndrbuf.

6)  For each dir name in dskbuf, search for duplicates,
    recording pointers to each duplicate pair in a table,
    ignoring the case where the pointers are identical.

7)  If no duplicates found, go to step 8.

    [resolve duplicate names using one or more of a,b,c]
	a) delete the entry with lowest priority if number of
	entries > Z3NDIRS. Decrement number of entries.

	b) modify the name with lowest priority by appending
	to or replacing the last char with a character
	then repeating step 5 and changing characters until
	the duplication vanishes.

	c) present the duplicates on the screen for operator
	resolution by renaming and/or deletion. Keep number
	of entries correct.

	d) do nothing. Duplicates don't hurt anything, but the
	system will only find the first one!

8)  IF (number of entries > Z3NDIRS from Z3ENV)

        [resolve the problem: which names to delete?]
	alternatives:

	a) Screen presentation for operator choice. Don't
	let him exit (except for abort) until number of entries
	<= Z3NDIRS.

	b) Arbitrarily delete entries from D drive records, starting
	with user #31 down to 0 until size is reduced to Z3NDIRS

	c) Do nothing. Abort the operation, since it can't be done.

    ELSE
	Merge dskbuf & ndrbuf.
    ENDIF

9) Initialize Z3NDIR, then copy the merged directory name record
    list to it.

10) Done. Restore original drive & user and exit.
                                                                                                                     