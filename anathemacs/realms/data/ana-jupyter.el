;;; ana-jupyter.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package ein
  :general
  (hd-leader-def
    "j"  '(:ignore t :which-key "jupyter")
    "jl" 'ein:login
    "jr" 'ein:run))

(defun ein-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Matplotlib"
                                  "NumPy"
                                  "Pandas"
                                  "Python 3"
                                  "SciPy"
                                  "SQLAlchemy")))

(add-hook 'ein:ipynb-mode-hook 'ein-doc)


(provide 'ana-jupyter)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-jupyter.el ends here
