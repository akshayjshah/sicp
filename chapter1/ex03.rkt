(define (call-with-largest-two func a b c)
        (cond ((and (< c a) (< c b)) (func a b))
              ((and (< b a) (< b c)) (func a c))
              (else (func b c))))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-largest-two-squares a b c)
        (call-with-largest-two sum-of-squares a b c))
