;;; ana-completion.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package all-the-icons-ivy
  :config
  (all-the-icons-ivy-setup)
  (setq all-the-icons-ivy-file-commands
        '(counsel-find-file counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir)))

(use-package company
  :diminish company-mode
  :init
  (global-company-mode)
  :config
  (company-tng-configure-default)
  
  )

;; (use-package flx)

(use-package helm-make
  :defer t
  :init
  (setq helm-make-completion-method 'ivy)
  (hx-leader-def
   "cc"  'helm-make-projectile
   "cm"  'helm-make))

(use-package imenu
  :config
  (hx-leader-def
   "ji"  'counsel-imenu))

(use-package ivy
  :diminish ivy-mode
  :init
  (use-package counsel)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        enable-recursive-minibuffers t
        ivy-wrap t)
  (general-define-key
   "<f6>"    'ivy-resume
   "M-x"     'counsel-M-x
   "C-s"     'swiper
   "C-x C-f" 'counsel-find-file
   )

  (general-define-key
   :keymaps 'ivy-minibuffer-map
   "C-j"    'ivy-next-line
   "C-k"    'ivy-previous-line)

  (hx-leader-def
   "fb"  'counsel-bookmark
   "ff"  'counsel-find-file
   "fL"  'counsel-locate
   "fr"  'counsel-recentf
   "g"   'counsel-git
   "hdf" 'counsel-describe-function
   "hdv" 'counsel-describe-variable
   "iu"  'counsel-unicode-char
   "sgp" 'counsel-git-grep
   ))

(use-package ivy-hydra
  :after hydra)

(use-package smex
  :config
  (general-define-key
   "M-X"     'smex
   "H-X"     'smex-major-mode-commands))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets)

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
