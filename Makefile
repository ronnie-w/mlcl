LISP?=sbcl
run: FORCE
	@$(LISP) --load mlcl.asd \
			 --eval '(ql:quickload :mlcl)' \
			 --eval '(in-package :mlcl)' \
			 --eval '(main)'

build: FORCE
	@$(LISP) --load mlcl.asd \
			   --eval '(ql:quickload :mlcl)' \
			   --eval '(asdf:make :mlcl)' \
			   --eval '(quit)'

FORCE:
