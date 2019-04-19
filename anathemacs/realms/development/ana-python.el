;;; ana-python.el --- Package configurations for working with Python.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package anaconda-mode
  :hook (python-mode . anaconda-mode)
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
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(use-package company-anaconda
  :after company)

(use-package cython-mode)

(use-package hy-mode)

(use-package live-py-mode)

(use-package pippel)

(use-package pip-requirements
  :mode "\\requirements.txt\\'")

(use-package py-isort)

(use-package pyvenv
  :hook (python-mode . pyvenv-mode))

(use-package pytest)


;; (use-package stickyfunc-enhance)
;; (use-package xcscope)
;; (use-package yapify)

(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
