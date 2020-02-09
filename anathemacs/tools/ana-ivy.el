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

(use-package counsel
  :general
  (general-define-key
   "M-x"     'counsel-M-x
   "C-s"     'swiper)
  (ha-leader-def
   "j"  'counsel-imenu
    ;; files
   "fb"  'counsel-bookmark
   "ff"  'counsel-find-file
   "fL"  'counsel-locate
   "fr"  'counsel-recentf))

(use-package ivy
  :delight ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-enable-recursive-minibuffers nil
        ivy-wrap t))

(use-package ivy-rich
  :after ivy
  :init
  (ivy-rich-mode 1)
  (setq ivy-format-function #'ivy-format-function-line))

(use-package smex
  :general
  (general-define-key
   "M-X"     'smex
   "H-A"     'smex-major-mode-commands))



;; ADDITIONAL PACKAGES

;; realms/project-management/ana-projectile.el
(use-package counsel-projectile
  :delight
  :after projectile
  :config
  (counsel-projectile-mode)
  (setq projectile-completion-system 'ivy))

;; tools/ana-snippets.el
(use-package ivy-yasnippet
  :general
  (ha-leader-def
    "si" 'ivy-yasnippet))


(provide 'ana-ivy)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ivy.el ends here
