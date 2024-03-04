#lang racket
(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1)) (fib (- n 2)))
      ))

(define (fib_help n a b)
  (if (= n 0)
      a
      (fib_help (- n 1) b (+ a b))
      ))

(define (fib_acc n)
  (fib_help n 0 1)
  )
