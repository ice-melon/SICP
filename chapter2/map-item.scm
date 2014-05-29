(define (map proc items)
  (if (null? items)
      '()
      (cons (proc (car items)) 
            (map proc (cdr items)))))

(define (scale-list items factor)
  (map (lambda (x) (* factor x)) items))

;test 
;(map (lambda (x) (+ x 2)) (list 1 1 1 1))
;(scale-list (list 1 2 3 4) 2)	