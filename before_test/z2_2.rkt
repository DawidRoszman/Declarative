#lang racket


(define (inorder tree) 
  (if (null? tree)
      '()
      (append 
         (inorder (cadr tree))
         (list (car tree))
         (inorder (caddr tree)))))  

(inorder '(4 (3 () ()) (2 (9 () ()) (7 () ()))))
