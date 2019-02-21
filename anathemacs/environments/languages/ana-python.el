;;; ana-python.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))


(use-package anaconda-mode)
(use-package company-anaconda)
(use-package cython-mode)
(use-package eldoc)
(use-package hy-mode)
(use-package live-py-mode)
(use-package pip-requirements)
(use-package py-isort)
(use-package pyenv-mode)
(use-package pytest)
(use-package pyvenv)
(use-package stickyfunc-enhance)
(use-package xcscope)
(use-package yapify)

(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
