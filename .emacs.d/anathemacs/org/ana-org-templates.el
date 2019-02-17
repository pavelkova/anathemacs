;;; ana-templates.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package org-chef)

;; Capture templates
(setq org-capture-templates
      '(("t" "TAREA" entry
         (file+headline "~/Media/documentos/org/tareas.org"
                        "0.0 everything that rises must converge")
         "** TODO %?\n  %i\n  %a")
        ("e" "EVENTO" entry
         (file user-gcal-file)
         "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")
        ;; ("d" "DIARIO" entry
        ;;  (file+olp+datetree user-journal-dir)
        ;;  "* %?\nEntered on %U\n  %i\n  %a")
        ("b" "MARCADOR" entry
         (file "notas.org")
         "* %?\n%a")
        ("c" "Cookbook" entry (file "~/org/cookbook.org")
         "%(org-chef-get-recipe-from-url)"
         :empty-lines 1)
        ("m" "Manual Cookbook" entry (file "~/org/cookbook.org")
         "* %^{Recipe title: }\n  :PROPERTIES:\n  :source-url:\n  :servings:\n  :prep-time:\n  :cook-time:\n  :ready-in:\n  :END:\n** Ingredients\n   %?\n** Directions\n\n"))

;; (use-package org-journal
;;   :config
;;   (setq org-journal-dir user-journal-dir
;;         org-journal-enable-agenda-integration t
;;         org-extend-today-until "7:00"
;;         org-journal-date-format "%d %B %Y [%A]"
;;         org-journal-file-format "%Y-%m-%d.org"))

;; special icons
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


(provide 'ana-templates)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-templates.el ends here
