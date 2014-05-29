(define (make-segment x-point y-point)
  (cons x-point y-point))
(define (start-point segment)
  (car segment))
(define (end-point segment)
  (cdr segment))


(define (make-point x y)
  (cons x y))
(define (x-point point)
  (car point))
(define (y-point point)
  (cdr point))


(define (mid-point segment)
  (make-point (/ (+ (x-point (start-point segment)) 
  					(x-point (end-point segment))) 
				 2) 
  			  (/ (+ (y-point (start-point segment)) 
  					(y-point (end-point segment))) 
				 2)))	


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


;(define a (make-point 1 1))
;(define b (make-point 3 3))
;(define segment (make-segment a b))
;(define midpoint-segment (mid-point segment))

;(print-point midpoint-segment)