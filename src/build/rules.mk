PREFER_GCC = 0

GCC ?= $(shell if gcc-4.9 --version | grep gcc >/dev/null; then echo gcc-4.9; \
	elif gcc-4.7 --version | grep gcc >/dev/null; then echo gcc-4.7; \
	else echo gcc; fi 2>/dev/null)

ifeq ($(PREFER_GCC),1)
CC = $(shell if $(GCC) --version | grep gcc >/dev/null; then echo $(GCC); \
	else echo clang; fi 2>/dev/null)
else
CC = $(shell if clang --version | grep LLVM >/dev/null; then echo clang; \
	else echo $(GCC); fi 2>/dev/null)
endif

CLANG := $(shell if $(CC) --version | grep LLVM >/dev/null; then echo 1; else echo 0; fi)

INCLUDE = ../include

override CFLAGS += -std=c99 -g -ggdb -Weverything -Werror -Wno-documentation -Wno-cast-align -Wno-padded -pedantic -I$(INCLUDE)
MATHFLAGS = -lrt -lm
DEPCFLAGS = -MD -MF $(DEPSDIR)/$*.d -MP

DEPSDIR := .deps
BUILDSTAMP := $(DEPSDIR)/rebuildstamp
DEPFILES := $(wildcard $(DEPSDIR)/*.d)
ifneq ($(DEPFILES),)
include $(DEPFILES)
endif

ifneq ($(DEP_CC),$(CC) $(CFLAGS) $(DEPCFLAGS) $(O))
DEP_CC := $(shell mkdir -p $(DEPSDIR); echo >$(BUILDSTAMP); echo "DEP_CC:=$(CC) $(CFLAGS) $(DEPCFLAGS) $(O)" >$(DEPSDIR)/_cc.d)
endif

V = 0
ifeq ($(V),1)
run = $(1) $(3)
else
run = @$(if $(2),/bin/echo " " $(2) $(3) &&,) $(1) $(3)
endif
runquiet = @$(1) $(3)

$(DEPSDIR)/stamp $(BUILDSTAMP):
	$(call run,mkdir -p $(@D))
	$(call run,touch $@)

always:
	@:

.PHONY: always
