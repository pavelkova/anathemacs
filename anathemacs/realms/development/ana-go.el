;;; ana-go.el --- Package configurations for working with Golang.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-go
  :hook (go-mode . (set-local-company-backend company-go)))

(use-package go-mode
  :mode "\\.go\\'")

(use-package go-projectile)

(provide 'ana-go)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-go.el ends here
