
;;; ana-base.el --- Init index for custom emacs build. 

;;; Commentary:
;;
;;

;;; Code:

(setq use-package-always-ensure t
      inhibit-splash-screen t
      inhibit-startup-message t
      initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
      initial-scratch-message ""
      initial-major-mode 'org-mode
      auto-save-default nil
      create-lockfiles nil
      make-backup-files nil
      backup-by-copying t
      backup-directory-alist `(("." . "~/.emacs.d/backups"))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t
      ;; global-git-commit-mode t
      )

;; (use-package auto-package-update
;;   :config
;;   (setq auto-package-update-delete-old-versions t
;;         auto-package-update-hide-results t)
;;   (auto-package-update-maybe))

(use-package dashboard
  ;; :hook (dashboard-mode . page-break-lines-mode)
  :config
  (add-to-list 'dashboard-items '(agenda) t)
  (setq dashboard-banner-logo-title ""
        dashboard-startup-banner "~/.emacs.d/user/logo.svg"
        show-week-agenda-p t
        dashboard-center-content t
        dashboard-items '((recents        . 5)
                          (bookmarks      . 10)
                          (projects       . 5)
                          (agenda         . 10)))
  (dashboard-setup-startup-hook))

;; shorten responses
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
