#lang racket
(define (delete x l)
    (if (= x (car l))
        (cdr l)
        (cons (car l) (delete x (cdr l)))))
(delete 2 '(1 2 3 4))

(define (count x l)
    (if (empty? l)
        0
        (if (= x (car l))
            (+ 1 (count x (cdr l)))
            (count x (cdr l)))))
(count 2 '(1 2 3 2 4 2))
