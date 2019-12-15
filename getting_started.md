# Getting Started

**Work in Progress - Do Not Rely On It!**

## Prerequisites
### Get CppUTest
There are several ways how to get hold of CppUTest on your computer.
For details see the [homepage of CppUTest](http://cpputest.github.io).
Although it is possible to use a pre-packaged system-wide installation,
You should prefer the source install:

    cd <your path to external libraries>
    git clone git://github.com/cpputest/cpputest.git
    cd cpputest
    git checkout <tag of latest release version>
    cmake CMakeLists.txt -D"CMAKE_INSTALL_PREFIX=~/MyLibs/cpputest"
    make
    make install

The built library will be in `~/MyLibs/cpputest`.

### Build cslim
Get the source from GitHub or clone the repository and build cslim:

    cd <path to your workspace>
    git clone https://github.com/dougbradbury/cslim
    cd cslim
    cmake -D"CMAKE_INSTALL_PREFIX=~/Applications/cslim/" -D"CPPUTEST_INCLUDE_DIR=~/MyLibs/cpputest/include" -D"CPPUTEST_LIBRARY=~/MyLibs/cpputest/lib" -D"CPPUTESTEXT_LIBRARY=~/MyLibs/cpputest/lib"
