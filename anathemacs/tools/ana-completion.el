;;; ana-completion.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

(use-package company
  :init
  (global-company-mode)
  :config
  (company-tng-configure-default)
  
  )

(use-package counsel-projectile
  :config
  (setq projectile-switch-project-action 'counsel-projectile-find-file)
  (hx-leader-def
   :keymaps 'projectile-mode-map
   "p SPC" 'counsel-projectile
   "pb"    'counsel-projectile-switch-to-buffer
   "pd"    'counsel-projectile-find-dir
   "pp"    'counsel-projectile-switch-project
   "pf"    'counsel-projectile-find-file
   "pr"    'projectile-recentf)
  )

(use-package flx)

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

(use-package all-the-icons-ivy
  :config
  (all-the-icons-ivy-setup)
  (setq all-the-icons-ivy-file-commands
        '(counsel-find-file counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir)))

(use-package ivy-hydra
  :after hydra)

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
