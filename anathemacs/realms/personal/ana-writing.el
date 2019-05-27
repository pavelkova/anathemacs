;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package org-journal
  :general
  (hs-leader-def
    "wj" 'org-journal-new-entry)
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-find-file 'find-file
        org-journal-file-type 'yearly
        org-journal-enable-agenda-integration t
        org-journal-date-format "%Y-%B-%d"
        org-journal-time-format "%H:%M"
        org-journal-file-format "%Y.org"))

(global-unset-key (kbd "C-c C-j"))

(use-package wc-mode
  :delight wc-mode
  :mode ("\\[0-9]+.org\\'"
         "\\.blank-page.org\\'")
  :general
  (hs-leader-def
    "wc" 'wc-mode
    "wC" 'wc-set-word-goal)
  :config
  (setq wc-modeline-format "written %tw of %gw words"
        wc-word-goal 750))

(use-package writegood-mode
  :general
  (hs-leader-def
    "wg" 'writegood-grade-level
    "we" 'writegood-reading-ease))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


