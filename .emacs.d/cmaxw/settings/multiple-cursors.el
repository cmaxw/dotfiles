(require 'multiple-cursors)

;; Multiple cursors
(global-set-key (kbd "C-<return>") 'mc/edit-lines)
(global-set-key (kbd "C-c a") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c >") 'mc/mark-next-like-this)

(global-set-key (kbd "C-.") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c .") 'mc/mark-all-like-this)
