(define (fast-expt-iterative a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iterative a (* b b) (/ n 2)))
    	(else (fast-expt-iterative (* a b) b (- n 1)))))

(fast-expt-iterative 1 2 3)