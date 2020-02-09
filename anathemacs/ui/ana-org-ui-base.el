;;; ana-org-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package olivetti
  :delight olivetti-mode
  :hook ((text-mode org-mode) . olivetti-mode)
  :init
  (setq olivetti-body-width 0.85))

(with-eval-after-load 'org
  (setq org-ellipsis "..."
        org-list-indent-offset 2
        org-tags-column 0
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline nil
        org-fontify-quote-and-verse-blocks t
        org-startup-align-all-tables t
        org-startup-indented t
        org-startup-with-inline-images t))
  
(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  :config
  (setq org-bullets-bullet-list '("⋅")))

(use-package org-variable-pitch
  :delight org-variable-pitch-minor-mode
  :hook (org-mode . org-variable-pitch-minor-mode)
  :config
  (add-to-list 'org-variable-pitch-fixed-faces 'org-special-keyword 'org-link))


(provide 'ana-org-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-ui-base.el ends here

