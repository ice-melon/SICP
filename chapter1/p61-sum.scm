(define (sum term a next b)		
  (if (> a b)
      0
      (+ (sum term (next a) next b)
      	  (term a))))