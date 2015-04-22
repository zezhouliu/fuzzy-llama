#! /bin/sh

checkpoint(){
	echo $1 > .klee_setup_log
}

if [ $1 = "-h"  ] || [ $1 = "--help" ]; then
	echo ".klee_setup_log\t==\t0\treinstall all"
	echo ".klee_setup_log\t==\t1\treinstall llvm-gcc, llvm-2.9, stp-r940, klee-uclibc, klee"
	echo ".klee_setup_log\t==\t3\treinstall llvm-2.9, stp-r940, klee-uclibc, klee"
	echo ".klee_setup_log\t==\t7\treinstall stp-r940, klee-uclibc, klee"
	echo ".klee_setup_log\t==\t9\treinstall klee-uclibc, klee"
	echo ".klee_setup_log\t==\t10\treinstall klee"
	return 0
fi

if [ ! -f .klee_setup_log  ]; then
	touch .klee_setup_log
	echo "0" > .klee_setup_log
else
	c=$(head -c 2 .klee_setup_log) 
fi

if [ "$c" -eq 10 ]; then
	echo "You already have klee installed.\nTo reinstall or rebuild parts of klee run ./klee_setup -h || --help"
fi

# Update your system
if [ "$c" -lt 1 ]; then
	sudo apt-get install g++ curl dejagnu subversion bison flex bc libcap-dev && checkpoint "1" 
fi

# Add path includes
if [ $C_INCLUDE_PATH != "/usr/include/x86_64-linux-gnu" ]; then
	echo "Please add \"export C_INCLUDE_PATH=/usr/include/x86_64-linux-gnu\" to ~/.bashrc"
fi

# Add path includes
if [ $CPLUS_INCLUDE_PATH != "/usr/include/x86_64-linux-gnu" ]; then
	echo "Please add \"export CPLUS_INCLUDE_PATH=/usr/include/x86_64-linux-gnu\" to ~/.bashrc"
fi

# Download frontend aka llvm-gcc
if [ "$c" -lt 2  ]; then
	if [ ! -f llvm-gcc4.2-2.9-x86_64-linux.tar.bz2 ]; then
		wget http://llvm.org/releases/2.9/llvm-gcc4.2-2.9-x86_64-linux.tar.bz2 || (echo "Wget Failed to retriev http://llvm.org/releases/2.9/llvm-gcc4.2-2.9-x86_64-linux.tar.bz2";  return 0)
	fi
	checkpoint "2"
fi

if [ "$c" -lt 3  ]; then
	if [ ! -d llvm-gcc4.2-2.9-x86_64-linux ]; then
		tar -vxjf llvm-gcc4.2-2.9-x86_64-linux.tar.bz2 || (echo "Decompression Failed for llvm-gcc4.2-2.9-x86_64-linux.tar.bz2";  return 0)
	fi
	checkpoint "3"
fi

# Add path includes
which llvm-gcc >/dev/null || (echo "Add llvm-gcc to your path"; return 0)

# Download llvm and llvm patch for ubuntu
if [ "$c" -lt 4 ]; then 
	if [ ! -f unistd-llvm-2.9-jit.patch  ]; then
		wget https://www.mail-archive.com/klee-dev@imperial.ac.uk/msg01302/unistd-llvm-2.9-jit.patch || (echo "Patch for llvm-2.9 for Ubuntu not found\nSupposed to be at https://www.mail-archive.com/klee-dev@imperial.ac.uk/msg01302/unistd-llvm-2.9-jit.patch\nContinuing anyway")
	fi

	if [ ! -f llvm-2.9.tgz  ]; then
		wget http://llvm.org/releases/2.9/llvm-2.9.tgz || (echo echo "Wget Failed to retriev http://llvm.org/releases/2.9/llvm-2.9.tgz";  return 0)	
	fi	
	checkpoint "4"
fi

if [ "$c" -lt 5  ]; then
        if [ ! -d llvm-2.9 ]; then
                tar -zxvf llvm-2.9.tgz || (echo "Decompression Failed for llvm-2.9.tgz";  return 0)
        fi
	patch -d llvm-2.9 -p1 < unistd-llvm-2.9-jit.patch
        checkpoint "5"
fi

# Build llvm 2.9
if [ "$c" -lt 6 ]; then
	cd llvm-2.9
	./configure --enable-optimized --enable-assertions
	make || (echo "Making llvm-2.9 failed"; return 0)
	cd ../
	checkpoint "6"
fi 

# Download stp-r940 and patch
if [ "$c" -lt 7 ]; then 
	if [ ! -f stpr940.patch  ]; then
		wget https://d1b10bmlvqabco.cloudfront.net/attach/i5gwqzm5ygn4il/hzmtoaejx6xuk/i5swa6j48ecm/stpr940.patch  || (echo "Patch for stp patch for Ubuntu not found\nSupposed to be at https://d1b10bmlvqabco.cloudfront.net/attach/i5gwqzm5ygn4il/hzmtoaejx6xuk/i5swa6j48ecm/stpr940.patch \nContinuing anyway")
	fi

	if [ ! -f stp-r940.tgz  ]; then
		wget http://www.doc.ic.ac.uk/~cristic/klee/stp-r940.tgz || (echo echo "Wget Failed to retriev http://www.doc.ic.ac.uk/~cristic/klee/stp-r940.tgz";  return 0)	
	fi	
	checkpoint "7"
fi

# Make stp-r940
if [ "$c" -lt 8  ]; then
        if [ ! -d stp-r940 ]; then
                tar -zxvf stp-r940.tgz || (echo "Decompression Failed for stp-r940.tgz";  return 0)
        fi
	patch -d stp-r940 -p1 < stpr940.patch
	cd stp-r940
	./scripts/configure --with-prefix=`pwd`/install --with-cryptominisat2
	make OPTIMIZE=-O2 CFLAGS_M32= install || (echo "Making stp-r940 failed"; return 0)
	ulimit -s unlimited
	cd ../
        checkpoint "8"
fi

# Add path includes
which lli >/dev/null || (echo "Add /PATH_TO/llvm-2.9/Release+Asserts/bin/ to your path"; return 0)

# Install klee-uclibc
if [ "$c" -lt 9  ]; then
	if [ ! -d klee-uclibc  ]; then
		git clone https://github.com/klee/klee-uclibc.git || (echo "Git failed to clone klee-uclibc"; return 0)
	fi
	cd klee-uclibc
	./configure --make-llvm-lib || (echo "Configuration failed (check llvm-2.9/Release+Asserts/bin/ in path)" return 0;) 
	make -j2 || (echo "Make failed (check ncurses installed...run sudo apt-get install libncurses5-dev libncursesw5-dev)"; return 0) 
	cd ..	
	checkpoint "9" 
fi

# Install klee
if [ "$c" -lt 10  ]; then
	if [ ! -d klee  ]; then
		git clone https://github.com/klee/klee.git || (echo "Git failed to clone klee"; return 0)
	fi
	cd klee/
	./configure --with-llvm=/home/ubuntu/klee_env/llvm-2.9 --with-stp=/home/ubuntu/klee_env/stp-r940/install --with-uclibc=/home/ubuntu/klee_env/klee-uclibc --enable-posix-runtime
	make ENABLE_OPTIMIZED=1 || (echo "make failed"; return 0)
	make check
	make unittests
	cd ..	
	checkpoint "10"
	echo "\nCongratulations you have klee!\n"
fi

