;;; ana-org-ui.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base)
  (require 'org))

;; calendar
(use-package calfw
  :config
  (setq cfw:fchar-junction ?┼
        cfw:fchar-vertical-line ?│
        cfw:fchar-horizontal-line ?─
        cfw:fchar-left-junction ?├
        cfw:fchar-right-junction ?┤
        cfw:fchar-top-junction ?┬
        cfw:fchar-top-left-corner ?┌
        cfw:fchar-top-right-corner ?┐)
  (setq cfw:render-line-breaker 'cfw:render-line-breaker-none
        setq cfw:face-item-separator-color nil)
  )


(use-package company-emoji)

(use-package emoji-cheat-sheet-plus
  :hook
  ('org-mode-hook 'emoji-cheat-sheet-plus-display-mode)
  :config
  (global-define-key
   "C-c C-e" 'emoji-cheat-sheet-plus-insert))

(provide 'ana-org-ui)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-ui.el ends here
