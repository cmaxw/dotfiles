;;;###autoload
(defun open-project (project-folder)
  "Open a project."
  (interactive)
  (dired-at-point project-folder)
  (defvar current-project project-folder))

;;;###autoload
(defun print-current-project ()
  "Return the current project directory."
  (interactive)
  (message (concat "Current Project: " current-project)))

;;;###autoload
(defun current-dir-as-current-project ()
  "Set current dir as current project."
  (interactive)
  (defvar current-project default-directory)
  (print-current-project))
