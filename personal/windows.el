(when window-system
  ;; カーソル
  (add-to-list 'default-frame-alist '(cursor-type . bar))

  ;; ウィンドウ最大化
  (toggle-frame-maximized)

  ;; hide menu/tool bar
  (menu-bar-mode 0)
  (tool-bar-mode 0)

  ;; 英語フォントを指定する
  (set-face-attribute 'default nil :family "Consolas" :height 120)

  ;; 日本語フォントを指定する
  (set-fontset-font nil 'japanese-jisx0208
                    (font-spec :family "PlemolJP Console NFJ"))
)
