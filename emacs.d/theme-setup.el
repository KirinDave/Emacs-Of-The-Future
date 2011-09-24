(add-to-list 'load-path "~/.emacs.d/manual/color-theme")
(add-to-list 'load-path (concat *EMROOT* "/lib/emacs/solarized"))
(require 'color-theme)
(require 'color-theme-solarized)

(eval-after-load 'color-theme
  (progn (color-theme-initialize)))
         ; This is my old theme.
         ;(color-theme-charcoal-black)
         ;(set-face-background 'region "#555555")))))


(setq my-color-themes (list 'color-theme-solarized-dark 'color-theme-solarized-light))

(defun my-theme-set-default () ; Set the first row
  (interactive)
  (setq theme-current my-color-themes)
  (funcall (car theme-current)))

(defun my-describe-theme () ; Show the current theme
  (interactive)
  (message "%s" (car theme-current)))

; Set the next theme (ty Chris Webber)
(defun my-theme-cycle ()
  (interactive)
  (setq theme-current (cdr theme-current))
  (if (null theme-current)
      (setq theme-current my-color-themes))
  (funcall (car theme-current))
  (message "%S" (car theme-current)))

(setq theme-current my-color-themes)
(setq color-theme-is-global t) ; Initialization
(my-theme-set-default)
(define-key global-map "\C-xT" 'my-theme-cycle)
