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
  (hd-leader-def
    "j"  '(:ignore t :which-key "jupyter")
    "j+" 'ein:jupyter-server-start
    "jl" 'ein:notebooklist-open
    "jn" 'ein:notebooklist-new-notebook
    "jg" 'ein:notebooklist-open-notebook-global
    "jp" 'ein:notebooklist-login
    "jj" 'ein:junk-new
    ))

(provide 'ana-jupyter)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-jupyter.el ends here
