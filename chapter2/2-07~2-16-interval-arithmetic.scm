(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))


(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))



(define (make-interval a b) (cons a b))

;2-7
(define (upper-bound x)
  (cdr x))

(define (lower-bound x)
  (car x))

;2-8
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

;2-9
(define (width interval)
  (/ 2 (- (upper-bound interval) (lower-bound interval))))

;2-10
(define (div-interval x y)
  (if (and (<= (lower-bound y) 0) (>= (upper-bound y) 0))
      (display "denominator spans zero")
      (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y)))))

;;other answers see http://eli.thegreenplace.net/2007/07/27/sicp-section-214/