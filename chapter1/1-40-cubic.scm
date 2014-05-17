(load "newton-transform-p72.scm")

(define (cubic a b c)
  (lambda (x) (+ c (* b x) (* a x x) (* x x x))))

(newtons-method (cubic 3 2 1) 1.0)