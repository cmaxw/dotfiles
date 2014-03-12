;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (delete-current-buffer-file rename-current-buffer-file)
;;;;;;  "fdx/commands/buffer-files" "fdx/commands/buffer-files.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/commands/buffer-files.el

(autoload 'rename-current-buffer-file "fdx/commands/buffer-files" "\
Renames current buffer and file it is visiting.

\(fn)" t nil)

(autoload 'delete-current-buffer-file "fdx/commands/buffer-files" "\
Removes file connected to current buffer and kills buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (duplicate-line) "fdx/commands/duplicate-line"
;;;;;;  "fdx/commands/duplicate-line.el" (21273 61901))
;;; Generated autoloads from fdx/commands/duplicate-line.el

(autoload 'duplicate-line "fdx/commands/duplicate-line" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (jw-set-width jw-suggest-width send-shell-command
;;;;;;  jw-shell jw-choose-shell) "fdx/commands/jw-shell" "fdx/commands/jw-shell.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/commands/jw-shell.el

(autoload 'jw-choose-shell "fdx/commands/jw-shell" "\


\(fn N)" nil nil)

(autoload 'jw-shell "fdx/commands/jw-shell" "\


\(fn N)" t nil)

(autoload 'send-shell-command "fdx/commands/jw-shell" "\
Send commands to a shell process

\(fn STR)" nil nil)

(autoload 'jw-suggest-width "fdx/commands/jw-shell" "\


\(fn)" t nil)

(autoload 'jw-set-width "fdx/commands/jw-shell" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (move-line-up move-line-down) "fdx/commands/move-lines"
;;;;;;  "fdx/commands/move-lines.el" (21273 61901))
;;; Generated autoloads from fdx/commands/move-lines.el

(autoload 'move-line-down "fdx/commands/move-lines" "\


\(fn)" t nil)

(autoload 'move-line-up "fdx/commands/move-lines" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (current-dir-as-current-project print-current-project
;;;;;;  open-project) "fdx/commands/open-project" "fdx/commands/open-project.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/commands/open-project.el

(autoload 'open-project "fdx/commands/open-project" "\
Open a project.

\(fn PROJECT-FOLDER)" t nil)

(autoload 'print-current-project "fdx/commands/open-project" "\
Return the current project directory.

\(fn)" t nil)

(autoload 'current-dir-as-current-project "fdx/commands/open-project" "\
Set current dir as current project.

\(fn)" t nil)

;;;***

;;;### (autoloads (fdx/replace-plus-minus-on-diffs) "fdx/commands/replace-diffs"
;;;;;;  "fdx/commands/replace-diffs.el" (21273 61901))
;;; Generated autoloads from fdx/commands/replace-diffs.el

(autoload 'fdx/replace-plus-minus-on-diffs "fdx/commands/replace-diffs" "\
When copying from a diff buffer to another, this function eliminates the '+' at the beginning of lines and the lines that start with '-'.

\(fn)" t nil)

;;;***

;;;### (autoloads (open-rakefile open-routes open-schema open-gemfile
;;;;;;  open-file-in-current-project) "fdx/commands/ruby-commands"
;;;;;;  "fdx/commands/ruby-commands.el" (21273 61901))
;;; Generated autoloads from fdx/commands/ruby-commands.el

(autoload 'open-file-in-current-project "fdx/commands/ruby-commands" "\
Opens some file using the current project as it base.

\(fn F)" nil nil)

(autoload 'open-gemfile "fdx/commands/ruby-commands" "\
Open the current project Gemfile.

\(fn)" t nil)

(autoload 'open-schema "fdx/commands/ruby-commands" "\
Open the current project dtbase schema.

\(fn)" t nil)

(autoload 'open-routes "fdx/commands/ruby-commands" "\
Open the current project routes.rb.

\(fn)" t nil)

(autoload 'open-rakefile "fdx/commands/ruby-commands" "\
Open the current project Rakefile.

\(fn)" t nil)

;;;***

;;;### (autoloads (rrfx rrf-word-string rrf-end-of-word rrf-beginning-of-word
;;;;;;  rrf-first-column-p rrf-adj-endl rrf-adj-end rrf-adj-beg rrf-insert-named-expression
;;;;;;  rrf-replace-region rrf-insert-extracted-method rrf-inline-variable-definition
;;;;;;  rrf-insert-extraction rrf-jump-to-extraction-point rrf-extract-method
;;;;;;  rrf-extract-constant rrf-extract-temporary) "fdx/commands/ruby-refactoring"
;;;;;;  "fdx/commands/ruby-refactoring.el" (21273 61901))
;;; Generated autoloads from fdx/commands/ruby-refactoring.el

(autoload 'rrf-extract-temporary "fdx/commands/ruby-refactoring" "\
Extract an expression into a temporary variable.

\(fn VAR-NAME BEG END)" t nil)

(autoload 'rrf-extract-constant "fdx/commands/ruby-refactoring" "\
Extract an expression into a constant.

\(fn CONST-NAME BEG END)" t nil)

(autoload 'rrf-extract-method "fdx/commands/ruby-refactoring" "\
Extract a method.

\(fn METHOD-NAME ARGS BEG END)" t nil)

(autoload 'rrf-jump-to-extraction-point "fdx/commands/ruby-refactoring" "\


\(fn)" t nil)

(autoload 'rrf-insert-extraction "fdx/commands/ruby-refactoring" "\
Insert the last thing that was extracted.

\(fn)" t nil)

(autoload 'rrf-inline-variable-definition "fdx/commands/ruby-refactoring" "\
Inline the variable being defined by the expression in the region.

\(fn BEG END)" t nil)

(autoload 'rrf-insert-extracted-method "fdx/commands/ruby-refactoring" "\
Insert the definition for a previously extracted method.

\(fn)" nil nil)

(autoload 'rrf-replace-region "fdx/commands/ruby-refactoring" "\
Replace the region with REPLACEMENT

\(fn BEG END REPLACEMENT)" nil nil)

(autoload 'rrf-insert-named-expression "fdx/commands/ruby-refactoring" "\
Insert NAME = EXPRESSION.

\(fn NAME EXPRESSION)" nil nil)

(autoload 'rrf-adj-beg "fdx/commands/ruby-refactoring" "\
Get the adjusted beginning of the region.

\(fn BEG END)" nil nil)

(autoload 'rrf-adj-end "fdx/commands/ruby-refactoring" "\
Get the adjusted ending of the region.

\(fn BEG END)" nil nil)

(autoload 'rrf-adj-endl "fdx/commands/ruby-refactoring" "\
Get the adjusted ending of the region, forced to the end of line.

\(fn BEG END)" nil nil)

(autoload 'rrf-first-column-p "fdx/commands/ruby-refactoring" "\
Is LOC in the first column?

\(fn LOC)" nil nil)

(autoload 'rrf-beginning-of-word "fdx/commands/ruby-refactoring" "\
Find the beginning of the word at point.

\(fn)" nil nil)

(autoload 'rrf-end-of-word "fdx/commands/ruby-refactoring" "\
Find the beginning of the word at point.

\(fn)" nil nil)

(autoload 'rrf-word-string "fdx/commands/ruby-refactoring" "\
Return the identifier (as a string) on point.

\(fn)" nil nil)

(autoload 'rrfx "fdx/commands/ruby-refactoring" "\
Insert the beg/end of the adjusted region (for debugging).

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (fdx/refactoring/extract-method fdx/refactoring/extract-let)
;;;;;;  "fdx/commands/ruby-refactorings" "fdx/commands/ruby-refactorings.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/commands/ruby-refactorings.el

(autoload 'fdx/refactoring/extract-let "fdx/commands/ruby-refactorings" "\
Extract a let from an assignment

\(fn)" t nil)

(autoload 'fdx/refactoring/extract-method "fdx/commands/ruby-refactorings" "\
Extract the selected text as a method

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (fdx/underscore fdx/toggle-string-type) "fdx/commands/strings"
;;;;;;  "fdx/commands/strings.el" (21273 61901))
;;; Generated autoloads from fdx/commands/strings.el

(autoload 'fdx/toggle-string-type "fdx/commands/strings" "\
Toggle between double, single, and choose-your-own-quotes string types.

\(fn)" t nil)

(autoload 'fdx/underscore "fdx/commands/strings" "\
Forces a string into underscore.

\(fn REGION-START REGION-END)" t nil)

;;;***

;;;### (autoloads (erb-to-haml) "fdx/commands/toggle-haml-erb" "fdx/commands/toggle-haml-erb.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/commands/toggle-haml-erb.el

(autoload 'erb-to-haml "fdx/commands/toggle-haml-erb" "\
run html2haml on current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads (toggle-window-split) "fdx/commands/toggle-window-split"
;;;;;;  "fdx/commands/toggle-window-split.el" (21273 61901))
;;; Generated autoloads from fdx/commands/toggle-window-split.el

(autoload 'toggle-window-split "fdx/commands/toggle-window-split" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (fdx/find-in-path fdx/find-subpath-in-path fdx/read-file-to-string)
;;;;;;  "fdx/functions/files" "fdx/functions/files.el" (21273 61901))
;;; Generated autoloads from fdx/functions/files.el

(autoload 'fdx/read-file-to-string "fdx/functions/files" "\
Reads the contents of path into a string.

\(fn PATH)" nil nil)

(autoload 'fdx/find-subpath-in-path "fdx/functions/files" "\
Walks up the passed path hunting for subpath at each level.

\(fn SUBPATH PATH)" nil nil)

(autoload 'fdx/find-in-path "fdx/functions/files" "\
Walks up the current path hunting for subpath at each level.

\(fn SUBPATH)" nil nil)

;;;***

;;;### (autoloads (fdx/indent-this-and-previous) "fdx/functions/indent-this-and-previous"
;;;;;;  "fdx/functions/indent-this-and-previous.el" (21273 61901))
;;; Generated autoloads from fdx/functions/indent-this-and-previous.el

(autoload 'fdx/indent-this-and-previous "fdx/functions/indent-this-and-previous" "\
Indent the current line, then create a new line and indent it too.

\(fn)" t nil)

;;;***

;;;### (autoloads (fdx/flatten) "fdx/functions/lists" "fdx/functions/lists.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from fdx/functions/lists.el

(autoload 'fdx/flatten "fdx/functions/lists" "\
Flatten a list.

\(fn X)" nil nil)

;;;***

;;;### (autoloads (fdx/regex-replace-all fdx/regex-replace) "fdx/functions/regexen"
;;;;;;  "fdx/functions/regexen.el" (21273 61901))
;;; Generated autoloads from fdx/functions/regexen.el

(autoload 'fdx/regex-replace "fdx/functions/regexen" "\
Replace a regular expression in the passed string, if it occurs.

\(fn STR REGEX REPLACEMENT &optional FIXEDCASE LITERAL)" nil nil)

(autoload 'fdx/regex-replace-all "fdx/functions/regexen" "\
Replace a regular expression everywhere it occurs in the passed string.

\(fn STR REGEX REPLACEMENT &optional FIXEDCASE LITERAL)" nil nil)

;;;***

;;;### (autoloads (fdx/reindent-buffer) "fdx/functions/reindent-buffer"
;;;;;;  "fdx/functions/reindent-buffer.el" (21273 61901))
;;; Generated autoloads from fdx/functions/reindent-buffer.el

(autoload 'fdx/reindent-buffer "fdx/functions/reindent-buffer" "\
Indent the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("fdx/functions/strings.el") (21273 61925
;;;;;;  707485))

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
