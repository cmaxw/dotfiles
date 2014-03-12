;; Some configs
(setq show-trailing-whitespace nil)

(setq term-buffer-maximum-size 10000)

;; Keybindings
(add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
(add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))

(define-key term-raw-map (kbd "C-y") 'term-paste)
