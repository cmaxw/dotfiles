(global-set-key (kbd "C-c C-p f")
                (lambda ()
                  (interactive)
                  (open-project "~/")))

(global-set-key (kbd "C-c C-p t")
                (lambda ()
                  (interactive)
                  (open-project "~/code/time_tracker")))

(global-set-key (kbd "C-c C-p y")
                (lambda ()
                  (interactive)
                  (open-project "~/code/dashboard-rails")))

(global-set-key (kbd "C-c C-p c")
                (lambda ()
                  (interactive)
                  (open-project "~/code")))

(global-set-key (kbd "C-c C-p e")
                (lambda ()
                  (interactive)
                  (open-project "~/.emacs.d/fdx/")))

(global-set-key (kbd "C-c C-p z")
                (lambda ()
                  (interactive)
                  (find-file "~/.zshrc")))

(global-set-key (kbd "C-c C-p s")
                (lambda ()
                  (interactive)
                  (switch-to-buffer "*scratch*")))

(global-set-key (kbd "C-c C-p i")
                (lambda ()
                  (interactive)
                  (open-project "~/code/intentional_excellence")))

(global-set-key (kbd "C-c C-p d")
                (lambda ()
                  (interactive)
                  (open-project "~/code/intentional_excellence/devchattv")))

(global-set-key (kbd "C-c C-p w")
                (lambda ()
                  (interactive)
                  (open-project "~/code/dashboard")))

(global-set-key (kbd "C-c C-p h")
                (lambda ()
                  (interactive)
                  (open-project "~/code/intentional_excellence/healthsciencewriters")))
