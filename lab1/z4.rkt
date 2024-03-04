#lang racket
(define (same-values? p1 p2 x y)
  (eq? (p1 x y) (p2 x y)))
