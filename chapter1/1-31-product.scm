(define (product-recursive term a next b)
  (cond ((> a b) 1)
        (else (* (term a)
        		 (product-recursive term (next a) next b)))))

(define (product-iterative term a next b result)
	  (cond ((> a b) result)
	        (else (product-iterative term (next a) next b (* result (term a))))))	

;;test product
;(define (equal x)
;  x)
;(define (next x)
;  (+ x 1))
;(product-recursive equal 1 next 4)
;(product-iterative equal 1 next 4 1)

(define (manipulate1 a)
  (* a (+ a 1) 4))

(define (manipulate2 a)
  (square (+ 1 (* 2 a))))
(define (next a)
  (+ a 1))
(define (square a)
  (* a a))

(define (pi product n)
  (/ (product manipulate1 1 next n )
  	 (product manipulate2 1 next n )))

 (* 4.0 (pi product-recursive 10000))