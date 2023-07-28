(when window-system
  ;; カーソル
  (add-to-list 'default-frame-alist '(cursor-type . bar))
  ;; ウィンドウ最大化
  (toggle-frame-maximized)
  ;; hide menu/tool bar
  (menu-bar-mode 0)
  (tool-bar-mode 0)
)
