;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (delete-current-buffer-file rename-current-buffer-file)
;;;;;;  "cmaxw/commands/buffer-files" "cmaxw/commands/buffer-files.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/commands/buffer-files.el

(autoload 'rename-current-buffer-file "cmaxw/commands/buffer-files" "\
Renames current buffer and file it is visiting.

\(fn)" t nil)

(autoload 'delete-current-buffer-file "cmaxw/commands/buffer-files" "\
Removes file connected to current buffer and kills buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (duplicate-line) "cmaxw/commands/duplicate-line"
;;;;;;  "cmaxw/commands/duplicate-line.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/duplicate-line.el

(autoload 'duplicate-line "cmaxw/commands/duplicate-line" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (jw-set-width jw-suggest-width send-shell-command
;;;;;;  jw-shell jw-choose-shell) "cmaxw/commands/jw-shell" "cmaxw/commands/jw-shell.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/commands/jw-shell.el

(autoload 'jw-choose-shell "cmaxw/commands/jw-shell" "\


\(fn N)" nil nil)

(autoload 'jw-shell "cmaxw/commands/jw-shell" "\


\(fn N)" t nil)

(autoload 'send-shell-command "cmaxw/commands/jw-shell" "\
Send commands to a shell process

\(fn STR)" nil nil)

(autoload 'jw-suggest-width "cmaxw/commands/jw-shell" "\


\(fn)" t nil)

(autoload 'jw-set-width "cmaxw/commands/jw-shell" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (move-line-up move-line-down) "cmaxw/commands/move-lines"
;;;;;;  "cmaxw/commands/move-lines.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/move-lines.el

(autoload 'move-line-down "cmaxw/commands/move-lines" "\


\(fn)" t nil)

(autoload 'move-line-up "cmaxw/commands/move-lines" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (current-dir-as-current-project print-current-project
;;;;;;  open-project) "cmaxw/commands/open-project" "cmaxw/commands/open-project.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/commands/open-project.el

(autoload 'open-project "cmaxw/commands/open-project" "\
Open a project.

\(fn PROJECT-FOLDER)" t nil)

(autoload 'print-current-project "cmaxw/commands/open-project" "\
Return the current project directory.

\(fn)" t nil)

(autoload 'current-dir-as-current-project "cmaxw/commands/open-project" "\
Set current dir as current project.

\(fn)" t nil)

;;;***

;;;### (autoloads (cmaxw/replace-plus-minus-on-diffs) "cmaxw/commands/replace-diffs"
;;;;;;  "cmaxw/commands/replace-diffs.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/replace-diffs.el

(autoload 'cmaxw/replace-plus-minus-on-diffs "cmaxw/commands/replace-diffs" "\
When copying from a diff buffer to another, this function eliminates the '+' at the beginning of lines and the lines that start with '-'.

\(fn)" t nil)

;;;***

;;;### (autoloads (open-rakefile open-routes open-schema open-gemfile
;;;;;;  open-file-in-current-project) "cmaxw/commands/ruby-commands"
;;;;;;  "cmaxw/commands/ruby-commands.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/ruby-commands.el

(autoload 'open-file-in-current-project "cmaxw/commands/ruby-commands" "\
Opens some file using the current project as it base.

\(fn F)" nil nil)

(autoload 'open-gemfile "cmaxw/commands/ruby-commands" "\
Open the current project Gemfile.

\(fn)" t nil)

(autoload 'open-schema "cmaxw/commands/ruby-commands" "\
Open the current project dtbase schema.

\(fn)" t nil)

(autoload 'open-routes "cmaxw/commands/ruby-commands" "\
Open the current project routes.rb.

\(fn)" t nil)

(autoload 'open-rakefile "cmaxw/commands/ruby-commands" "\
Open the current project Rakefile.

\(fn)" t nil)

;;;***

;;;### (autoloads (rrfx rrf-word-string rrf-end-of-word rrf-beginning-of-word
;;;;;;  rrf-first-column-p rrf-adj-endl rrf-adj-end rrf-adj-beg rrf-insert-named-expression
;;;;;;  rrf-replace-region rrf-insert-extracted-method rrf-inline-variable-definition
;;;;;;  rrf-insert-extraction rrf-jump-to-extraction-point rrf-extract-method
;;;;;;  rrf-extract-constant rrf-extract-temporary) "cmaxw/commands/ruby-refactoring"
;;;;;;  "cmaxw/commands/ruby-refactoring.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/ruby-refactoring.el

(autoload 'rrf-extract-temporary "cmaxw/commands/ruby-refactoring" "\
Extract an expression into a temporary variable.

\(fn VAR-NAME BEG END)" t nil)

(autoload 'rrf-extract-constant "cmaxw/commands/ruby-refactoring" "\
Extract an expression into a constant.

\(fn CONST-NAME BEG END)" t nil)

(autoload 'rrf-extract-method "cmaxw/commands/ruby-refactoring" "\
Extract a method.

\(fn METHOD-NAME ARGS BEG END)" t nil)

(autoload 'rrf-jump-to-extraction-point "cmaxw/commands/ruby-refactoring" "\


\(fn)" t nil)

(autoload 'rrf-insert-extraction "cmaxw/commands/ruby-refactoring" "\
Insert the last thing that was extracted.

\(fn)" t nil)

(autoload 'rrf-inline-variable-definition "cmaxw/commands/ruby-refactoring" "\
Inline the variable being defined by the expression in the region.

\(fn BEG END)" t nil)

(autoload 'rrf-insert-extracted-method "cmaxw/commands/ruby-refactoring" "\
Insert the definition for a previously extracted method.

\(fn)" nil nil)

(autoload 'rrf-replace-region "cmaxw/commands/ruby-refactoring" "\
Replace the region with REPLACEMENT

\(fn BEG END REPLACEMENT)" nil nil)

(autoload 'rrf-insert-named-expression "cmaxw/commands/ruby-refactoring" "\
Insert NAME = EXPRESSION.

\(fn NAME EXPRESSION)" nil nil)

(autoload 'rrf-adj-beg "cmaxw/commands/ruby-refactoring" "\
Get the adjusted beginning of the region.

\(fn BEG END)" nil nil)

(autoload 'rrf-adj-end "cmaxw/commands/ruby-refactoring" "\
Get the adjusted ending of the region.

\(fn BEG END)" nil nil)

(autoload 'rrf-adj-endl "cmaxw/commands/ruby-refactoring" "\
Get the adjusted ending of the region, forced to the end of line.

\(fn BEG END)" nil nil)

(autoload 'rrf-first-column-p "cmaxw/commands/ruby-refactoring" "\
Is LOC in the first column?

\(fn LOC)" nil nil)

(autoload 'rrf-beginning-of-word "cmaxw/commands/ruby-refactoring" "\
Find the beginning of the word at point.

\(fn)" nil nil)

(autoload 'rrf-end-of-word "cmaxw/commands/ruby-refactoring" "\
Find the beginning of the word at point.

\(fn)" nil nil)

(autoload 'rrf-word-string "cmaxw/commands/ruby-refactoring" "\
Return the identifier (as a string) on point.

\(fn)" nil nil)

(autoload 'rrfx "cmaxw/commands/ruby-refactoring" "\
Insert the beg/end of the adjusted region (for debugging).

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (cmaxw/refactoring/extract-method cmaxw/refactoring/extract-let)
;;;;;;  "cmaxw/commands/ruby-refactorings" "cmaxw/commands/ruby-refactorings.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/commands/ruby-refactorings.el

(autoload 'cmaxw/refactoring/extract-let "cmaxw/commands/ruby-refactorings" "\
Extract a let from an assignment

\(fn)" t nil)

(autoload 'cmaxw/refactoring/extract-method "cmaxw/commands/ruby-refactorings" "\
Extract the selected text as a method

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (cmaxw/underscore cmaxw/toggle-string-type) "cmaxw/commands/strings"
;;;;;;  "cmaxw/commands/strings.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/strings.el

(autoload 'cmaxw/toggle-string-type "cmaxw/commands/strings" "\
Toggle between double, single, and choose-your-own-quotes string types.

\(fn)" t nil)

(autoload 'cmaxw/underscore "cmaxw/commands/strings" "\
Forces a string into underscore.

\(fn REGION-START REGION-END)" t nil)

;;;***

;;;### (autoloads (erb-to-haml) "cmaxw/commands/toggle-haml-erb" "cmaxw/commands/toggle-haml-erb.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/commands/toggle-haml-erb.el

(autoload 'erb-to-haml "cmaxw/commands/toggle-haml-erb" "\
run html2haml on current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads (toggle-window-split) "cmaxw/commands/toggle-window-split"
;;;;;;  "cmaxw/commands/toggle-window-split.el" (21273 61901))
;;; Generated autoloads from cmaxw/commands/toggle-window-split.el

(autoload 'toggle-window-split "cmaxw/commands/toggle-window-split" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (cmaxw/find-in-path cmaxw/find-subpath-in-path cmaxw/read-file-to-string)
;;;;;;  "cmaxw/functions/files" "cmaxw/functions/files.el" (21273 61901))
;;; Generated autoloads from cmaxw/functions/files.el

(autoload 'cmaxw/read-file-to-string "cmaxw/functions/files" "\
Reads the contents of path into a string.

\(fn PATH)" nil nil)

(autoload 'cmaxw/find-subpath-in-path "cmaxw/functions/files" "\
Walks up the passed path hunting for subpath at each level.

\(fn SUBPATH PATH)" nil nil)

(autoload 'cmaxw/find-in-path "cmaxw/functions/files" "\
Walks up the current path hunting for subpath at each level.

\(fn SUBPATH)" nil nil)

;;;***

;;;### (autoloads (cmaxw/indent-this-and-previous) "cmaxw/functions/indent-this-and-previous"
;;;;;;  "cmaxw/functions/indent-this-and-previous.el" (21273 61901))
;;; Generated autoloads from cmaxw/functions/indent-this-and-previous.el

(autoload 'cmaxw/indent-this-and-previous "cmaxw/functions/indent-this-and-previous" "\
Indent the current line, then create a new line and indent it too.

\(fn)" t nil)

;;;***

;;;### (autoloads (cmaxw/flatten) "cmaxw/functions/lists" "cmaxw/functions/lists.el"
;;;;;;  (21273 61901))
;;; Generated autoloads from cmaxw/functions/lists.el

(autoload 'cmaxw/flatten "cmaxw/functions/lists" "\
Flatten a list.

\(fn X)" nil nil)

;;;***

;;;### (autoloads (cmaxw/regex-replace-all cmaxw/regex-replace) "cmaxw/functions/regexen"
;;;;;;  "cmaxw/functions/regexen.el" (21273 61901))
;;; Generated autoloads from cmaxw/functions/regexen.el

(autoload 'cmaxw/regex-replace "cmaxw/functions/regexen" "\
Replace a regular expression in the passed string, if it occurs.

\(fn STR REGEX REPLACEMENT &optional FIXEDCASE LITERAL)" nil nil)

(autoload 'cmaxw/regex-replace-all "cmaxw/functions/regexen" "\
Replace a regular expression everywhere it occurs in the passed string.

\(fn STR REGEX REPLACEMENT &optional FIXEDCASE LITERAL)" nil nil)

;;;***

;;;### (autoloads (cmaxw/reindent-buffer) "cmaxw/functions/reindent-buffer"
;;;;;;  "cmaxw/functions/reindent-buffer.el" (21273 61901))
;;; Generated autoloads from cmaxw/functions/reindent-buffer.el

(autoload 'cmaxw/reindent-buffer "cmaxw/functions/reindent-buffer" "\
Indent the current buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("cmaxw/functions/strings.el") (21273 61925
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
