;;; ana-base.el --- Init index for custom emacs build.

;;; Commentary:
;;
;;

;;; Code:

;; (use-package dashboard
;;   ;; :defer t
;;   :init
;;   (dashboard-setup-startup-hook)
;;   :config
;;   (add-to-list 'dashboard-items '(agenda) t)
;;   (setq dashboard-banner-logo-title ""
;;         dashboard-startup-banner "~/.config/emacs/user/logo.svg"
;;         show-week-agenda-p t
;;         dashboard-center-content t
;;         dashboard-items '((recents        . 5)
;;                           (bookmarks      . 10)
;;                           (projects       . 5)
;;                           (agenda         . 10))))

(use-package auto-package-update
  :init
  (setq auto-package-update-delete-old-versions t
        auto-package-update-hide-results t)
  (auto-package-update-maybe))

;; minor mode appearance in modeline (required by use-package)
(use-package delight
  :init
  (delight '((auto-fill-function nil "simple")
             (auto-revert-mode nil "autorevert")
             (buffer-face-mode nil "face-remap")
             (display-line-numbers-mode nil "display-line-numbers")
             (eldoc-mode nil "eldoc")
             (git-gutter-mode nil "git-gutter")
             (org-cdlatex-mode nil "org")
             (org-indent-mode nil "org")
             (page-break-lines-mode nil "page-break-lines")
             (visual-line-mode nil "simple"))))

;; unicode support
(set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8)
(set-face-font 'default "Victor Mono-10")
(add-to-list 'default-frame-alist '(font . "Victor Mono-10"))
;; (set-face-attribute 'mode-line nil
;;                     :font "Helvetica-8"
;;                     :weight 'normal)

;; shorten responses
(defalias 'yes-or-no-p 'y-or-n-p)

;;; When opening a file that is a symbolic link, don't ask whether I
;;; want to follow the link. Just do it
(setq find-file-visit-truename t)

;; fix max depth error
(setq max-specpdl-size 13000
      max-lisp-eval-depth 8000)

(provide 'ana-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-base.el ends here
