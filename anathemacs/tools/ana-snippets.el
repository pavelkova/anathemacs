;;; ana-snippets.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package yasnippet
  :diminish yas-minor-mode
  :init
  (yas-global-mode 1)
  (ha-leader-def
    "s." 'yas-minor-mode
    "sf" 'yas-visit-snippet-file
    "si" 'yas-insert-snippet
    "sn" 'yas-new-snippet)
  (setq yas-snippet-dirs '(user-snippets-dir)))

(use-package ivy-yasnippet
  :general
  (ha-leader-def
    "I" 'ivy-yasnippet))

(use-package yasnippet-snippets
  :init
  (ha-leader-def
    "sd" 'yas-describe-tables))

(provide 'ana-snippets)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-snippets.el ends here
