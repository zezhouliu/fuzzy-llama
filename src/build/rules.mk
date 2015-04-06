CC = clang

INCLUDE = ../include

override CFLAGS += -std=c99 -g -ggdb -Weverything -mt -Werror -Wno-documentation -Wno-cast-align -Wno-padded -pedantic -I$(INCLUDE)
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
