# pg_crash/Makefile

MODULE_big = pg_crash
OBJS = pg_crash.o

EXTENSION = pg_crash
DATA = pg_crash--1.0.sql

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/pg_crash
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif

