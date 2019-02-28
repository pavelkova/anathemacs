;;; ana-web.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package company-web
  :hook (web-mode . (set-local-company-backend company-web)))

(use-package web-mode)

(use-package rainbow-mode
  :hook css-mode)

(use-package css-mode
  :defer t)

(use-package emmet-mode
  :defer t)

(use-package haml-mode
  :defer t)

(use-package less-css-mode
  :defer t)

(use-package pug-mode
  :defer t)

(use-package sass-mode
  :defer t)

(use-package scss-mode
  :defer t)

(use-package tagedit
  :defer t)

(use-package web-beautify
  :defer t)

(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
