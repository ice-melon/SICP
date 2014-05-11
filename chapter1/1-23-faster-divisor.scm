(load "1-21-smallesed-divisor.scm")

(define (next n)
  (cond ((= 2 n) 3)
        (else (+ n 2))))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divided? test-divisor n) test-divisor)
    	(else (find-divisor n (next test-divisor)))))


(prime? 199)
(prime? 19999)