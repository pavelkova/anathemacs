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

;; (use-package company-box
;;   :hook (company-mode . company-box-mode))

(defun set-local-company-backend (backend)
  "Only load backends when needed"
  (set (make-local-variable 'company-backends) '(backend)) (company-mode))

(use-package counsel
  :general
  (general-define-key
   "M-x"     'counsel-M-x
   "C-s"     'swiper)
  (ha-leader-def
    ;; files
   "fb"  'counsel-bookmark
   "ff"  'counsel-find-file
   "fL"  'counsel-locate
   "fr"  'counsel-recentf
   ;; help
   "hf" 'counsel-describe-function
   "hv" 'counsel-describe-variable))

;; (use-package smex
;;   :general
;;   (general-define-key
;;    "M-X"     'smex
;;    "H-A"     'smex-major-mode-commands))

(provide 'ana-completion)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-completion.el ends here
