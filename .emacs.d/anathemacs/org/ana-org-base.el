;;; ana-org-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package calfw
  :config
  (setq cfw:fchar-junction ?┼
        cfw:fchar-vertical-line ?│
        cfw:fchar-horizontal-line ?─
        cfw:fchar-left-junction ?├
        cfw:fchar-right-junction ?┤
        cfw:fchar-top-junction ?┬
        cfw:fchar-top-left-corner ?┌
        cfw:fchar-top-right-corner ?┐)
  (setq cfw:render-line-breaker 'cfw:render-line-breaker-none)
  (setq cfw:face-item-separator-color nil)
  )

(use-package calfw-org
  :after calfw
  :config
  (load-file (concat user-secrets-dir "caldav.el"))
  (setq org-caldav-inbox (concat user-org-dir "calendario.org")
        org-icalendar-timezone "North_America/New_York)"))

(use-package company)

(use-package company-emoji)

(use-package emoji-cheat-sheet-plus)

(use-package gnuplot
  :defer t
  :config
  (hx-leader-def
   :keymaps 'org-mode
   "tp" 'org-plot/gnuploot))

(use-package htmlize
  :defer t)

(use-package org)

(use-package org-download)

(use-package org-journal
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-enable-agenda-integration t
        org-extend-today-until "7:00"
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y-%m-%d.org"))

(use-package org-mime)

(use-package org-noter
  :after org
  :config
  (org-noter-set-auto-save-last-location t)
  )

(use-package org-pomodoro)

(use-package org-present)

(use-package org-projectile)

(use-package ox-twbs)

;; (use-package ox-gfm :location recipe :fetcher github :repo "syl20bnr/ox-gfm")



;; load
(with-eval-after-load 'org
  (setq org-startup-indented t
        org-clock-idle-time 5
        org-bullets-bullet-list '("⋅")
        org-ellipsis "..."
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline t
        org-fontify-quote-and-verse-blocks t
        spaceline-org-clock-p t
        abbrev-file-name "~/.emacs.d/private/gigi/abbrev_defs")

  (customize-set-variable 'org-modules
                          '(org-bookmark
                            org-checklist
                            org-choose
                            org-collector
                            org-docview
                            org-habit
                            org-info
                            org-inlinetask
                            org-toc)))

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

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-baseel ends here
