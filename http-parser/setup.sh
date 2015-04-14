#!/bin/sh

setup_prep(){

	if [ -f out.o ] || [ -f http_parser.o ] || [ -f http_parser.o ]; then 
		eval make -f my_make.mk clean
	fi
	eval make -f my_make.mk out.o
}

setup_klee(){
	exec klee --optimize --emit-all-errors ./out.o -p --sym-arg 4
}

setup_bin(){
	eval make -f my_make.mk out
}

setup_all(){
	setup_prep
	setup_klee
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
	*)
		echo "${1} Invalid";; 
esac
