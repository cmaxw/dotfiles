;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup-packages.html

(require 'package)

(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(defun cmaxw/package-refresh-and-install (name)
  "Ensure we have a fresh package list, then install."
  (package-refresh-contents)
  (package-install name))

(defun cmaxw/package-install-unless-installed (name)
  "Install a package by name unless it is already installed."
  (or (package-installed-p name) (cmaxw/package-refresh-and-install name)))

(defun cmaxw/package-version-for (package)
  "Get the version of a loaded package."
  (package-desc-vers (cdr (assoc package package-alist))))

(defun cmaxw/package-delete-by-name (package)
  "Remove a package by name."
  (package-delete (symbol-name package)
                  (package-version-join (cmaxw/package-version-for package))))

(defun cmaxw/package-delete-unless-listed (packages)
  "Remove packages not explicitly declared."
  (let ((packages-and-dependencies (cmaxw/packages-requirements packages)))
    (dolist (package (mapcar 'car package-alist))
      (unless (memq package packages-and-dependencies)
        (cmaxw/package-delete-by-name package)))))

(defun cmaxw/packages-requirements (packages)
  "List of dependencies for packages."
  (delete-dups (apply 'append (mapcar 'cmaxw/package-requirements packages))))

(defun cmaxw/package-requirements (package)
  "List of recursive dependencies for a package."
  (let ((package-info (cdr (assoc package package-alist))))
    (cond ((null package-info) (list package))
          (t
           (cmaxw/flatten
            (cons package
                  (mapcar 'cmaxw/package-requirements
                          (mapcar 'car (package-desc-reqs package-info)))))))))

(defun cmaxw/package-install-and-remove-to-match-list (&rest packages)
  "Sync packages so the installed list matches the passed list."
  (package-initialize)
  (condition-case nil ;; added to handle no-network situations
      (mapc 'cmaxw/package-install-unless-installed packages)
    (error (message "Couldn't install package. No network connection?")))
  (cmaxw/package-delete-unless-listed packages))

(cmaxw/package-install-and-remove-to-match-list
 'ido
 'flx-ido
 'ido-vertical-mode
 'magit
 'yasnippet
 'fill-column-indicator
 'smartparens
 'color-theme
 'color-theme-ir-black
 'color-theme-railscasts
 'multiple-cursors
 'rvm
 'ruby-mode
 'rinari
 'ruby-electric
 'ruby-compilation
 'rspec-mode
 'rhtml-mode
 'haml-mode
 'slim-mode
 'yaml-mode
 'css-mode
 'scss-mode
 'coffee-mode
 'dired+
 'paredit
 'ace-jump-mode
 'expand-region
 'undo-tree
 'multi-term
 'swoop
 'color-theme-sanityinc-tomorrow
 'bundler
 )

;; vendored packages
(cmaxw/load-init-file "cmaxw/vendor/rcodetools")
