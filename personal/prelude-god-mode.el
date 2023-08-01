;;; prelude-god-mode

(prelude-require-packages '(god-mode lin))

(setq god-mode-enable-function-key-translation nil)
(require 'god-mode)

(setq lin-face 'lin-blue)
(require 'lin)

(defun enable-god-mode ()
  (interactive)
  (god-local-mode 1))

(defun my/god-mode-hook ()
  (interactive)
  (lin-mode (if god-local-mode 1 0)))

(global-set-key (kbd "M-ESC") #'enable-god-mode)
(define-key god-local-mode-map (kbd "h") (kbd "<DEL>"))
(define-key god-local-mode-map (kbd "i") #'god-local-mode)
(define-key god-local-mode-map (kbd ".") #'repeat)
(add-hook 'post-command-hook #'my/god-mode-hook)

(setq-default mode-line-format
              (add-to-list 'mode-line-format '(:eval (if god-local-mode "🚀" "⬛"))))
