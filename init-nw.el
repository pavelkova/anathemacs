;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(eval-when-compile
  (require 'package)

  (unless (assoc-default "melpa" package-archives)
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
  (unless (assoc-default "org" package-archives)
    (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))

  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t
	;; use-package-always-defer t
	use-package-verbose t))

(load-theme 'anathemacs t)

(use-package better-defaults)

(use-package counsel
  :init
  (general-define-key
   "M-x" 'counsel-M-x
   "C-s" 'swiper))

(use-package general
  :init
  (general-create-definer cs-leader-def
			  :prefix "C-<space>"))

(use-package ivy
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t))

(use-package multiple-cursors
  :init
  (general-define-key
   "C-<" 'mc/edit-beginnings-of-lines
   "C->" 'mc/edit-ends-of-lines
   "C-M-." 'mc/add-cursor-on-click))

(use-package smartparens
  :init
  (smartparens-global-mode))

(use-package which-key
  :init
  (which-key-mode))


(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)

(cs-leader-def
  "c]" 'comment-dwim
  "c\-" 'comment-line
  "c[" 'comment-or-uncomment-region)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (use-package rainbow-mode company ivy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
