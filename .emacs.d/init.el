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
