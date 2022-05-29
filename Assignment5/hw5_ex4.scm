; CS152 Spring 2022
; Lifan Zeng
; 014172171
; Homework assignment 5
; Exercise 4
; 5/12/2022

; Implement a function named getNthElement, which takes in two parameters: a list of elements, a
; position in the list to retrieve. If the position is out of bounds, then your function should returns
; False (#f), otherwise the element at the corresponding position should be returned. Indexing
; should start at 1, not 0.
; Example of your code execution:
; (display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 40))
; Expected output:
; #f
; Example of your code execution:
; (display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 0))
; Expected output:
; #f
; Example of your code execution:
; (display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 4))
; Expected output:
; 3


(define (getNthElement l n)
  (if (or (> n (length l)) (< n 1))
    '#f
    (if (eq? n 1)
      (car l)
      (getNthElement (cdr l) (- n 1)))))

(display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 40))
(newline)
(display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 0))
(newline)
(display (getNthElement '(0 1 2 3 4 5 6 7 8 9 10) 4))