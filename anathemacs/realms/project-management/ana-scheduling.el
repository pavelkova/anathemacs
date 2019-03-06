;;; ana-scheduling.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; time tracking
(use-package activity-watch-mode
  :defer t
  ;; :config (setq activity-watch-api-host "")
  )

;; calendar
(use-package calfw
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
        calendar-week-start-day 1)
  (hs-leader-def
    "C" 'cfw:open-org-calendar)
 )

;;(use-package org-caldav)

(use-package calfw-org
  :after calfw
  :config
  (load-file user-caldav-file)
  (setq org-caldav-inbox user-cal-file
        org-icalendar-timezone "North_America/New_York)"))

(use-package org-context
  :after org-agenda
  :init
  (org-context-activate))

(use-package org-pomodoro)

(provide 'ana-scheduling)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-scheduling.el ends here
