
;;; ana-base.el --- Init index for custom emacs build. 

;;; Commentary:
;;
;;

;;; Code:
(setq use-package-always-ensure t
      ;; startup
      inhibit-splash-screen t
      inhibit-startup-message t
      ;; initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
      ;; autosave
      create-lockfiles nil
      backup-by-copying t
      ;; backup-directory-alist `((".*" . ,temporary-file-directory))
      ;; auto-save-file-name-transforms `((".*" . ,temporary-file-directory t))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t
      global-git-commit-mode t
      )

(use-package auto-yasnippet)

(use-package better-defaults)

(use-package dashboard
  :init
  (dashboard-setup-startup-hook))

(use-package define-word)

(use-package eyebrowse)

(use-package general
  :config
  (general-create-definer cc-leader-def
    :prefix "C-c")
  (general-create-definer hx-leader-def
    :prefix "H-x")
  )

(use-package magit)

(use-package multiple-cursors)

(use-package neotree)

(use-package org-download)

(use-package pdf-tools)

(use-package projectile)

(use-package smartparens)

(use-package which-key)

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
