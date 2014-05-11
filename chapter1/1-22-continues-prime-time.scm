(load "1-21-smallesed-divisor.scm")

(define (continued-prime start number)
  (cond ((= 0 number) (newline)(display "are primes"))
        ((prime? start)
        	(newline) 
        	(display start)
        	(continued-prime (+ 1 start) (- number 1)))
    	(else (continued-prime (+ 1 start) number))))	





(define (computing-time start number)
  (let ((start-time (real-time-clock)))
  	(continued-prime start number)
  	(- (real-time-clock) start-time) ))

;(computing-time 10000000 10)

