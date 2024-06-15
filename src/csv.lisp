(in-package :cl-user)

(defpackage mlcl.csv
  (:use :cl)
  (:export :read-csv))
(in-package :mlcl.csv)

(declaim (ftype (function (string) list) read-csv))
(defun read-csv (filepath)
  (with-open-file (stream filepath :direction :input)
	(loop :for line = (read-line stream nil)
		  :while line
		  :collect (let ((list-collect '()) (char-collect '()))
					 (loop :for ch :across line
						   :collect (if (not (char= ch #\,))
										(push ch char-collect)
										(progn 
										  (push (concatenate 'string (nreverse char-collect)) list-collect)
										  (setf char-collect '()))))
					 (when char-collect (push (concatenate 'string (nreverse char-collect)) list-collect))
					 (nreverse list-collect)))))
