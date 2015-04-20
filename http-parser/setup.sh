#!/bin/sh

setup_prep(){

	if [ -f out.o ] || [ -f http_parser.o ] || [ -f http_parser.o ]; then 
		eval make -f my_make.mk clean
	fi
	eval make -f my_make.mk out.o
}

setup_klee(){
	#exec klee --optimize --emit-all-errors --libc=uclibc --posix-runtime ./out.o $1
	exec klee --optimize --emit-all-errors ./out.o --sym-arg 1
}

setup_bin(){
	if [ -f out ]; then 
		eval make -f my_make.mk clean_bin
	fi
	eval make -f my_make.mk out
}

setup_all(){
	setup_prep
	setup_klee
}

setup_options(){
	echo "-p\t--prepare\tMerges all byte code files into out.o"
	echo "-k\t--klee\t\tRuns klee with correct options on out.o"
	echo "-b\t--bin\t\tCompiles to executable out"
	echo "-a\t--all\t\tRuns -p and -k back to back"
	echo "-h\t--help\t\tPrints help menu"
}

# MAIN: Control Flow Begins Here

ulimit -s unlimited 
for last; do true; done

# Are we emitting llvm byte code or running klee
case "$1" in 
	"-p"|"--prepare")
		setup_prep;;
	"-k"|"--klee")
		setup_klee $last;;
	"-b"|"--bin")
		setup_bin;;
	"-a"|"--all")
		setup_all $last;;	
	"-h"|"--help")
		setup_options;;	
	*)
		echo "Please include valid flag. Run ./setup.sh --help to see all options";; 
esac
