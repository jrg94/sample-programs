(defun CHECK (x)
   (format t "Your number is")
   (cond( (evenp x) 'even)
        ( (oddp x) 'odd)
        (T 'please input a number)
   )
)
