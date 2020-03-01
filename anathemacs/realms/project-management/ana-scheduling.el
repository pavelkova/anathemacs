;;; ana-scheduling.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; time tracking
(use-package activity-watch-mode
 :delight
 :general
  (hs-leader-def
    "ta" 'global-activity-watch-mode)
 :config
  (global-activity-watch-mode t))

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

      ;; calendar
(use-package calfw
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
 :general
 (hs-leader-def
   "cs" 'org-caldav-sync)
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
    "tp" 'org-pomodoro)
  :config
  (setq org-pomodoro-length 25
        org-pomodoro-short-break-length 5
        org-pomodoro-long-break-length 20
        org-pomodoro-manual-break t))

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


(provide 'ana-scheduling)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-scheduling.el ends here
