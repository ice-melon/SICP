(load "1-37-continued-fraction.scm")

(define (D i)
  (if (= 2 (remainder i 3))
      (+ 2 (* (/ (- i 2) 3) 2))
      1))

(define (approximate-of-e k)
  (con-ftaction-recursive (lambda (i) 1.0) D k))

(approximate-of-e 11)