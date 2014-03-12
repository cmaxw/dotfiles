;;;; Ido-mode
;; Config M-x mode for ido
(global-set-key
 "\M-x"
 (lambda ()
   (interactive)
   (call-interactively
    (intern
     (ido-completing-read
      "M-x " (all-completions "" obarray 'commandp))))))

(ido-mode t)

;(ido-ubiquitous t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

; Flex matching for ido-mode
(require 'flx-ido)
(flx-ido-mode 1)
;; Disable ido faces to see flx higlights
(setq ido-use-faces nil)

;; Ido vertical mode (like Vim's CtrlP)
(require 'ido-vertical-mode)
(ido-vertical-mode)
