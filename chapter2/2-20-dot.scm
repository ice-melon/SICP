;;use filter!
(define (same-parity first . rest)
  (filter (if (even? first)
	      		even?	
	      		odd?)
		  (cons first rest)))


(same-parity 1 2 3 4 5)