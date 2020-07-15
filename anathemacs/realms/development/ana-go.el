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

(defun go-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Go")))

(add-hook 'go-mode-hook 'go-doc)

(provide 'ana-go)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-go.el ends here
