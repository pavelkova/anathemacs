;;; ana-timing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; time tracking
(use-package activity-watch-mode
  :delight
  :load-path "anathemacs/lib/activity-watch-mode"
 :general
  (hs-leader-def
    "C-a" 'global-activity-watch-mode)
 :config
  (global-activity-watch-mode t))

;; org clock and logs
(with-eval-after-load 'org
  (setq org-clock-idle-time 10
        org-clock-display-default-range 'untilnow
        org-clock-in-switch-to-state "INPROGRESS"
        ;; org-extend-today-until 7
        org-clock-persist t))

;; agenda
;; AGENDA
(hs-leader-def
  "a" 'org-agenda)
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
         ((agenda ""
                  ((org-agenda-span 28)
                   (org-agenda-start-day "0d")
                   (org-agenda-entry-types '(:deadline :scheduled :sexp :timestamp))
                   (org-agenda-include-diary t)
                   (org-agenda-include-inactive-timestamps t)
                   ))
          (alltodo "")))
        ("t" "tareas"
         ((todo "tareas"
                ((org-agenda-overriding-header "tareas")
                 (org-agenda-sorting-strategy '(priority-down))))))
        ("n" "próximo" agenda ""
         ((org-agenda-time-grid nil)
          (org-deadline-warning-days 30)
          (org-agenda-overriding-header "próximo")))))

(use-package org-super-agenda
  :hook org-agenda)

;; calendar
(use-package calfw
  :general
  (hs-leader-def
    "Co" 'cfw:open-org-calendar)
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
 :general
 (hs-leader-def
   "Cs" 'org-caldav-sync)
 :config
 (load-file user-caldav-file)
 ;; (setq org-caldav-files '(user-cal-file)
 ;;       org-caldav-inbox user-cal-inbox-file)
 (setq org-caldav-files nil
       org-caldav-delete-calendar-entries t
       org-icalendar-timezone "North_America/New_York"))

(use-package calfw-org
  :after calfw)

(use-package org-pomodoro
  :general
  (hs-leader-def
    "p" 'org-pomodoro)
  :config
  (setq org-pomodoro-length 25
        org-pomodoro-short-break-length 5
        org-pomodoro-long-break-length 20
        org-pomodoro-manual-break t
        org-pomodoro-keep-killed-pomodoro-time t))

(use-package org-edna
  :config
  (org-edna--load))

;; use to refile
(defun org-refile-to-datetree (&optional file)
  "Refile a subtree to a datetree corresponding to its timestamp in FILE."
  (interactive "f")
  (let* ((datetree-date (or (org-entry-get nil "TIMESTAMP" t)
                            (org-read-date t nil "now")))
         (date (org-date-to-gregorian datetree-date)))
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
        (widen) ))))

(hs-leader-def
  "fd" 'org-refile-to-datetree)

;; ORG-HABIT
(setq org-habit-graph-column 75)

(setq org-time-budgets '((:title "vida" :tags "+vida" :budget "30:00" :block workweek)
                         (:title "creatividad" :tags "+escritorio" :budget "14:00" :block week)
                         (:title "trabajo" :tags "+code" :budget "2:55" :block week)
                         (:title "ejercicio" :tags "+ejercicio+yoga" :budget "5:15" :block week)
                         (:title "aprendizaje" :tags "+aprendizaje" :budget "5:15" :block week)))

(provide 'ana-timing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-timing.el ends here
