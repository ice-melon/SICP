(define (sum term a next b)	
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (equal x)
  x)

(define (next x)
  (+ x 1))


;;TEST
(sum equal 1 next 3)