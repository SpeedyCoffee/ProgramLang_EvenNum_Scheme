(display "Even numbers: ")
(letrec
  (
    (even-number (lambda (number-index num-tracker sum)
        (if (>= number-index num-tracker)
          (begin
            (define result (+ sum number-index))
            (display number-index)
            (display "\nSum: ")
            (display result)
            #f
          )
          (begin
            (display number-index)
            (display " ")      
            (even-number (+ number-index 2) num-tracker (+ sum number-index))
          )
        )
      )
    
    )
  )
  (even-number 2 10 0)
)