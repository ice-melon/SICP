(load "1-43-repeated.scm")


(define (average x y)
  (/ (+ x y) 2))

(define (average-dump f )
  (lambda (x) (average x (f x))))



(define tolerance 0.0001)
(define (fixed-point f first-guess dump-time)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)		
    (let ((next (((repeated average-dump dump-time) f) guess)))
    	 (if (close-enough? guess next)
    	    next
    	    (try next))))
  (try first-guess))


;test function
(define (sqrt x)
  (fixed-point (lambda (y) (/ x (* y y)) 1.0 3))
(sqrt 16)

(define (n-square x n)
  ((repeated (lambda (y) (* x y)) n) 1))




