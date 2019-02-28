;;; ana-go.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package company-go)

(use-package go-eldoc
  :defer t)

(use-package go-mode
  :hook (set-local-company-backend company-go)
  :mode ("\\.go\\'" . go-mode))

(use-package go-projectile
  :defer t)

(provide 'ana-go)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-go.el ends here
