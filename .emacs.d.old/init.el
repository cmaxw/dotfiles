(require 'package)
(package-initialize)

(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(load-theme 'sanityinc-tomorrow-night t)

(ido-mode                      1)
(setq ido-everywhere           t)
(setq ido-enable-flex-matching t)

(setq tab-width 2)

(setq backup-directory-alist `(("." . "~/.saves")))

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'haml-mode)

(require 'linum)
(global-linum-mode t)
(put 'upcase-region 'disabled nil)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun fdx/reindent-buffer ()
  "Indent the current buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max))
  (untabify (point-min) (point-max)))

(local-set-key (kbd "C-c =") 'fdx/reindent-buffer)

(add-hook 'dired-mode-hook 'rspec-dired-mode)
(add-hook 'ruby-mode-hook 'rspec-mode)

(setq ruby-insert-encoding-magic-comment nil)

(setq-default indent-tabs-mode nil)

(custom-set-variables '(coffee-tab-width 2))
