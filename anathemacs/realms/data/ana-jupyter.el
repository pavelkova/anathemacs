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
  (hm-leader-def
    :keymaps ein:notebooklist-mode-maps
    "l" 'ein:notebooklist-open
    "n" 'ein:notebooklist-new-notebook
    "g" 'ein:notebooklist-open-notebook-global
    "p" 'ein:notebooklist-login
    "j" 'ein:junk-new
    ))

(provide 'ana-jupyter)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-jupyter.el ends here
