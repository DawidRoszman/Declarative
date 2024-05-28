#lang racket

(define (filter pred l) 
  (
   if (null? l)
   `()
    (if (pred (car l))
    (cons (car l) (filter pred (cdr l)))
    (filter pred (cdr l)))))

(filter list? `((4 3) 7 (1 2 3) 10))
(filter even? `(4 3 7 1 2 3 10))
