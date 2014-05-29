(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one	
  (lambda (f) (lambda (x) (f x))))

(define two	
  (lambda (f) (lambda (x) (f (f x)))))

(define (plus m n)
   (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (times m n)
  (lambda (f) (lambda (x) n (m f))))



;expansion of (add-1 zero)
(add-1 zero)
(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))   
(lambda (f) (lambda (x) (f ((lambda (x) x) x))))
(lambda (f) (lambda (x) (f x)))

;expansion of (add-1 one)
(add-1 (lambda (f) (lambda (x) (f x))))
(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x))))  
(lambda (f) (lambda (x) (f ((lambda (x) (f x)) x))))
(lambda (f) (lambda (x) (f (f x))))


;test one and two
((one (lambda (x) (+ x 2))) 0)
((two (lambda (x) (+ x 2))) 0)


;test plus
(define three (plus one two))
(((plus one two) (lambda (x) (+ x 2))) 0)
