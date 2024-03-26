#lang racket

(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(append '(1 2 3) '(4 5 6))

(define (last l)
  (if (null? (cdr l))
      (car l)
      (last (cdr l))))

(last '(1 2 3 4 5))

(define (reverse l)
  (if (null? l)
      l
      (append (reverse (cdr l)) (list (car l)))))

(reverse '(1 2 3 4 5))

(define (delete x l)
  (if (null? l)
      l
      (if (= x (car l))
          (delete x (cdr l))
          (cons (car l) (delete x (cdr l))))))

(define (pairing l1 l2)
  (if (null? l1)
      '()
      (cons (list (car l1) (car l2)) (pairing (cdr l1) (cdr l2)))))

(pairing '(1 2 3) '(4 5 6))
;(split x l), that splits l into two lists l1 and l2. l1 contains the element of l smaller than x and l2 the elements greater than x.
(define (split x l)
  (if (null? l)
      (list '() '())
      (if (< (car l) x)
          (let ((s (split x (cdr l))))
            (list (cons (car l) (car s)) (cadr s)))
          (let ((s (split x (cdr l))))
            (list (car s) (cons (car l) (cadr s))))))
  )
  
(split 3 '(4 3 9 8 1 2 2 7 6))
