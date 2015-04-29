mini_challenge.o: mini_challenge.c
	llvm-gcc -I ../../../klee_env/klee/include/ --emit-llvm -DKLEE=1 -c -g mini_challenge.c

mini_challenge_solution.o: mini_challenge_solution.c
	llvm-gcc -I ../../../klee_env/klee/include/ --emit-llvm -DKLEE=1 -c -g mini_challenge_solution.c

clean:
	rm *.o
