#lang racket

(define (new-if condition consequence alternative)
   (cond (condition consequence)
         (else      alternative)))

(new-if (= 1 1) 1 0)

; This implementation of "if" is not correct because "if"
; the special form in Scheme evaluates only one of the two expressions, and the other is not evaluated at all. 
; In our implementation, both expressions are evaluated
; because we used "cond", so the "new-if" function is not a correct implementation of "if" in Scheme.
;
(define (factorial_help n i acc)
     (new-if (< n i)
         acc
         (factorial_help n (+ i 1) (* i acc))))

  (define (factorial n)
     (factorial_help n 1 1))

(factorial 3)
