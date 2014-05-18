(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))


;test
;(car (cons 1 2))
;(car (lambda (m) (m 1 2)))
;((lambda (m) (m 1 2)) (lambda (p q) p))

(define (cdr z)
  (z (lambda (p q) q)))