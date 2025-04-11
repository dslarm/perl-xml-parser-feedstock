#!/bin/bash
echo libs..
ls $PREFIX/lib
echo include .. 
ls $PREFIX/include

perl Makefile.PL EXPATLIBPATH=$PREFIX/lib EXPATINCPATH=$PREFIX/include INSTALLDIRS=site
make
make install
