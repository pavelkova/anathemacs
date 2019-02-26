;;; ana-web.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package company-web)

(use-package web-mode)

(use-package rainbow-mode
  :hook css-mode)



(use-package css-mode)
(use-package emmet-mode)
(use-package haml-mode)
(use-package less-css-mode)
(use-package pug-mode)
(use-package sass-mode)
(use-package scss-mode)
(use-package tagedit)
(use-package web-beautify)
(use-package skewer-mode)

(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
