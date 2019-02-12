;;; ana-completion.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

;;(use-package auto-highlight-symbol
;;  :ensure t)


(use-package company)

(use-package counsel-projectile
  :defer t
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
   "M-x"     'counsel-M-x
   "C-s"     'swiper
   "<f6>"    'ivy-resume
   "C-x C-f" 'counsel-find-file
   )
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

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
