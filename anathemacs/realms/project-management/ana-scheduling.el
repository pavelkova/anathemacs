;;; ana-scheduling.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; time tracking
(use-package activity-watch-mode
  :diminish activity-watch-mode
  :init
  (global-activity-watch-mode t)
  :general
  (hs-leader-def
    "pa" 'global-activity-watch-mode))

;; agenda
  ;; AGENDA
  (hs-leader-def
    "A" 'org-agenda)
  (setq ;; org-agenda-files user-org-agenda-files  ;; manage manually
        org-agenda-entry-types '(:deadline :scheduled :sexp :timestamp)
        org-agenda-include-diary t
        org-agenda-include-inactive-timestamps t
        org-agenda-skip-additional-timestamps-same-entry t
        org-agenda-text-search-extra-files (directory-files-recursively org-directory "org")
        org-agenda-window-setup 'current-window)
  ;; AGENDA VIEWS
  (setq org-agenda-custom-commands
        '(("a" "agenda"
             ((agenda "")))
            ("t" "tareas"
             ((todo "tareas"
                    ((org-agenda-overriding-header "tareas")
                     (org-agenda-sorting-strategy '(priority-down))))))
            ("n" "próximo" agenda ""
             ((org-agenda-time-grid nil)
              (org-deadline-warning-days 30)
              (org-agenda-overriding-header "próximo")))
            ("p"  "proyectos")
            ("pb" "personalbrand" tags-todo "personalbrand")
            ("pd" "dgar" tags-todo "dgar")
            ("pp" "playsette" tags-todo "playsette")))

;; calendar
(use-package calfw
  :demand t
  :general
  (hs-leader-def
    "co" 'cfw:open-org-calendar)
  :config
  (setq cfw:fchar-junction ?┼
        cfw:fchar-vertical-line ?│
        cfw:fchar-horizontal-line ?─
        cfw:fchar-left-junction ?├
        cfw:fchar-right-junction ?┤
        cfw:fchar-top-junction ?┬
        cfw:fchar-top-left-corner ?┌
        cfw:fchar-top-right-corner ?┐
        cfw:render-line-breaker 'cfw:render-line-breaker-none
        cfw:face-item-separator-color nil
        calendar-week-start-day 1))

(use-package org-caldav
  :demand t
  :init
  (load-file user-caldav-file)
  :general
  (hs-leader-def
    "cs" 'org-caldav-sync)
  :config
  (setq org-caldav-delete-calendar-entries t
        org-icalendar-timezone "North_America/New_York"
        org-caldav-files '("~/Media/documentos/org/calendario.org")))

(use-package calfw-org
  :after calfw
  :demand t)

;; (use-package org-context
;;   :after org-agenda
;;   :init
;;   (org-context-activate))

(use-package org-pomodoro
  :general
  (hs-leader-def
    "pP" 'org-pomodoro))

;; use to refile
(defun org-refile-to-datetree (&optional file)
  "Refile a subtree to a datetree corresponding to its timestamp in FILE."
  (interactive "f")
  (let* ((datetree-date (or (org-entry-get nil "TIMESTAMP" t)
                            (org-read-date t nil "now")))
         (date (org-date-to-gregorian datetree-date))
         )
    (save-excursion
      (with-current-buffer (current-buffer)
        (org-cut-subtree)
        (if file (find-file file))
        (org-datetree-find-date-create date)
        (org-narrow-to-subtree)
        (show-subtree)
        (org-end-of-subtree t)
        (newline)
        (goto-char (point-max))
        (org-paste-subtree 4)
        (widen)
        ))
    )
  )

(hs-leader-def
  "fd" 'org-refile-to-datetree)

(provide 'ana-scheduling)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-scheduling.el ends here
