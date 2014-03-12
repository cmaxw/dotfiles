;; Idea from Ryan Davis:
;; http://blog.zenspider.com/blog/2013/06/my-emacs-setup-packages.html

(require 'package)

(dolist (repo '(("elpa"      . "http://tromey.com/elpa/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("melpa"     . "http://melpa.milkbox.net/packages/")))
  (add-to-list 'package-archives repo))

(defun fdx/package-refresh-and-install (name)
  "Ensure we have a fresh package list, then install."
  (package-refresh-contents)
  (package-install name))

(defun fdx/package-install-unless-installed (name)
  "Install a package by name unless it is already installed."
  (or (package-installed-p name) (fdx/package-refresh-and-install name)))

(defun fdx/package-version-for (package)
  "Get the version of a loaded package."
  (package-desc-vers (cdr (assoc package package-alist))))

(defun fdx/package-delete-by-name (package)
  "Remove a package by name."
  (package-delete (symbol-name package)
                  (package-version-join (fdx/package-version-for package))))

(defun fdx/package-delete-unless-listed (packages)
  "Remove packages not explicitly declared."
  (let ((packages-and-dependencies (fdx/packages-requirements packages)))
    (dolist (package (mapcar 'car package-alist))
      (unless (memq package packages-and-dependencies)
        (fdx/package-delete-by-name package)))))

(defun fdx/packages-requirements (packages)
  "List of dependencies for packages."
  (delete-dups (apply 'append (mapcar 'fdx/package-requirements packages))))

(defun fdx/package-requirements (package)
  "List of recursive dependencies for a package."
  (let ((package-info (cdr (assoc package package-alist))))
    (cond ((null package-info) (list package))
          (t
           (fdx/flatten
            (cons package
                  (mapcar 'fdx/package-requirements
                          (mapcar 'car (package-desc-reqs package-info)))))))))

(defun fdx/package-install-and-remove-to-match-list (&rest packages)
  "Sync packages so the installed list matches the passed list."
  (package-initialize)
  (condition-case nil ;; added to handle no-network situations
      (mapc 'fdx/package-install-unless-installed packages)
    (error (message "Couldn't install package. No network connection?")))
  (fdx/package-delete-unless-listed packages))

(fdx/package-install-and-remove-to-match-list
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
 )

;; vendored packages
(fdx/load-init-file "fdx/vendor/rcodetools")
