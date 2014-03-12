;;;###autoload
(defun erb-to-haml ()
  "run html2haml on current buffer"
  (interactive)
  (save-excursion
    (save-buffer)
    (shell-command (concat "html2haml --erb " (buffer-file-name))
                   (current-buffer)
                   )))

;; Pipe string into html2haml
;; Find a way to insert it in its place
;; echo "<h1>hola</h1>" | html2haml -s
