;;;###autoload
(defun fdx/indent-this-and-previous ()
  "Indent the current line, then create a new line and indent it too."
  (interactive)
  (indent-according-to-mode)
  (newline-and-indent))
