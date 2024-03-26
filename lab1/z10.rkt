#lang racket

; Please define a function (product term next a b) analogous to function sum.
; Please define a function (product term next a b) analogous to function sum.
;Please show, how function product can be used to define both function silnia and for the approximation of p using the formula   p/4 = 2 · 4 · 4 · 6 · 6 · 8 ··· / 3 · 3 · 5 · 5 · 7 · 7 ··· .
(define (product term next a b)
  (if (> a b)
      1
      (* (term a) (product term next (next a) b))))

(define (factorial n)
  (define (term x) x)
  (define (next x) (+ x 1))
  (product term next 1 n))

(define (pi-approximation)
  (define (term x)
    (if (even? x)
        (* x (+ x 2))
        (* x (+ x 1))))
  (define (next x) (+ x 2))
  (* 2 (/ (product term next 2 1000) (product term next 3 1000))))


(factorial 5)
(pi-approximation)


