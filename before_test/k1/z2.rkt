#lang racket
(define (divisors n)
  (define (acc a curr) 
    (if (> curr n)
      a
      (if (zero? (modulo n curr))
        (acc (append a (list curr)) (+ curr 1))
        (acc a (+ curr 1)))))
  (acc '() 1)
  )
  
(divisors 9)
(divisors 12)

(define (take-while p l)
  (define (acc a curr)
    (if (not (p (car curr)))
      a
      (acc (append a (list (car curr))) (cdr curr)))
    )
  (acc '() l))
(take-while even? `(4 6 7 8 10))
