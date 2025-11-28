GC_BASE=whippet/

GC_COLLECTOR ?= pcc
GC_EMBEDDER_H=whippet/benchmarks/mt-gcbench-embedder.h
GC_OBJDIR=obj/

all: mt-gcbench

include $(GC_BASE)embed.mk


mt-gcbench.o: whippet/benchmarks/mt-gcbench.c
	$(GC_COMPILE) -c $<
mt-gcbench: mt-gcbench.o $(GC_OBJDIR)libwhippet.a
	$(GC_LINK) $^ $(GC_LIBS)

clean: 
	$(GC_V)rm -f mt-gcbench
	$(GC_V)rm -rf obj

# Clear some of the default rules.
.SUFFIXES:
.SECONDARY:
%.c:;
Makefile:;
