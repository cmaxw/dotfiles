;; Change scratch buffer to ruby-mode
(setq initial-major-mode 'ruby-mode)
(setq initial-scratch-message )

(with-current-buffer "*scratch*"
  (interactive)
  (insert "RUBY_VERSION  # =>")
  (xmp))
