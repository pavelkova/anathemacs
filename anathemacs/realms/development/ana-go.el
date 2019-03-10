;;; ana-go.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-go
  :hook (go-mode . (set-local-company-backend company-go)))

(use-package go-eldoc
  :defer t)

(use-package go-mode
  :mode "\\.go\\'")

(use-package go-projectile
  :defer t)

(provide 'ana-go)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-go.el ends here
