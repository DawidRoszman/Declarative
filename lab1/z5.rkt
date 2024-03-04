#lang racket
(define (odd? n)
  (if (zero? n)
    #f
    (even? (- n 1))
    ))

(define (even? n)

  ( if (zero? n) #f (odd? (- n 1)))
  )

