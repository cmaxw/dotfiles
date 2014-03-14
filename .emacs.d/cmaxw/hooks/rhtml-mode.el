(require 'expand-region)
(local-set-key (kbd "M-r") 'er/expand-region)

(local-unset-key (kbd "C-="))
(local-set-key (kbd "C-=") 'cmaxw/reindent-buffer)
(local-unset-key (kbd "M-="))
(local-set-key (kbd "M-=") 'cmaxw/reindent-buffer)

(local-set-key (kbd "RET") 'cmaxw/indent-this-and-previous)
