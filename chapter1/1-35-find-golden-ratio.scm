(load "fixed-point-p69.scm")

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)