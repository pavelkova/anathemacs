;;; ana-jupyter.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package ein
  :general
  (hs-leader-def
    "C-j"   '(:ignore t :which-key "jupyter")
    "C-j l" 'ein:login
    "C-j r" 'ein:run))

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
