#lang racket
(define (new.< x y) (< x y))
(define (new.> x y) (> x y))

(display (new.< 1 2))
(newline)

