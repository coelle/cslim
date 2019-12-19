# Getting Started

**Work in Progress - Do Not Rely On It!**

## Prerequisites
### Get CppUTest
There are several ways how to get hold of CppUTest on your computer.
For details see the [homepage of CppUTest](http://cpputest.github.io).
Although it is possible to use a pre-packaged system-wide installation,
You should prefer the source install (make sure, `automake` and 
`autoconf` are installed):

    cd <your path to external libraries>
    
    # As mentioned in the CSlim README.md, CSlim and CppUTest must have
    # the same parent directory and the directory must be CppUTest 
    # (case-sensitive!)
    git clone git://github.com/cpputest/cpputest.git CppUTest
    
    cd CppUTest
    git checkout <tag of latest release version>
    ./autogen.sh
    mkdir a_build_dir && cd a_build_dir
    ../configure
    make

The built library will be in `~/MyLibs/cpputest`.

### Build cslim
Get the source from GitHub or clone the repository and build cslim:

    cd <path to your workspace>
    git clone https://github.com/dougbradbury/cslim
    cd cslim
    cmake -D"CMAKE_INSTALL_PREFIX=~/Applications/cslim/" -D"CPPUTEST_INCLUDE_DIR=~/MyLibs/cpputest/include" -D"CPPUTEST_LIBRARY=~/MyLibs/cpputest/lib" -D"CPPUTESTEXT_LIBRARY=~/MyLibs/cpputest/lib"
