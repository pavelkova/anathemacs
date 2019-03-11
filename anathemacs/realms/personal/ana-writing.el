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
        org-journal-enable-agenda-integration t
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y-%m-%d.org")
  (global-unset-key (kbd "C-c C-j")))

(use-package wc-mode
  :general
  (hs-leader-def
    "wc" 'wc-mode
    "wC" 'wc-set-word-goal)
  :hook org-journal-mode
  :config
  (setq wc-modeline-format "written %tw of %gw words"
        wc-word-goal 750))

(use-package writegood-mode
  :general
  (hs-leader-def
    "wg" 'writegood-grade-level
    "we" 'writegood-reading-ease))


(use-package writeroom-mode
  :general
  (hs-leader-def
   "wf" 'writeroom-mode))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


