;;; ana-ivy.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package all-the-icons-ivy
  :config
  (all-the-icons-ivy-setup)
  (setq all-the-icons-ivy-file-commands
        '(counsel-find-file counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir)))

(use-package ivy
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-enable-recursive-minibuffers t
        ivy-wrap t))

(use-package ivy-rich
  :after ivy
  :init
  (ivy-rich-mode 1)
  (setq ivy-format-function #'ivy-format-function-line))


(provide 'ana-ivy)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ivy.el ends here
