;;; ana-planning.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package org-brain
  :init
  (setq org-brain-path 'user-org-brain-dir)
  (hx-leader-def
    "oB" 'org-brain-visualize)
  :config
  (setq org-id-track-globally t)
  (setq org-id-locations-file (concat user-dir ".org-id-locations"))
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 12))

(use-package org-projectile
  :config
  (org-projectile-per-project)
  (hx-leader-def
    "pp" 'counsel-projectile-switch-project)
  (setq org-projectile-per-project-filepath "TODO.org"
        org-agenda-files (append org-agenda-files (org-projectile-todo-files))))

;;   (use-package toc-org :hook org-mode)

(with-eval-after-load 'org
  (setq org-refile-allow-creating-parent-nodes t
        org-outline-path-complete-in-steps nil
        org-refile-targets '((nil :maxlevel . 1)
                             (org-agenda-files :maxlevel . 1))
        org-archive-location user-archive-file
        org-agenda-window-setup 'current-window
        org-agenda-files '()
        org-agenda-include-diary t
        org-agenda-custom-commands
        '(("n" "agenda"
             ((agenda "")))
            ("t" "tareas"
             ((todo "tareas"
                    ((org-agenda-overriding-header "tareas")
                     (org-agenda-sorting-strategy '(priority-down))))))
            ("u" "próximo" agenda ""
             ((org-agenda-entry-types '(:deadline))
              (org-deadline-warning-days 30)
              (org-agenda-time-grid nil)
              (org-agenda-overriding-header "próximo"))))))

(provide 'ana-planning)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
