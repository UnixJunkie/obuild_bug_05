#!/bin/bash

set -x

# obuild cannot :(
echo "--- obuild ---"
obuild-simple --deps camlzip test.ml

# ocamlbuild can :)
echo "--- ocamlbuild ---"
\rm -f test.native toto.gz
ocamlbuild -pkgs camlzip test.native
./test.native
zcat toto.gz
