#lang racket
(define (filter pred l)
    (if (empty? l)
        '()
        (if (pred (car l))
            (cons (car l) (filter pred (cdr l)))
            (filter pred (cdr l)))))

(filter even? '(1 2 3 4 5 6))

(define (inorder t)
    (if (empty? t)
        '()
    (append (inorder (cadr t) ) (list (car t)) (inorder (caddr t)))))
(inorder '(4 (3 () ()) (2 (9 () ()) (7 () ()))))
