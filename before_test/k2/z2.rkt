#lang racket
(define (fold f e l)
    (if (null? l) e (f (car l) (fold f e (cdr l)))))

(define (exists pred l)
    (not (empty? (fold (lambda (x y) (
        if (pred x)
            (cons x y)
            y)) '() l)))
)
(exists even? '(1 1 1))

(define (sum g a)
    (if (=  a 0)
        (g a)
        (+ (g a) (sum g (- a 1)))))
(sum (lambda (x) (+ x 2)) 3)
