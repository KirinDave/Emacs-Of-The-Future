;;; Dave Fayram's Emacs setup.
;;; ~/.emacs -> (load "~/.emacs.d/main.el)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.

(defvar *EMROOT* "/Users/kirindave")
(defun dirf (str) (concat *EMROOT* "/" str))

(defun edit-my-preferences ()
  "Edits my local preferences."
  (interactive)
  (find-file (expand-file-name "~/.emacs.d/main.el")))
(global-set-key "\C-xP" 'edit-my-preferences)

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (require 'package)
  (package-initialize))

(add-to-list 'load-path "~/.emacs.d/manual")
(setq-default indent-tabs-mode nil)

(defconst my-setup-files
  '(basic theme whitespace erlang org c markdown scala haskell clojure))

(defun run-setup (setup-sym)
  "Loads a file in .emacs.d named \"symbol-setup.el\"."
  (let* ((sstr  (symbol-name setup-sym))
         (fname (concat sstr "-setup.el")))
    (message (concat "Loading setup for " sstr))
    (load (expand-file-name fname "~/.emacs.d/"))))

(dolist (s my-setup-files)
  (run-setup s))
