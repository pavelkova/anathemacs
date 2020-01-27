;;; ana-server.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package auto-sudoedit
  :diminish t
  :init
  (auto-sudoedit-mode 1))

(use-package counsel-tramp
  :general
  (ha-leader-def
  "C-r" 'counsel-tramp)
  :config
  (setq tramp-default-method "ssh"))

(use-package nginx-mode)

(use-package company-nginx
  :hook (nginx-mode . (set-local-company-backend company-nginx)))

(use-package ssh-config-mode)

(use-package tramp-term)

(hd-leader-def
  "sp" 'list-processes)

(provide 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-server.el ends here
