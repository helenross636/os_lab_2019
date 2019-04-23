CC=gcc
CFLAGS=-I.

all : mU not_m fact deadlock

mU : mutex.c
	$(CC) -o mU mutex.c -lpthread $(CFLAGS)
	
not_m : not_m.c
	$(CC) -o not_m not_m.c -lpthread $(CFLAGS)
	
fact : fact.c
	$(CC) -o fact fact.c -lpthread $(CFLAGS)

deadlock : deadlock.c
	$(CC) -o deadlock deadlock.c -lpthread $(CFLAGS)

clean :
	rm -f mU not_m fact deadlock