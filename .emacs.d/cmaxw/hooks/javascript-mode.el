;; show junk whitespace
(whitespace-mode)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(local-unset-key (kbd "C-="))
(local-set-key (kbd "C-=") 'cmaxw/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'cmaxw/reindent-buffer)

;; activate character pairing
(require 'smartparens)
(smartparens-mode)
