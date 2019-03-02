;;; ana-server.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package counsel-tramp
  :defer t)

(use-package tramp-term
  :defer t
  :config
  (setq tramp-default-method "ssh"))

(hx-leader-def
  "r" 'tramp-term
  "R" 'counsel-tramp)

(use-package nginx-mode
  :defer t)

(provide 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-server.el ends here
