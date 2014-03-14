;;;###autoload
(defun cmaxw/flatten (x)
  "Flatten a list."
  (cond ((null x) nil)
        ((listp x) (append (cmaxw/flatten (car x)) (cmaxw/flatten (cdr x))))
        (t (list x))))
