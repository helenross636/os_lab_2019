CC=gcc
CFLAGS=-I.

all : s c 

s : m.o multmod.h
	$(CC) -o s m.o server.c -lpthread $(CFLAGS)
	
c : m.o multmod.h
	$(CC) -o c m.o client.c -lpthread $(CFLAGS)
	
m.o : multmod.h
	$(CC) -o m.o -c multmod.c $(CFLAGS)

clean :
	rm s c m.o