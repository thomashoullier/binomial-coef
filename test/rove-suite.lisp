(defpackage :binomial-coef/test
  (:use :cl :rove :binomial-coef))
(in-package :binomial-coef/test)

(deftest validation
  (testing "n=0 k=0"
    (ok (= (nck 0 0) 1) "ok"))
  (testing "Samples"
    (let ((nklist '((1 1) (4 2) (2 2) (2 1) (30 12) (28 0)))
          (results (list 1 6 1 2 86493225 1)))
      (ok (equal results
                 (map 'list (lambda (x) (binomial-coef:nck (car x) (cadr x)))
                      nklist)) "ok"))))
