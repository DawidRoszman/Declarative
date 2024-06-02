#lang racket
(define (fold f acc l)
  (if (null? l)
    acc
    (f (car l) (fold f acc (cdr l)))))

(define (length l)
  (if (null? l)
  0
  (+ 1 (length (cdr l)))))

(define (length-fold l)
  (fold (lambda (x acc) (+ 1 acc)) 0 l))

(length '(1 2 3))
(length-fold '(1 2 3 4))

(define (reverse l)
  (fold (lambda (x acc) (append acc (list x))) '() l))

(reverse '(1 2 3))
