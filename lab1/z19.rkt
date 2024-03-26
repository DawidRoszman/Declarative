#lang racket

(define tree '(2 (3 () ( 4 () ())) ( 1 () ())))

(define (memberTree? element tree)
  (if (null? tree)
      #f
      (or (eq? element (car tree))
          (memberTree? element (cadr tree))
          (memberTree? element (caddr tree)))))
  (memberTree? 9 tree)

(define (sumTree tree)
  (if (= 0 (length tree))
      0
      (+ (car tree)
         (sumTree (cadr tree))
         (sumTree (caddr tree)))
      ))


(sumTree tree)

(define (inorder tree)
  (if (null? tree)
      '()
      (append (inorder (cadr tree))
              (cons (car tree)
                    (inorder (caddr tree))))))

(inorder tree)

(define (mapTree f tree)
  (if (null? tree)
      '()
      (cons (f (car tree))
            (cons (mapTree f (cadr tree))
                  (mapTree f (caddr tree))))))

(mapTree (lambda (x) (* x 2)) tree)
