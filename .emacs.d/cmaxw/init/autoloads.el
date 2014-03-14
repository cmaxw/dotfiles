;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup.html

(require 'find-lisp)

(setq cmaxw-autoload-file (concat user-emacs-directory "loaddefs.el"))

(defun cmaxw/autoload-directories (directories)
  "Regenerate the autoload definitions file if necessary and load it."
  (let ((autoload-file cmaxw-autoload-file))
    (if (or (not (file-exists-p autoload-file))
            (catch 'newer
              (dolist (directory directories)
                (dolist (file (find-lisp-find-files directory "\\.el$"))
                  (if (file-newer-than-file-p file autoload-file)
                      (throw 'newer file))))))
        (let ((generated-autoload-file autoload-file)
              (subdirectories (apply
                               'nconc
                               (mapcar
                                (lambda (directory)
                                  (find-lisp-find-files-internal
                                   directory
                                   'find-lisp-file-predicate-is-directory
                                   'find-lisp-default-directory-predicate))
                                directories))))
          (apply 'update-directory-autoloads (append directories
                                                     subdirectories))))))

(defun cmaxw/prepare-autoloads ()
  "Sets up and triggers autoload file."
  (cmaxw/autoload-directories
   (mapcar (lambda (directory) (concat user-emacs-directory directory "/"))
           '("cmaxw/functions" "cmaxw/commands")))
  (add-to-list 'load-path user-emacs-directory t)
  (load cmaxw-autoload-file))

(cmaxw/prepare-autoloads)
