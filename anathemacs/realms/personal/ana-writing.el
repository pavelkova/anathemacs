;;; ana-writing.el ---

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
        org-extend-today-until "7:00"
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y-%m-%d.org"))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here
