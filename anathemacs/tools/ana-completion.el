;;; ana-completion.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package company
  :diminish company-mode
  :init
  (global-company-mode)
  :config
  (company-tng-configure-default)
  (setq company-show-numbers t
        company-tooltip-align-annotations t
        company-tooltip-margin 3))

(defun set-local-company-backend (backend)
  "Only load backends when needed"
  (set (make-local-variable 'company-backends) '(backend)) (company-mode))

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

(use-package counsel
  :after ivy
  :config
  (general-define-key
   "M-x"     'counsel-M-x
   "C-s"     'swiper
   "C-x C-f" 'counsel-find-file
   )
  (hx-leader-def
   "fb"  'counsel-bookmark
   "ff"  'counsel-find-file
   "fL"  'counsel-locate
   "fr"  'counsel-recentf
   "hdf" 'counsel-describe-function
   "hdv" 'counsel-describe-variable
   "iu"  'counsel-unicode-char
   ))

(use-package smex
  :config
  (general-define-key
   "M-X"     'smex
   "H-X"     'smex-major-mode-commands))

(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  (use-package ivy-yasnippet
    :config
    (hx-leader-def
    "y" 'ivy-yasnippet)))

(use-package yasnippet-snippets)

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
