
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
      initial-scratch-message ""
      initial-major-mode 'org-mode
      ;; autosave
      create-lockfiles nil
      backup-by-copying t
      backup-directory-alist `(("." . "~/.emacs.d/auto-save"))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t
      ;; global-git-commit-mode t
      )

(use-package dashboard
  :defer t
  :config
  ;; (dashboard-setup-startup-hook)
  (add-to-list 'dashboard-items '(agenda) t)
  (setq dashboard-banner-logo-title "[ a n a t h e m a c s ]"
        dashboard-startup-banner "~/.emacs.d/user/logo.svg"
        show-week-agenda-p t
        dashboard-items '((recents . 5)
                          (bookmarks . 10)
                          (projects . 5)
                          (agenda . 10))))

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
