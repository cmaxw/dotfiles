;; CMAXW's Emacs configuration

(require 'autoload)

(defun cmaxw/load-init-file (path &optional noerror)
  "This loads a file from inside the the .emacs.d directory"
  (let ((file (file-name-sans-extension
               (expand-file-name path user-emacs-directory))))
    (load file noerror)))

;; load configuration settings by type
(cmaxw/load-init-file "cmaxw/init/freshen")
(cmaxw/load-init-file "cmaxw/init/system")
(cmaxw/load-init-file "cmaxw/init/autoloads")
(cmaxw/load-init-file "cmaxw/init/packages")
(cmaxw/load-init-file "cmaxw/init/compile")
(cmaxw/load-init-file "cmaxw/init/autohooks")
(cmaxw/load-init-file "cmaxw/init/settings")

(color-theme-sanityinc-tomorrow-night)

;;; TEMP ;;;
(defun j2f ()
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (replace-regexp "fdx" "cmaxw")))
(global-set-key (kbd "<f6>") 'j2f)
;;;;;;;;;;;;
