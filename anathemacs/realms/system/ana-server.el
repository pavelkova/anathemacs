;;; ana-server.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package auto-sudoedit
  :delight
  :init
  (auto-sudoedit-mode 1))

(use-package nginx-mode)

(defun nginx-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Nginx")))

(add-hook 'nginx-mode-hook 'nginx-doc)

(use-package company-nginx
  :hook (nginx-mode . (set-local-company-backend company-nginx)))

(use-package ssh-config-mode)

(use-package tramp-term)

(use-package helm-tramp
  :after helm
  :general
  (ha-leader-def
  "C-r" 'helm-tramp)
  :config
  (setq tramp-default-method "ssh"))

(provide 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-server.el ends here
