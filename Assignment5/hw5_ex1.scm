; CS152 Spring 2022
; Lifan Zeng
; 014172171
; Homework assignment 5
; Exercise 1
; 5/12/2022


;Implement a function named linear that describes a line given values of m (line slope) and b
;  (intercept):    y = m*x + b

;Implement a function named quadratic that describes a quadratic curve given values of a, b, c:   
;  y=a * x^2 + b * x + c

;Implement a third function named chooseMapping, which takes in two parameters, one is a
;string that specifies the transformation, and the second one is a list. If the transformation is
;“linear”, then linear function is applied to the list, with m = 5 and b = 3. If the transformation is
;“quadratic”, then quadratic function is applied to the list, with a = 3, b = 4, and c = 1. Use map
;function to apply the appropriate function to the input list. You might want to implement some
;helper functions not specified in this description.
;Example of your code execution:
;(display (chooseMapping "linear" '(1 2 3 4 5 6 7 8 9 10)))
;Expected output:   (8 13 18 23 28 33 38 43 48 53)
;Example of your code execution:
;(display (chooseMapping "quadratic" '(1 2 3 4 5 6 7 8 9 10)))
;Expected output:  (8 21 40 65 96 133 176 225 280 341)


;(display "m*x + b = ")
(define (linear x) (let ([m 5] [b 3]) (+ (* m x) b)))
;(display "a * x^2 + b * x + c = ")
(define (quadratic x) (let ([a 3] [b 4] [c 1]) (+ (* a (* x x)) (* b x) c)))

(define (chooseMapping str xlist) 
    (if (equal? str "linear") 
        (display (map linear xlist))) 
    (if (equal? str "quadratic") 
        (display (map quadratic xlist)))
)

(chooseMapping "linear" '(1 2 3 4 5 6 7 8 9 10))
(newline)
(chooseMapping "quadratic" '(1 2 3 4 5 6 7 8 9 10))
(newline)