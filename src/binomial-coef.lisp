;;;; Binomial coefficients computation.
(in-package :binomial-coef)

(defun nck (n k)
  "Exact (though inefficient) computation of a single binomial coefficient."
  (let* ((best-k (min k (- n k))) ; nck(n,k) = nck(n,n-k) but one is faster.
         (num 1)
         (denom (cl-factorial:iter best-k)))
    (loop for i from n downto (- (+ n 1) best-k) do
      (setf num (* num i)))
    (/ num denom)))
