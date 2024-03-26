; Please define a function (root f a b) approximating a root of f between a and b using the half-interval-method.
(define (root f a b) ( 
  (let ((midpoint (/ (+ a b) 2)))
    (if (< (abs (- a b)) 0.0001)
        midpoint
        (let ((value (f midpoint)))
          (cond ((< value 0) (root f midpoint b))
                ((> value 0) (root f a midpoint))
                (else midpoint))))))) 
