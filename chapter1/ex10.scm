(define (ack x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (ack (- x 1)
                  (ack x (- y 1))))))

;; (ack 1 10) is 1024, which is 2^10
;; (ack 2 4) is 65,536, which is 2^(2^(2^2))
;; (ack 3 3) is also 65,536

;; f(n) = 2n
;; g(n) = 2^n
;; h(n) = 2^2^...n times

;; The Wikipedia page on this is fascinating:
;; http://en.wikipedia.org/wiki/Ackerman_function
