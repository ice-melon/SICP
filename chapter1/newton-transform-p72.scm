(load "fixed-point-p69.scm")


(define (average x y)
  (/ (x + y) 2))

(define (average-dump f )
  (lambda (x) (average x (f x))))

(define (deriv g)
  (lambda (x) 
    (/ (- (g (+ x dx)) (g x))
    	dx)))

(define dx 0.0001)

;((deriv (lambda (x) (* x x x))) 5)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))