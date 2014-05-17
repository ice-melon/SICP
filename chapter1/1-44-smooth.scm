(load "1-43-repeated.scm")

(define dx 0.000001)
(define (smooth f)
  (lambda (x) (/ (+ (f x) (f (- x dx)) (f (+ x dx))) 3)))


((smooth (lambda (x) (* x x))) 5)

(define (nth-smooth n)
  (repeated smooth n))