#!/usr/bin/bash

NOW=$(date +"%d%m%Y-%H%M%S")
UNAME=`which uname`
CAT=`which cat`
#UNDIR=$HOME/uname
UNDIR=uname

if [ -d $UNDIR/uname ]
        then
                $UNAME -a > $UNDIR/uname-$NOW.txt
        else
                mkdir -p $UNDIR
                $UNAME -a > $UNDIR/uname-$NOW.txt
                $CAT $UNDIR/uname-$NOW.txt
fi
