(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))

(define (car pair)
  (if (= 0 (remainder pair 2))
      (+ 1 (car (/ pair 2)))
      0))


(define (cdr pair)
  (if (= 0 (remainder pair 3))
      (+ 1 (car (/ pair 3)))
      0))

(define z (cons 4 5))
(car z)
(cdr z)