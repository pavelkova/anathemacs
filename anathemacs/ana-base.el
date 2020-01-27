;;; ana-base.el --- Init index for custom emacs build.

;;; Commentary:
;;
;;

;;; Code:
(use-package dashboard
  :init
  (dashboard-setup-startup-hook)
  :config
  (add-to-list 'dashboard-items '(agenda) t)
  (setq dashboard-banner-logo-title ""
        dashboard-startup-banner "~/.emacs.d/user/logo.svg"
        show-week-agenda-p t
        dashboard-center-content t
        dashboard-items '((recents        . 5)
                          (bookmarks      . 10)
                          (projects       . 5)
                          (agenda         . 10))))

(use-package auto-package-update
  :init
  (setq auto-package-update-delete-old-versions t
        auto-package-update-hide-results t)
  (auto-package-update-maybe))

;; unicode support
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; shorten responses
(defalias 'yes-or-no-p 'y-or-n-p)

;; fix max depth error
(setq max-specpdl-size 13000
      max-lisp-eval-depth 8000)

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
