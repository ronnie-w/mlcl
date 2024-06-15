(in-package :asdf-user)

(defsystem "mlcl"
  :version "0.0.1"
  :author "ronnie"
  :license "MIT"
  :depends-on ("lisp-stat")
  :components ((:module "src"
				;; :serial t
                :components
                ((:file "main" :depends-on ("csv"))
				 (:file "csv"))))
  :description "an attempt at ml in cl"
  :build-operation "program-op" ;; leave as is
  :build-pathname "mlcl"
  ;; entry-point: main is an exported symbol. Otherwise, use "mlcl::main" instead.
  :entry-point "mlcl:main")

;;;; sbcl executable compression
;;#+sb-core-compression
;;(defmethod asdf:perform ((o asdf:image-op) (c asdf:system))
;;  (uiop:dump-image (asdf:output-file o c)
;;                   :executable t
;;                   :compression t))
