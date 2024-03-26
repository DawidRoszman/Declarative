#lang racket

(define (square-list l)
  (if (null? l)
      '()
      (cons (* (car l) (car l))
            (square-list (cdr l)))))

(square-list '( 1 2 3 4 5))

(define (mapf f l)
  (if (null? l)
      '()
      (cons (f (car l))
            (mapf f (cdr l)))))

(mapf (lambda (x) (* x 2)) '(1 2 3 4 5))

(define (filter pred l) 
  (if (null? l)
      '()
      (if (pred (car l))
          (cons (car l)
                (filter pred (cdr l)))
          (filter pred (cdr l)))))
