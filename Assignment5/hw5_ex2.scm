; CS152 Spring 2022
; Lifan Zeng
; 014172171
; Homework assignment 5
; Exercise 2
; 5/12/2022

; Implement a function named countOccurrences, which given an element and a list of elements
; counts the occurrence of that one element in the list. If the element is not present, then 0 should
; be returned.
; Example of your code execution:
; (display (countOccurrences 2 '(1 2 1 4 2 6 7 2 1 2)))
; Expected output:
; 4
; Example of your code execution:
; (display (countOccurrences 1 '(1 2 1 4 2 6 7 2 1 2)))
; Expected output:
; 3
; Example of your code execution:
; (display (countOccurrences 10 '(1 2 1 4 2 6 7 2 1 2)))
; Expected output:
; 0


(define n 0)
(define (countOccurrences e xlist)
    (if (not(null? xlist)) 
        (if (equal? e (car xlist)) (set! n (+ n 1)))
    )
    (if (not(null? xlist)) (countOccurrences e (cdr xlist)))
)


(set! n 0)
(countOccurrences 2 '(1 2 1 4 2 6 7 2 1 2))
(display n)
(newline)
(set! n 0)
(countOccurrences 1 '(1 2 1 4 2 6 7 2 1 2))
(display n)
(newline)
(set! n 0)
(countOccurrences 10 '(1 2 1 4 2 6 7 2 1 2))
(display n)
(newline)