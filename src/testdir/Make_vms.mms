#
# Makefile to run all tests for Vim on VMS
#
#
#
# Authors:	Zoltan Arpadffy, <arpadffy@altavista.net>
#		Sandor Kopanyi,  <sandor.kopanyi@altavista.net>
#
#	Execute with:
#		mms/descrip=makefile_vms.mms
#				or
#		mmk/descrip=makefile_vms.mms
#
# NOTE: You can run this script just in X/Window environment. It will
# create a new terminals, therefore you have to set up your DISPLAY
# logical. More info in VMS documentation or with: help set disp.
#
#######################################################################
# Configuration section.
#######################################################################

# Uncomment if you want tests in GUI mode.  Terminal mode is default.
# WANT_GUI  = YES

# Comment out if you want to run Unix specific tests as well, but please
# be aware, that on OpenVMS will fail, because of cat, rm, etc commands
# and directory handling.
# WANT_UNIX = YES

# Comment out if you have gzip on your system
# HAVE_GZIP = YES

#######################################################################
# End of configuration section.
#
# Please, do not change anything below without OpenVMS experience.
#######################################################################

VIMPROG = create/term/wait mc <->vim.exe

.SUFFIXES : .out .in

SCRIPT = test1.out test2.out test3.out test4.out test5.out \
	 test6.out test7.out test8.out test9.out test10.out \
	 test13.out test14.out test15.out test17.out \
	 test18.out test19.out test20.out test21.out test22.out \
	 test23.out test24.out test26.out \
	 test28.out test29.out test31.out test32.out \
	 test33.out test34.out test35.out test36.out test37.out \
	 test38.out test39.out test40.out

.IFDEF WANT_GUI
SCRIPT_GUI = test16.out
GUI_OPTION = -g
.ENDIF

.IFDEF WANT_UNIX
SCRIPT_UNIX = test12.out test25.out test27.out test30.out
.ENDIF

.IFDEF HAVE_GZIP
SCRIPT_GZIP = test11.out
.ENDIF

.in.out :
	-@ write sys$output " "
	-@ write sys$output "-----------------------------------------------"
	-@ write sys$output "                "$*" "
	-@ write sys$output "-----------------------------------------------"
	-@ $(VIMPROG) $(GUI_OPTION) -u vms.vim -s dotest.in $*.in
	-@ diff test.out $*.ok;
	-@ ren test.out $*.out
	-@ del Xdotest.*.*

all : clean nolog $(SCRIPT) $(SCRIPT_GUI) $(SCRIPT_UNIX) $(SCRIPT_GZIP)
	-@ write sys$output " "
	-@ write sys$output "-----------------------------------------------"
	-@ write sys$output "                All done"
	-@ write sys$output "-----------------------------------------------"
	-@ deass sys$output
	-@ del x*.*.*
	-@ ty test.log

nolog :
	-@ define sys$output test.log
	-@ write sys$output "-----------------------------------------------"
	-@ write sys$output "                Test results:"
	-@ write sys$output "-----------------------------------------------"
	-@ write sys$output "This file has been generated automatically by "
	-@ write sys$output "MAKE_VMS.MMS with options:"
	-@ write sys$output "   WANT_GUI  = ""$(WANT_GUI)"" "
	-@ write sys$output "   WANT_UNIX = ""$(WANT_UNIX)"" "
	-@ write sys$output "   HAVE_GZIP = ""$(HAVE_GZIP)"" "
	-@ write sys$output "Default vimrc file is VMS.VIM:
	-@ write sys$output "-----------------------------------------------"
	-@ ty VMS.VIM

clean :
	-@ if "''F$SEARCH("*.out")'" .NES. ""  then del *.out.*
	-@ if "''F$SEARCH("test.log")'" .NES. "" then del test.log.*
	-@ if "''F$SEARCH("Xdotest.*")'" .NES. "" then del Xdotest.*.*
	-@ if "''F$SEARCH("*.*_sw*")'" .NES. "" then del *.*_sw*.*
