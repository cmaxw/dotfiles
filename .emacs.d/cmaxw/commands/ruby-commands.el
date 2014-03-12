;;;###autoload
(defun open-file-in-current-project (f)
  "Opens some file using the current project as it base."
  (find-file (concat current-project "/" f)))

;;;###autoload
(defun open-gemfile ()
  "Open the current project Gemfile."
  (interactive)
  (open-file-in-current-project "Gemfile"))

;;;###autoload
(defun open-schema ()
  "Open the current project dtbase schema."
  (interactive)
  (open-file-in-current-project "db/schema.rb"))

;;;###autoload
(defun open-routes ()
  "Open the current project routes.rb."
  (interactive)
  (open-file-in-current-project "config/routes.rb"))

;;;###autoload
(defun open-rakefile ()
  "Open the current project Rakefile."
  (interactive)
  (open-file-in-current-project "Rakefile"))
