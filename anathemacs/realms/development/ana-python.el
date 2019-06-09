;;; ana-python.el --- Package configurations for working with Python.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; Python prefix
(hd-leader-def
    "p"  '(:ignore t :which-key "python"))

(use-package anaconda-mode
  :hook (python-mode . (anaconda-mode anaconda-eldoc-mode))
  :general
  (hd-leader-def
   "a"  '(:ignore t :which-key "anaconda")
   "a." 'anaconda-mode-complete
   "aa" 'anaconda-mode-find-assignments
   "aA" 'anaconda-mode-find-assignments-other-window
   "ad" 'anaconda-mode-find-definitions
   "aD" 'anaconda-mode-find-definitions-other-window
   "ar" 'anaconda-mode-find-references
   "aR" 'anaconda-mode-find-references-other-window
   "a?" 'anaconda-mode-show-doc))

(use-package company-anaconda
  :after company
  :hook (python-mode . (set-local-company-backend company-anaconda)))

(use-package cython-mode)

;; (use-package live-py-mode)

(use-package pippel
  :general
  (hd-leader-def
    "pl" 'pippel-list-packages)

(use-package pip-requirements
  :mode "\\requirements.txt\\'")

(use-package pyvenv
  :hook (python-mode . pyvenv-mode)
  :general
  (hd-leader-def
    "pa" 'pyvenv-activate))

(use-package pytest)


(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
