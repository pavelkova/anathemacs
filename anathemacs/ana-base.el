
;;; ana-base.el --- Init index for custom emacs build. 

;;; Commentary:
;;
;;

;;; Code:

(setq use-package-always-ensure t
      ;; startup
      ;; inhibit-splash-screen t
      ;; inhibit-startup-message t
      initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
      initial-scratch-message ""
      initial-major-mode 'org-mode
      ;; autosave
      create-lockfiles nil
      backup-by-copying t
      ;; backup-directory-alist `((".*" . ,temporary-file-directory))
      ;; auto-save-file-name-transforms `((".*" . ,temporary-file-directory t))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t
      ;; global-git-commit-mode t
      )

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "act before you're ready"
        dashboard-startup-banner "~/.emacs.d/user/logo.svg"
        ))

;; (use-package eyebrowse)

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
