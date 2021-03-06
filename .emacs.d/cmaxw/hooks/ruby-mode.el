;;(rvm-activate-corresponding-ruby)

;; fci-mode
;(require 'fill-column-indicator)
;(setq fci-rule-column 80)
;(fci-mode)

;; activate character pairing
;(require 'smartparens)
;(smartparens-mode)

(require 'ruby-electric)
(electric-pair-mode t)
;(sp-with-modes (list major-mode)
;  (sp-local-pair "|" "|"))

;; Colorize symbols correctly in ruby-mode
(font-lock-add-keywords
 'ruby-mode
 '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|$\\)" (1 font-lock-constant-face))))

;; show junk whitespace
;(whitespace-mode)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(local-unset-key (kbd "C-="))
(local-set-key (kbd "C-=") 'cmaxw/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'cmaxw/reindent-buffer)

(local-set-key (kbd "RET") 'cmaxw/indent-this-and-previous)
(local-set-key (kbd "C-c C-c") 'xmp)
(local-set-key (kbd "C-;") 'comment-dwim)


(require 'expand-region)
(local-set-key (kbd "M-r") 'er/expand-region)

;;; Refactorings
(local-set-key (kbd "C-c r l") 'cmaxw/refactoring/extract-let)
(local-set-key (kbd "C-c r e") 'cmaxw/refactoring/extract-method)

;(subword-mode)

(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "\C-c#" 'comment-or-uncomment-region)))
