CC=gcc
CFLAGS=-I.

all : pmm zombie process_memory ps

zombie : zombie.c
	$(CC) -o zombie zombie.c $(CFLAGS)

pmm : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o pmm utils.o find_min_max.o parallel_min_max.c $(CFLAGS)
	
process_memory : process_memory.c
	$(CC) -o process_memory process_memory.c $(CFLAGS)
	
ps : utils.o task5.o parallel_sum.c
	$(CC) -o ps parallel_sum.c task5.o utils.o -lpthread $(CFLAGS)

task5.o : task5.h
	$(CC) -o task5.o -c task5.c $(CFLAGS)

utils.o : utils.h utils.c
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

clean :
	rm -f utils.o find_min_max.o task5.o pmm zombie process_memory ps