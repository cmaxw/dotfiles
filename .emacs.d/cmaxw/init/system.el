;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup-osx.html

;; load OS specific settings
(cmaxw/load-init-file (concat "cmaxw/system/" (symbol-name system-type)) t)

;; load system specific settings
(cmaxw/load-init-file (concat "cmaxw/system/" 
                             (car (split-string (system-name) "\\."))) t)

;; load minimal early system settings
(cmaxw/load-init-file "cmaxw/system/minimal.el")

;; load minimal early system settings
(cmaxw/load-init-file "cmaxw/system/emacs-configurations.el")

