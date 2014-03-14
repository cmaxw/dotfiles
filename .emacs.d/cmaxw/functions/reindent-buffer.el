;;;###autoload
(defun cmaxw/reindent-buffer ()
  "Indent the current buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max))
  (untabify (point-min) (point-max)))
