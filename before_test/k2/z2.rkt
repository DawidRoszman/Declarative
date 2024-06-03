#lang racket
(define (fold f e l)
    (if (null? l) e (f (car l) (fold f e (cdr l)))))

(define (exists pred l)
    (empty? (fold (lambda (x y) (
        if (pred x)
            y
            (cons x y)
            )) '() l))
)
(exists even? '(1 1 1))

(define (sum g a)
    (if (=  a 0)
        (g a)
        (+ (g a) (sum g (- a 1)))))
(sum (lambda (x) (+ x 2)) 3)
