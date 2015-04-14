#!/bin/sh

setup_prep(){

	if [ -f out.o ] || [ -f http_parser.o ] || [ -f http_parser.o ]; then 
		eval make -f my_make.mk clean
	fi
	eval make -f my_make.mk out.o
}

setup_klee(){
	exec klee --optimize --emit-all-errors ./out.o -g --sym-arg 1
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
 
## $last contains last cmd line argument
#for last; do true; done
#
## Check if the last argument is a file
#if [ ! -f $last ]; then 
#	echo "File Not found"
#	exit 1
#fi

ulimit -s unlimited 

# Are we emitting llvm byte code or running klee
case "$1" in 
	"-p"|"--prepare")
		setup_prep;;
	"-k"|"--klee")
		setup_klee;;
	"-b"|"--bin")
		setup_bin;;
	"-a"|"--all")
		setup_all;;	
	"-h"|"--help")
		setup_options;;	
	*)
		echo "Please include valid flag. Run ./setup.sh --help to see all options";; 
esac
