(require 'paredit)

(defun add-pared-minor-mode () (paredit-mode +1))
(add-to-list 'load-path "/Users/kirindave/lib/emacs/clojure-mode/")
(load "/Users/kirindave/lib/emacs/clojure-mode/clojure-mode.el")

(add-hook 'scheme-mode-hook     'add-pared-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'add-pared-minor-mode)
(add-hook 'clojure-mode-hook    'add-pared-minor-mode)

(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode)
                              '("\\.clj$" . slime-mode))
(add-hook 'slime-connected-hook 'slime-redirect-inferior-output)
