;;; ana-statistics.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package ess
  :hook (set-local-company-backend company-ess))

(use-package ess-view)

(use-package ess-smart-equals
  :init
  (progn
    (add-hook 'ess-mode-hook 'ess-smart-equals-mode)
    (add-hook 'inferior-ess-mode-hook 'ess-smart-equals-mode)))



(provide 'ana-statistics)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-statistics.el ends here
