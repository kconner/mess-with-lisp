#!/bin/sh
echo test.lisp | entr -c sbcl --script test.lisp
