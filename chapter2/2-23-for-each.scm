(define (for-each p lst)
    (cond ((not (null? lst))
            (p (car lst))
            (for-each p (cdr lst)))))

;test
(for-each (lambda (x) (newline) (display (+ 1 x)) ) (list 1 2 3))