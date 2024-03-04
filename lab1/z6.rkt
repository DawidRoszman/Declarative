#lang racket
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(define (factorial_help n i acc)
    (if (< n i)
        acc
        (factorial_help n (+ i 1) (* i acc))))

(define (factorial n)
   (factorial_help n 1 1))
