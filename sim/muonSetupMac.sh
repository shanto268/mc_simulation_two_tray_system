#!/bin/bash

#  setup ROOT environment
# source /Applications/root_v6.18.00/bin/thisroot.sh
source /Applications/root_v6.16.00/bin/thisroot.sh

#  drop_from_path taken from /root/build/bin/thisroot.sh
drop_from_path()
{
   # Assert that we got enough arguments
   if test $# -ne 2 ; then
      echo "drop_from_path: needs 2 arguments"
      return 1
   fi

   local p=$1
   local drop=$2

   newpath=`echo $p | sed -e "s;:${drop}:;:;g" \
                          -e "s;:${drop}\$;;g"   \
                          -e "s;^${drop}:;;g"   \
                          -e "s;^${drop}\$;;g"`
}

export CRYHOME=/Users/ttumuon/hep/cry/cry_v1.7
export CRYDATAPATH=/Users/ttumuon/hep/cry/cry_v1.7/data

#  setup GEANT4 environment
. /Users/ttumuon/hep/g4/geant4.10.05-install/bin/geant4.sh

export G4BASE=Users/ttumuon/hep/g4/geant4.10.05-install/source
export G4INSTALL=/Users/ttumuon/hep/g4/geant4.10.05-install/share/Geant4-10.5.0/geant4make

source /Users/ttumuon/hep/g4/geant4.10.05-install/share/Geant4-10.5.0/geant4make/geant4make.sh
export G4BIN="$PWD"

export LD_LIBRARY_PATH=/Users/ttumuon/hep/g4/geant4.10.05-install/lib
export DYLD_LIBRARY_PATH=/Users/ttumuon/hep/g4/geant4.10.05-install/lib:/Applications/root_v6.16.00/lib
export SHLIB_PATH=/Users/ttumuon/hep/g4/geant4.10.05-install/lib
export LIBPATH=/Users/ttumuon/hep/g4/geant4.10.05-install/lib

