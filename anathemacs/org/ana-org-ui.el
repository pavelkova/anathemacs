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

(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  :config
  (setq org-bullets-bullet-list '("⋅")))

;; calendar
(use-package calfw
  :bind
  (("C-c q" . cfw:open-org-calendar))
 :config
 (setq cfw:fchar-junction ?┼
       cfw:fchar-vertical-line ?│
       cfw:fchar-horizontal-line ?─
       cfw:fchar-left-junction ?├
       cfw:fchar-right-junction ?┤
       cfw:fchar-top-junction ?┬
       cfw:fchar-top-left-corner ?┌
       cfw:fchar-top-right-corner ?┐
       cfw:render-line-breaker 'cfw:render-line-breaker-none
       cfw:face-item-separator-color nil)
)


(use-package company-emoji)

(use-package emoji-cheat-sheet-plus
  :hook
  ('org-mode-hook 'emoji-cheat-sheet-plus-display-mode)
  :config
  (hx-leader-def
   "ie" 'emoji-cheat-sheet-plus-insert))

(provide 'ana-org-ui)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-ui.el ends here
