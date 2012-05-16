
; Some odds and ends that don't fit anywhere else

(defadvice zap-to-char (after my-zap-to-char-advice (arg char) activate)
  "Kill up to the ARG'th occurence of CHAR, and leave CHAR.
  The CHAR is replaced and the point is put before CHAR."
  (insert char)
  (forward-char -1))

(defun unfill-paragraph ()
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(require 'ido)
(ido-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(blink-cursor-mode nil)
(setq ispell-program-name "aspell")
(setq ispell-extra-args '("--sug-mode=ultra"))
