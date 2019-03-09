;;; ana-planning.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(with-eval-after-load 'org
  ;; TODO
  (setq org-todo-keywords
        '((sequence "□" "◪" "▶" "|" "■" "☒")
          ;; todo, partially done, postponed | completed, cancelled
          ;; (sequence "⛥" "▲" "❗" "✓" "▪" "❓" "⛅" "🗲" "♥""＄" "|")
          ;; event, appointment, important, accomplishment, note, research, fantasy, idea, inspiration, finance
          org-hierarchical-todo-statistics t))
  
  ;; AGENDA
  (setq org-refile-allow-creating-parent-nodes t
        org-outline-path-complete-in-steps nil
        org-refile-targets '((nil :maxlevel . 1)
                             (org-agenda-files :maxlevel . 1))
        org-archive-location user-archive-file
        org-agenda-window-setup 'current-window
        org-agenda-files (list user-org-dir)
        org-agenda-include-diary t
        org-agenda-custom-commands
        '(("a" "agenda"
             ((agenda "")))
            ("t" "tareas"
             ((todo "tareas"
                    ((org-agenda-overriding-header "tareas")
                     (org-agenda-sorting-strategy '(priority-down))))))
            ("n" "próximo" agenda ""
             (;; (org-agenda-entry-types '(:deadline :scheduled))
              (org-deadline-warning-days 30)
              (org-agenda-time-grid nil)
              (org-agenda-overriding-header "próximo"))))))
(hs-leader-def
  "A" 'org-agenda)

(use-package org-index
  :config
  (hs-leader-def
    "I" 'org-index))

(provide 'ana-planning)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
