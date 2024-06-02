#lang racket

(define (twice l) 
  (if (empty? l)
    '()
    (cons (car l) (cons (car l) (twice (cdr l))))))
(twice '(1 2 3 4))

(define (sum f r)
  (if (= r 0)
    (f r)
    (+ (f r) (sum f (- r 1)))))
(sum (lambda (x) (+ x 2)) 3)
