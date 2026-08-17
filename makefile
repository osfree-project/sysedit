#
# A Makefile for osFree Janus System Editor
# (c) osFree project
#

DESCRIPTION = osFree Janus System Editor
TARGET_VERSION=310
DEST = os2$(SEP)mdos$(SEP)winos2$(SEP)system

# defines additional options for C compiler
ADD_COPT = -DDEBUG=1


!include $(%ROOT)tools/mk/build.mk

