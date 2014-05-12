(load "fermat-prime.scm")
(load "1-32-accumulate.scm")
(load "gcd.scm")

(define (filter-accumulate-recursive valid? combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((valid? (term a b)) (combiner (term a)
        							 (filter-accumulate-recursive valid? combiner null-value term (next a) next b)))
    	(else (filter-accumulate-recursive valid? combiner null-value term (next a) next b))))


;;test 
(filter-accumulate-recursive even? + 0 equal 1 next 5)

;;b
(define (relative-prime? a b)
  (= 1 gcd(a b)))







