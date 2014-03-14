(paredit-mode 1)

;; fci-mode
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(fci-mode)

;; show junk whitespace
(whitespace-mode)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(local-set-key (kbd "C-=") 'cmaxw/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'cmaxw/reindent-buffer)
(local-set-key (kbd "RET") 'cmaxw/indent-this-and-previous)
