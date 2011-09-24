
(add-to-list 'load-path (concat *EMROOT*  "/lib/emacs/scala-mode"))
(require 'scala-mode)

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))


(add-to-list 'load-path (concat *EMROOT*  "/lib/emacs/ensime/elisp"))
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))
