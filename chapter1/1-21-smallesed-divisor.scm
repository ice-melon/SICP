(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divided? test-divisor n) test-divisor)
    	(else (find-divisor n (+ 1 test-divisor)))))

(define (divided? a b)
  (= (remainder b a) 0))

(define (square a)
  (* a a))

(define (prime? n)
  (= (smallest-divisor n) n))

;(prime? 199)
;(prime? 1999)
;(prime? 19999)

