;;; ana-server.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package counsel-tramp
  :defer t
  :config
  (add-hook 'counsel-tramp-pre-command-hook '(lambda () (global-aggressive-indent-mode 0)
				     (projectile-mode 0)
				     (editorconfig-mode 0)))
  (add-hook 'counsel-tramp-quit-hook '(lambda () (global-aggressive-indent-mode 1)
			      (projectile-mode 1)
			      (editorconfig-mode 1))))

(use-package tramp-term
  :defer t
  :config
  (setq tramp-default-method "ssh"))

(hx-leader-def
  "r" 'tramp-term
  "R" 'counsel-tramp)

(use-package nginx-mode
  :defer t)

(use-package company-nginx
  :hook (nginx-mode . (set-local-company-backend company-nginx)))

(provide 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-server.el ends here
