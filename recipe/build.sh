#!/bin/bash
echo libs..
ls $PREFIX/lib
echo include .. 
ls $PREFIX/include

export EXPATLIBPATH=$PREFIX/lib
export EXPATINCPATH=$PREFIX/include
perl Makefile.PL INSTALLDIRS=site
echo ran makefile.pl
make
make install
