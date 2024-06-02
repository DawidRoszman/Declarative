#lang racket
(define (fold f e l)
  (if (null? l) e (f (car l) (fold f e (cdr l)))))

(define (member x l)
  (not (empty? (fold (lambda (z c) 
                 (if (= z x)
                   (cons z c)
                   c)) '() l))))
(member 2 '(1 2 3 4))

(define (delete x l)
  (fold (lambda (z c)
          (if (= z x)
            c
            (cons z c))) '() l))
(delete 2 '(1 2 3 2 4))
