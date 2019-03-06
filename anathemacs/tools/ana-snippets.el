;;; ana-snippets.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  (global-unset-key (kbd "C-c & C-n"))
  (global-unset-key (kbd "C-c & C-s"))
  (global-unset-key (kbd "C-c & C-v"))
  (use-package ivy-yasnippet
    :config
    (hx-leader-def
      "I" 'ivy-yasnippet
      "if" 'yas-visit-snippet-file
      "ii" 'yas-insert-snippet
      "in" 'yas-new-snippet)))

(use-package yasnippet-snippets)

(provide 'ana-snippets)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-snippets.el ends here
