;;; ana-bullet-journal.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;; Add special icons to mirror the notation system in my physical bullet journal.
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(setq org-todo-keywords '((sequence "□" "◪" "▶" "|" "■" "☒")))
    ;; todo, partially done, postponed | completed, cancelled

; special icons
(defface keyword-icons-face
  '((t (:inherit none :background nil :foreground "#d07c67" :family "ETBembo" :height 1.5)))
  "face for bullet journal style icons"
  )

(defvar org-mode-keywords
  '(("⛥" . 'keyword-icons-face)
    ("▲" . 'keyword-icons-face)
    ("❗" . 'keyword-icons-face)
    ("✓" . 'keyword-icons-face)
    ("▪" . 'keyword-icons-face)
    ("❓" . 'keyword-icons-face)
    ("⛅" . 'keyword-icons-face)
    ("🗲" . 'keyword-icons-face)
    ("♥" . 'keyword-icons-face)
    ("＄" . 'keyword-icons-face)
    ))
(font-lock-add-keywords 'org-mode org-mode-keywords)

(provide 'ana-bullet-journal)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-bullet-journal.el ends here
