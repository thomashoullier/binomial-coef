(defsystem binomial-coef
  :name "binomial-coef"
  :author "Thomas HOULLIER"
  :depends-on ("cl-factorial")
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "binomial-coef" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "binomial-coef/test"))))

(defsystem binomial-coef/test
  :name "binomial-coef/test"
  :depends-on ("rove" "binomial-coef")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
