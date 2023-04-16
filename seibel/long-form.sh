#!/bin/sh

echo "$1" | ros -e "(let ((f (read))) (if (integerp f) (write-string (format nil \"~r~%\" f)) (write-line \"Usage: long-form.sh 12345\")))"
