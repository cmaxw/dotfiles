(setq yas-snippet-dirs
      (list (expand-file-name "fdx/snippets" user-emacs-directory)))

(yas-global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))

(defun fdx/recompile-snippets ()
  (interactive)
  (shell-command 
   (concat "rm -rf " 
	   user-emacs-directory 
	   "fdx/snippets/**/.yas-compiled-snippets.el*"))
  (yas/recompile-all)
  (yas/reload-all))
(global-set-key (kbd "<f7>") 'fdx/recompile-snippets)
