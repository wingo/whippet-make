WHIPPET=whippet/

GC_COLLECTOR ?= pcc

all: mt-gcbench

include $(WHIPPET)embed.mk

EMBEDDER_TO_GC_CFLAGS=-include whippet/benchmarks/mt-gcbench-embedder.h

mt-gcbench.o: whippet/benchmarks/mt-gcbench.c
	$(GC_COMPILE) $(GC_TO_EMBEDDER_CFLAGS) -c $<
mt-gcbench: mt-gcbench.o $(GC_OBJS)
	$(GC_LINK) $^ $(GC_LIBS)

clean: 
	$(GC_V)rm -f mt-gcbench mt-gcbench.o $(GC_OBJS)

# Clear some of the default rules.
.SUFFIXES:
.SECONDARY:
%.c:;
Makefile:;
