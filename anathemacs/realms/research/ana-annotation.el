;;; ana-annotation.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package org-noter
  :general
  (hs-leader-def
    "rn" 'org-noter)
  :config
  (org-noter-set-auto-save-last-location t))

(provide 'ana-annotation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-annotation.el ends here
