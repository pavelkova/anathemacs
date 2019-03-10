;;; ana-jupyter.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package ein
  :defer t
  :general
  (hs-leader-def
    "dl" 'ein:notebooklist-open
    "dn" 'ein:notebooklist-new-notebook
    "dg" 'ein:notebooklist-open-notebook-global
    "dp" 'ein:notebooklist-login
    "dj" 'ein:junk-new
    ))

(provide 'ana-jupyter)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-jupyter.el ends here
