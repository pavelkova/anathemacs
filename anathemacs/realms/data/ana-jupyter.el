;;; ana-jupyter.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package ein
  :config
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
