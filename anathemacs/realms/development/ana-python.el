;;; ana-python.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))


(use-package anaconda-mode
  :hook python-mode-hook)

(use-package company-anaconda
  :after company
  :config
  (add-to-list 'company-backends 'company-anaconda))

(use-package cython-mode
  :defer t)

(use-package eldoc
  :defer t)

(use-package hy-mode
  :defer t)

(use-package live-py-mode
  :defer t)

(use-package pip-requirements
  :defer t)

(use-package py-isort
  :defer t)

(use-package pyvenv
  :defer t)

(use-package pytest
  :defer t)


;; (use-package stickyfunc-enhance)
;; (use-package xcscope)
;; (use-package yapify)

(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
