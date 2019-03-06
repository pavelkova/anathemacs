;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package org-journal
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-enable-agenda-integration t
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y-%m-%d.org")
  (global-unset-key (kbd "C-c C-j"))
  (hs-leader-def
    "wj" 'org-journal-new-entry))

(use-package wc-mode
  :hook org-journal-mode-hook
  :config
  (setq wc-modeline-format "written %tw of %gw words"
        wc-word-goal 750))

(hs-leader-def
  "wc" 'wc-mode
  "wC" 'wc-set-word-goal)

(use-package writegood-mode
  :defer t)

(hs-leader-def
   "wg" 'writegood-grade-level
   "we" 'writegood-reading-ease)

(use-package writeroom-mode
  :config
  (hs-leader-def
   "wf" 'writeroom-mode))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


