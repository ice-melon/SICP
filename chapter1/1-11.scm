(define (f-recursive n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
    	((= n 2) 2)
    	(else (+ (f-recursive (- n 1)) 
    			 (* (f-recursive (- n 2)) 2) 
    			 (* (f-recursive (- n 3)) 3)))))

(define (f-iterative a b c n)
	(if (= n 2)
	    a
	    (f-iterative (+ a (* b 2) (* c 3)) a b (- n 1))))

(f-iterative 2 1 0 5)
(f-recursive 5)