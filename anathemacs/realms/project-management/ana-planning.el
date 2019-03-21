;;; ana-planning.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; TODO keywords
(with-eval-after-load 'org
  ;; TODO
  (setq org-todo-keywords
        '((sequence "□" "◪" "▶" "|" "■" "☒")
          ;; todo, partially done, postponed | completed, cancelled
          (sequence "|" "❗" "⛥" "" "✓" "▪" "❓" "⛅" "🗲" "♥" "＄")
          ;; event, appointment, important, accomplishment, note, research, fantasy, idea, inspiration, finance
          )
        org-hierarchical-todo-statistics nil)
  
  ;; AGENDA
  (hs-leader-def
    "A" 'org-agenda)
  
  (setq org-refile-allow-creating-parent-nodes t
        org-outline-path-complete-in-steps nil
        org-refile-targets '((nil :maxlevel . 5)
                             (org-agenda-files :maxlevel . 1))
        org-archive-location user-archive-file
        org-agenda-window-setup 'current-window
        org-agenda-files (list user-org-dir)
        org-agenda-include-diary t
        org-agenda-include-inactive-timestamps t
        org-agenda-custom-commands
        '(("a" "agenda"
             ((agenda "")))
            ("t" "tareas"
             ((todo "tareas"
                    ((org-agenda-overriding-header "tareas")
                     (org-agenda-sorting-strategy '(priority-down))))))
            ("n" "próximo" agenda ""
             ((org-agenda-entry-types '(:deadline :scheduled :timestamp))
              (org-deadline-warning-days 30)
              (org-agenda-time-grid nil)
              (org-agenda-overriding-header "próximo"))))))

;; BRAIN - mindmapping with org trees
(use-package org-brain
  :general
  (hs-leader-def
    "BA"  'org-brain-agenda
    "B.c" 'org-brain-add-child-headline
    "B.f" 'org-brain-add-friendship
    "B.p" 'org-brain-add-parent
    "B,c" 'org-brain-remove-child
    "B,f" 'org-brain-remove-friendship
    "B,p" 'org-brain-remove-parent
    "Bg"  'org-brain-goto
    "B/c" 'org-brain-goto-child
    "B/f" 'org-brain-goto-friendship
    "B/p" 'org-brain-goto-parent
    "B/e" 'org-brain-goto-end
    "B/o" 'org-brain-goto-current
    "B/w" 'org-brain-goto-other-window
    "Bp"  'org-brain-pin
    "Br"  'org-brain-refile
    "Bv"  'org-brain-visualize)
  :config
  (setq org-brain-path user-brain-dir
        org-id-track-globally t
        org-id-locations-file (concat user-dir ".org-id-locations")
        org-brain-visualize-default-choices 'all
        org-brain-title-max-length 12))

;; ADD ID PROPERTY TO ALL ORG HEADINGS
(defun org-add-ids-to-headlines ()
  (interactive)
  (org-map-entries 'org-id-get-create))

;; (add-hook 'org-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'org-add-ids-to-headlines nil 'local)))

(provide 'ana-planning)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
