#
# Students' Makefile for the Malloc Lab
# CC = clang 
#
TEAM = "YOUR TEAM NAME"
VERSION = 1
HANDINDIR = handout
CC = clang # edit this if you want to change your compiler
CFLAGS = -Wall -O2 -arch x86_64 -Wunused -Wno-unused-variable -Wno-unused-function #edit this options if you need

OBJS = mdriver.o mm.o memlib.o fsecs.o fcyc.o clock.o ftimer.o

mdriver: $(OBJS)
	$(CC) $(CFLAGS) -o mdriver $(OBJS)

mdriver.o: mdriver.c fsecs.h fcyc.h clock.h memlib.h config.h mm.h
memlib.o: memlib.c memlib.h
mm.o: mm.c mm.h memlib.h
fsecs.o: fsecs.c fsecs.h config.h
fcyc.o: fcyc.c fcyc.h
ftimer.o: ftimer.c ftimer.h config.h
clock.o: clock.c clock.h

handin:
	cp mm.c $(HANDINDIR)/$(TEAM)-$(VERSION)-mm.c

clean:
	rm -f *~ *.o mdriver


