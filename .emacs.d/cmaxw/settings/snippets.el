(setq yas-snippet-dirs
      (list (expand-file-name "cmaxw/snippets" user-emacs-directory)))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))

(defun cmaxw/recompile-snippets ()
  (interactive)
  (shell-command 
   (concat "rm -rf " 
	   user-emacs-directory 
	   "cmaxw/snippets/**/.yas-compiled-snippets.el*"))
  (yas/recompile-all)
  (yas/reload-all))
(global-set-key (kbd "<f7>") 'cmaxw/recompile-snippets)
