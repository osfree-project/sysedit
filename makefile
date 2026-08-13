#
# A Makefile for osFree Janus System Editor
# (c) osFree project
#

DESCRIPTION = osFree Janus System Editor
TARGET_API=WIN
TARGET_VERSION=310
SOURCES = maxedit
DEST = os2$(SEP)mdos$(SEP)winos2$(SEP)system

# defines additional options for C compiler
ADD_COPT = -sg -DDEBUG=1
LIBS = commdlg
ADD_RCOPT=-i=$(%WATCOM)$(SEP)h$(SEP)win


!include $(%ROOT)tools/mk/build.mk

