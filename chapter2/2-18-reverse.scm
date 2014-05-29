
;;don't use list as argument!!
(define (reverse item)
  (if (null? item)
      '()
      (append (reverse (cdr item)) (list (car item)))))

(reverse (list 1 2 3 4))