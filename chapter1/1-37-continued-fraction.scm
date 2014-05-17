(define (con-ftaction-recursive N D k)
  (define (cf i)
    (if (= k i)
        (/ (N k) (D k))
        (/ (N i) 
           (+ (D i) (cf (+ 1 i))))))
  (cf 1))


;(con-ftaction-recursive (lambda (i) 1.0) (lambda (i) 1.0) 11)



(define (con-ftaction-iterative N D k )
  (define (iter k r)
    (if (= 0 k)
        r
        (iter (- k 1)
        	  (/ (N k) (+ (D k) r)))))
  (iter (- k 1)	(/ (N k) (D k))))

;(con-ftaction-iterative (lambda (i) 1.0) (lambda (i) 1.0) 11)
