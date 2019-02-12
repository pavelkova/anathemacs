;;; ana-completion.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

;;(use-package auto-highlight-symbol
;;  :ensure t)

(use-package company
  :ensure t)

(use-package counsel
  :ensure t
  :config
  (general-define-key
   :prefix "C-c"
   "ff" 'counsel-find-file))

(use-package counsel-projectile
  :ensure t)

(use-package flx
  :ensure t)

(use-package helm-make
  :ensure t
  :defer t
  :init
  (progn
    (setq helm-make-completion-method 'ivy)))

(use-package ivy
  :ensure t)
(use-package ivy-hydra
  :ensure t)

(use-package smex
  :ensure t)

(use-package swiper
  :ensure t)

(use-package wgrep
  :ensure t)

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
