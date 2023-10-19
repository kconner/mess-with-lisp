LISP ?= sbcl

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load cookie-lisp-project.asd \
		--eval '(ql:quickload :cookie-lisp-project)' \
		--eval '(asdf:make :cookie-lisp-project)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp
