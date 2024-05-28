#lang racket

(define (delete x l) (
                      if (null? l)
                      l
                     (if (= x (car l))
                           (cdr l)
                           (cons (car l) (delete x (cdr l))))
                     ))

(delete 3 '(1 2 3 4))

(define (countacc x l) 
                     (define (acc sum x l)
                       (if (null? l)
                        sum
                        (if (= x (car l))
                      (+ 1 (countacc x (cdr l)))
                      (countacc x (cdr l)))
                     ))
  (acc 0 x l))

(define (count x l)
  (if (null? l)
    0
    (if (= x (car l))
      (+ 1 (count x (cdr l)))
      (count x (cdr l)))
    ))

(count 2 '(1 2 3 3 3 4 2))
