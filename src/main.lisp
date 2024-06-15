(in-package :cl-user)

(defpackage mlcl
  (:use :cl)
 ;; (:import-from :mlcl.csv
;;				:read-csv)
  (:import-from :lisp-stat)
  (:export :main))
(in-package :mlcl)

(defparameter *data-frame* (lisp-stat:read-csv #P"housing.csv"))

(defun main ()
  ;;(let ((data (read-csv "housing.csv")))
	;;(setf *data-frame*
	;;	  (teddy/data-frame::make-data-frame (first data) :rows (cdr data))))
;;  (print (teddy/plot::plot 
;;		   (teddy/data-frame::slice *data-frame*
;;									:columns '("total_rooms" "total_bedrooms") :to 200)
;;		   "plot.png"))
  (lisp-stat:describe *data-frame*))
