;;; ana-snippets.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package yasnippet
  :diminish yas-minor-mode
  :general
  (ha-leader-def
      "if" 'yas-visit-snippet-file
      "ii" 'yas-insert-snippet
      "in" 'yas-new-snippet)
  :config
  ;; (yas-global-mode 1)
  (customize-set-variable 'yas-snippets-dir '()))

(use-package ivy-yasnippet
  :general
  (ha-leader-def
    "I" 'ivy-yasnippet))

(use-package yasnippet-snippets
  :hook yas-minor-mode)

(provide 'ana-snippets)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-snippets.el ends here
