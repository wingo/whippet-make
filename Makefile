GC_BASE=whippet/

GC_COLLECTOR ?= pcc
GC_EMBEDDER_H=whippet/benchmarks/mt-gcbench-embedder.h

all: mt-gcbench

include $(GC_BASE)embed.mk


mt-gcbench.o: whippet/benchmarks/mt-gcbench.c
	$(GC_COMPILE) -c $<
mt-gcbench: mt-gcbench.o $(GC_OBJS)
	$(GC_LINK) $^ $(GC_LIBS)

clean: 
	$(GC_V)rm -f mt-gcbench mt-gcbench.o $(GC_OBJS)

# Clear some of the default rules.
.SUFFIXES:
.SECONDARY:
%.c:;
Makefile:;
