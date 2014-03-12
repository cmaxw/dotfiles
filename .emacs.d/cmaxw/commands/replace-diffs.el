;;;###autoload
(defun fdx/replace-plus-minus-on-diffs ()
  "When copying from a diff buffer to another, this function eliminates the '+' at the beginning of lines and the lines that start with '-'."
  (interactive)
  (save-excursion
    (save-match-data
      (goto-char (point-min))
      (replace-regexp "^-.*\n" "")
      (goto-char (point-min))
      (replace-regexp "^+ *" "")
      (fdx/reindent-buffer)
      )))
