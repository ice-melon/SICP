(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate-recursive combiner null-value term (next a) next b))))

(define (accumulate-iterative combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))


(define (equal x)
  x)
(define (next x)
  (+ x 1))

;test 
;(accumulate-recursive * 1 equal 1 next 4)
;(accumulate-iterative + 0 equal 1 next 4)