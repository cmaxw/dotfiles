;; This is a HACK. I had to haxxor emacs so it wouldn't blow up when tool-bar-mode isn't defined.
;; In particular el4r blows up and I can't find the reference
(defun tool-bar-mode (x)
  "Tell tool bar mode where it can go"
  )

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
