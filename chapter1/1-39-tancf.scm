(load "1-37-continued-fraction.scm")

(define (tan-cf x k)
  (define (N i)
    (if (= i 1)
        x
        (- (* x x))))
  (define (D i)
    (- (* 2 i) 1.0))

  (con-ftaction-recursive N D k))


(tan-cf 45 100)
(tan 45)