#lang racket
(define (fold f e l)
    (if (null? l) e (f (car l) (fold f e (cdr l)))))
; (fold (lambda (x y) (cons (* x 2) y)) '() '(1 2 3))
(define (append m l)
    (if (empty? m)
        l
        (cons (car m) (append (cdr m) l))))

(define (append-fold m l)
        (fold (lambda (x y) (cons x y)) l m))

(append '(1 2 3) '(4 5 6))
(append-fold '(1 2 3) '(4 5 6))

(define (delete x l)
    (fold (lambda (z y) (
        if (= x z)
        y
        (cons z y))) '() l))
(delete 2 '(1 2 3 2 4))
