(define (make-rat n d)
  (cond ((and (>= n 0) (>= d 0)) (cons n d))
        ((and (>= n 0) (< d 0)) (cons (- n) (- d)))
    	((and (< n 0) (>= d 0)) (cons n d))
    	((and (< n 0) (< d 0)) (cons (- n) (- d)))))
 

(define (numer x) (car x))
(define (denom x) (cdr x))


(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))
(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))
(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))


(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define a (make-rat 0 2))
(define b (make-rat (- 1) 2))
(define c (make-rat 1 (- 2)))
(define d (make-rat (- 1) (- 2)))


(print-rat a)
(print-rat b)
(print-rat c)
(print-rat d)




















