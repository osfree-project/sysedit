#
# A Makefile for WinOS/2 System Editor
# (c) osFree project,
#

PROJ  = sysedit1
PROJ1 = sysedit
TRGT = $(PROJ1).exe
DESC = Windows System Editor
srcfiles = $(p)maxedit$(e) # $(p)toolbar$(e)
DEST = os2$(SEP)mdos$(SEP)winos2$(SEP)system

# defines additional options for C compiler
ADD_COPT = -sg -DDEBUG=1
ADD_LINKOPT = LIB commdlg.lib

HEAPSIZE = 18k
STACKSIZE = 18k

!include $(%ROOT)tools/mk/appsw16.mk

TARGETS = $(PATH)$(PROJ1).exe

.ico: $(MYDIR)res

$(PATH)$(PROJ1).exe: $(PATH)$(PROJ).exe $(MYDIR)$(PROJ1).rc
 @$(SAY) RESCMP   $^. $(LOG)
 @wrc -q -bt=windows $]@ $[@ -fe=$@ -fo=$^@ -i=$(MYDIR) -i=$(%WATCOM)$(SEP)h$(SEP)win
