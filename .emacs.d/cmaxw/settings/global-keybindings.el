(global-set-key (kbd "C-c s") 'query-replace-regexp)
(global-set-key (kbd "C-c S") 'replace-regexp)

(global-set-key (kbd "C-c i") 'align-regexp)


(global-unset-key (kbd "M--"))
(global-set-key (kbd "M--") 'kill-whole-line)

(global-set-key (kbd "C-<f8>") 'color-theme-ir-black)
(global-set-key (kbd "C-<f9>") 'color-theme-railscasts)
(global-set-key (kbd "C-<f10>") 'color-theme-dark-laptop)
(global-set-key (kbd "C-<f11>") 'color-theme-deep-blue)

(global-unset-key (kbd "C-M-j"))
(global-unset-key (kbd "C-M-k"))
(global-set-key (kbd "<M-down>") 'move-line-down)
(global-set-key (kbd "<M-up>") 'move-line-up)
(global-set-key (kbd "C-M-j") 'move-line-down)
(global-set-key (kbd "C-M-k") 'move-line-up)


(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

(global-unset-key (kbd "C-x \\"))
(global-set-key (kbd "C-x \\") 'split-window-right)
(global-unset-key (kbd "C-x |"))
(global-set-key (kbd "C-x |") 'split-window-right)

(global-set-key (kbd "C-x /") 'toggle-window-split)


(global-unset-key (kbd "C-x -"))
(global-set-key (kbd "C-x -") 'split-window-below)
(global-unset-key (kbd "C-x _"))
(global-set-key (kbd "C-x _") 'split-window-below)

(global-set-key (kbd "C-x t") 'jw-shell)

(global-unset-key (kbd "C-z"))

(global-set-key (kbd "M-S-<f1>") (lambda () (interactive) (jw-shell 1)))
(global-set-key (kbd "M-S-<f2>") (lambda () (interactive) (jw-shell 2)))
(global-set-key (kbd "M-S-<f3>") (lambda () (interactive) (jw-shell 3)))
(global-set-key (kbd "M-S-<f4>") (lambda () (interactive) (jw-shell 4)))
(global-set-key (kbd "M-S-<f5>") (lambda () (interactive) (jw-shell 5)))
(global-set-key (kbd "M-S-<f6>") (lambda () (interactive) (jw-shell 6)))
(global-set-key (kbd "M-S-<f7>") (lambda () (interactive) (jw-shell 7)))

(global-set-key (kbd "C-c C-p q") 'current-dir-as-current-project)
(global-set-key (kbd "C-c C-o q") 'current-dir-as-current-project)

(global-set-key (kbd "C-c C-o g") 'open-gemfile)
(global-set-key (kbd "C-c C-o s") 'open-schema)
(global-set-key (kbd "C-c C-o r") 'open-routes)
(global-set-key (kbd "C-c C-o t") 'open-rakefile)
