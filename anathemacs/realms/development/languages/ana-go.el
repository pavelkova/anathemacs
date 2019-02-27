;;; ana-go.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package company-go
  :defer t)

;; (use-package gocode
;;   :defer t)

(use-package go-eldoc
  :defer t)

(use-package go-mode
  :mode ("\\.go\\'" . go-mode))

(use-package go-projectile
  :defer t)

(provide 'ana-go)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-go.el ends here
