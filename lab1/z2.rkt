#lang racket

(define (new.< x y) (< x y))
(define (new.> x y) (and (not (< x y)) (not (= x y))))
(define (new.= x y) (and (not (< x y)) (not (> x y))))
(define (new.<= x y) (or (< x y)  (= x y)))
(define (new.>= x y) (or (not ( < x y)) (= x y)))
(define (new.<> x y) (or (< x y ) (> x y)))

(display (new.< 1 2))
(newline)
(display (new.> 1 2))
(newline)
(display (new.= 1 2))
(newline)
(display (new.<= 1 2))
(newline)
(display (new.>= 1 2))
(newline)
(display (new.<> 1 2))

