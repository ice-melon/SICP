(define (fast-multi-recur a n)
  (cond ((= n 0) 0)
        ((even? n) (* (fast-multi-recur a (/ n 2)) 2))
    	(else (+ (fast-multi-recur a (- n 1)) a))))

(define (fast-multi-itera a n result)
  (cond ((= n 0) result)
        ((even? n) (fast-multi-itera (* a 2) (/ n 2) result))
    	(else (fast-multi-itera a (- n 1) (+ result a)))))

(fast-multi-recur 10 10)
(fast-multi-itera 10 10 0)