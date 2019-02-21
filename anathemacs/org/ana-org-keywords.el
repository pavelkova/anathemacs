;;; ana-org-keywords.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(require 'org-element)

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

(defun bullets-to-icons ()
  "2019-02-18"
  (interactive)
  (let ((tt (org-element-parse-buffer 'item
        (lambda (item) (eq (org-element-property :bullet item) "⋅"))
        )))
    (with-output-to-temp-buffer "*xah temp out*"
      (print tt))))

(defun check-bullets ()
  (interactive)
  (org-element-map (org-element-parse-buffer) 'item
  (lambda (item) (eq (org-element-property :bullet item) "⋅")))
  )

(provide 'ana-org-keywords)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-keywords.el ends here
