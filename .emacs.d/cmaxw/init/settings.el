(defun cmaxw/load-settings ()
  "Loads all Lisp files in the settings subdirectory of the init directory."
  (dolist (file (directory-files (concat user-emacs-directory "cmaxw/settings")
                                 nil
                                 "\\.el$"))
    (cmaxw/load-init-file (concat "cmaxw/settings/" file))))

(cmaxw/load-settings)
