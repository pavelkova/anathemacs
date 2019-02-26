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
        org-journal-file-format "%Y-%m-%d.org"))

(use-package wc-mode
  :defer t
  :hook org-journal-mode-hook
  :config
  (setq wc-modeline-format "written %tw of %gw words"
        wc-word-goal 750))

(hs-leader-def
  "xc" 'wc-mode
  "xC" 'wc-set-word-goal)

(use-package writegood-mode
  :defer t)

(hs-leader-def
   "xg" 'writegood-grade-level
   "xe" 'writegood-reading-ease)

(use-package writeroom-mode
  :config
  (hs-leader-def
   "xf" 'writeroom-mode))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


