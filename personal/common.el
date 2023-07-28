;;; common

;; --------------------------------------------------
;; Windows 版
;;
;; 1. ユーザ環境変数に `HOME` を追加する
;;
;; 変数名: HOME
;; 変数値: %USERPROFILE%
;;
;; 2. シンボリックリンクを作成する
;;
;; 管理者としてコマンドプロンプトを開く
;;
;; cd %USERPROFILE%
;; mklink /D .emacs.d "C:/reps/prelude"
;; --------------------------------------------------

(set-language-environment "Japanese")

(prefer-coding-system 'utf-8)

;;リージョンに上書き
(delete-selection-mode t)

;;検索中に検索文字を削除
(define-key isearch-mode-map (kbd "C-h") 'isearch-del-char)

;; 英語フォントを指定する
(set-face-attribute 'default nil :family "Consolas" :height 120)

;; 日本語フォントを指定する
(set-fontset-font nil 'japanese-jisx0208
                  (font-spec :family "PlemolJP Console NFJ"))

;; view-help-file が無茶苦茶時間がかかるので間違ってキックしないように、、
(global-set-key (kbd "C-h h") nil)
