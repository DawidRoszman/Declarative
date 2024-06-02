#lang racket
(define (append l m)
    (if (empty? l)
    m
    (cons (car l) (append (cdr l) m))))
(append '(1 2 3 4) '(5 6 7 8))

(define (nth n x l)
    (if (empty? l)
        '()
        (if (= n 1)
            (cons x (cdr l))
            (cons (car l) (nth (- n 1) x (cdr l))))))
(nth 2 'z '(a b c))
(nth 5 'z '(a b c))
