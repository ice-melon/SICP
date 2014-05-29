(define (last list)
  (if (null? (cdr list))
      (car list)
      (last (cdr list))))

(last (list 1 2 3))
(last (list 1))