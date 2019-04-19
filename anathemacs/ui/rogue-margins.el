;;; rogue-margins.el ---

;; Adapted from https://github.com/lepisma/rogue

;;; Commentary:
;;
;;

;;; Code:
(setq-default fringes-outside-margins t
              indicate-buffer-boundaries nil
              fringe-indicator-alist (delq (assq 'continuation fringe-indicator-alist)
                                                      fringe-indicator-alist))
(setq flycheck-indication-mode nil)

(add-hook 'magit-post-refresh-hook #'git-gutter:update-all-windows)
(define-fringe-bitmap 'git-gutter-fr:added
  [224 224 224 224 224 224 224 224 224 224 224 224 224
       224 224 224 224 224 224 224 224 224 224 224 224]
  nil nil 'center)
(define-fringe-bitmap 'git-gutter-fr:modified
  [224 224 224 224 224 224 224 224 224 224 224 224 224
       224 224 224 224 224 224 224 224 224 224 224 224]
  nil nil 'center)
(define-fringe-bitmap 'git-gutter-fr:deleted
  [0 0 0 0 0 0 0 0 0 0 0 0 0 128 192 224 240 248]
  nil nil 'center)
(fringe-mode 3)

(defun rogue-ui-clear-header-sides ()
  "Add left gap in header line"
  (setq header-line-format '(:eval (concat "  " (get-text-property (point-min) (quote header-line))))))

(defun rogue-ui-clear-header ()
  "Clear header line."
  (setq header-line-format " "))

(defun rogue-ui-clear-sides ()
  "Setup gaps on left and right sides."
  (setq left-margin-width 10
        right-margin-width 10)
  (set-window-buffer nil (current-buffer)))

(defun rogue-utils-add-hooks (hooks fun)
  "Add FUN to all the HOOKS."
  (dolist (hook hooks)
    (add-hook hook fun)))

(rogue-utils-add-hooks '(cfw:calendar-mode-hook
                           help-mode-hook
                           text-mode-hook
                           org-agenda-mode-hook
                           ibuffer-mode-hook
                           magit-status-mode-hook
                           magit-popup-mode-hook
                           magit-log-mode-hook
                           magit-diff-mode-hook
                           comint-mode-hook
                           eshell-mode-hook
                           slime-repl-mode-hook
                           process-menu-mode-hook
                           mu4e-view-mode-hook
                           mu4e-main-mode-hook
                           nov-mode-hook
                           Info-mode-hook)
                         #'rogue-ui-clear-sides)

  ;; Hooks for side gap in header
  (rogue-utils-add-hooks '(Info-mode-hook)
                         #'rogue-ui-clear-header-sides)

  ;; Hooks for header gaps
  (rogue-utils-add-hooks '(cfw:calendar-mode-hook
                           text-mode-hook
                           help-mode-hook
                           org-agenda-mode-hook
                           ibuffer-mode-hook
                           magit-status-mode-hook
                           magit-log-mode-hook
                           magit-diff-mode-hook
                           comint-mode-hook
                           eshell-mode-hook
                           slime-repl-mode-hook
                           process-menu-mode-hook
                           mu4e-view-mode-hook
                           mu4e-main-mode-hook
                           nov-mode-hook)
                         #'rogue-ui-clear-header)

(provide 'rogue-margins)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; rogue-margins.el ends here
