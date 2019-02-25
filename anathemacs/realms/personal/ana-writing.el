;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))
 
(use-package org-journal
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-enable-agenda-integration t
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y-%m-%d.org"))

;; (use-package org-journal-list
;;   :config
;;   (setq org-journal-list-default-directory user-journal-dir
;;         org-journal-list-default-suffix ".org")
;;   )

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


