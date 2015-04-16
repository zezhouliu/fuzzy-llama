
out.o: parser_symbolic_test.o http_parser.o 
	llvm-link -v -o out.o http_parser.o parser_symbolic_test.o 

parser_symbolic_test.o: parser_symbolic_test.c
	llvm-gcc -I ~/klee/include/ --emit-llvm -DKLEE=1 -c -g parser_symbolic_test.c

http_parser.o: http_parser.c
	llvm-gcc -I ~/klee/include/ --emit-llvm -DKLEE=1 -c -g http_parser.c

out:
	llvm-gcc -I ~/klee/include/ -DKLEE=0 -o out parser_symbolic_test.c http_parser.c

clean:
	rm http_parser.o parser_symbolic_test.o out.o

clean_bin:
	rm out
