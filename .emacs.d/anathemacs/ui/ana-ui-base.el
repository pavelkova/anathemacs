;;; ana-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

(use-package dash-functional)

(defun rogue-utils-add-hooks (hooks fun)
  "Add FUN to all the HOOKS."
  (dolist (hook hooks)
    (add-hook hook fun)))

(defun rogue-utils-get-project-dirs (names)
 "Return full paths to given project NAMES. Relies on a variable user-project-dir."
 (mapcar (-cut concat user-project-dir <>) names))

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(defun rogue-ui-clear-sides ()
  "Setup gaps on left and right sides."
  (setq left-margin-width 10
        right-margin-width 10)
  (set-window-buffer nil (current-buffer)))

(defun rogue-ui-clear-header-sides ()
  "Add left gap in header line"
  (setq header-line-format '(:eval (concat "  " (get-text-property (point-min) (quote header-line))))))

(defun rogue-ui-clear-header ()
  "Clear header line."
  (setq header-line-format " "))

(defun rogue-ui-line-spacing (size)
  "Set line spacing."
  (setq line-spacing size))

(defun rogue-ui-hide-mode-line ()
  "Hide mode line. Wrap around the spacemacs' function."
  (hidden-mode-line-mode +1))

;; (defun rogue-ui-no-hl-line ()
;;   "Disable line highlight. Wrap around spacemacs' function."
;;   (spacemacs/disable-hl-line-mode))

(defun rogue-ui-setup-fringe ()
  "Setup git fringe"
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
  (fringe-mode 3))

(defun rogue-ui-setup-ibuffer ()
  "Ibuffer cleanup"

  (setq ibuffer-expert t
        ibuffer-show-empty-filter-groups nil
        ibuffer-filter-group-name-face 'org-level-1
        ibuffer-modified-char ?\★
        ibuffer-locked-char ?\-
        ibuffer-read-only-char ?\-
        ibuffer-marked-char ?\✓
        ibuffer-deletion-char ?\✕
        ibuffer-deletion-face 'org-agenda-done
        ibuffer-use-header-line nil)

  (defun rogue-ui--ibuffer-remove-title (&rest args)
    (save-excursion
      (set-buffer "*Ibuffer*")
      (toggle-read-only 0)
      (goto-char 1)
      (search-forward "-\n" nil t)
      (delete-region 1 (point))
      (insert "\n")
      (let ((window-min-height 1))
        (shrink-window-if-larger-than-buffer))
      (toggle-read-only)))

  (advice-add 'ibuffer-update-title-and-summary :after 'rogue-ui--ibuffer-remove-title))

(defun rogue-ui-setup-misc ()
  "Setup ui for misc packages/tools."

  ;; (use-package em-tramp
  ;;   :config
  ;;   (setq eshell-prefer-lisp-functions t
  ;;         password-cache t
  ;;         password-cache-expiry 3600))

  (setq eshell-prompt-function
        (lambda ()
          (concat (propertize
                   (abbreviate-file-name (eshell/pwd)) 'face '(:foreground "#ecccc2"))
                  "\nλ ")))

  (setq tramp-default-method "ssh"
        eshell-scroll-show-maximum-output nil
        comint-scroll-show-maximum-output nil
        comint-input-ignoredups t)

  (setq ielm-prompt "λ "
        ielm-prompt-internal "λ ")

    ;; nlinum
  (setq nlinum-highlight-current-line t
        nlinum-format " %d ")

  (blink-cursor-mode t)
  (setq-default cursor-in-non-selected-windows nil)
  (setq frame-title-format '("" "%b - Emacs"))

  (setq neo-banner-message nil
        neo-mode-line-type 'none
        neo-autorefresh nil)

  (setq alert-default-style 'libnotify))

(defun rogue-ui-setup-minibuffer ()
  "Fix minibuffer and surrounding area."
  (advice-add 'helm-display-mode-line
              :override (lambda (source &optional force) (rogue-ui-hide-mode-line))))

(defun rogue-ui-setup ()
  "Setup everything."

  (rogue-ui-setup-fringe)
  (rogue-ui-setup-ibuffer)
  (rogue-ui-setup-misc)
  (rogue-ui-setup-minibuffer)

  ;; Hooks for side gaps
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

  ;; Hooks for hidden modeline
  (rogue-utils-add-hooks '(processing-compilation-mode-hook
                           eshell-mode-hook
                           help-mode-hook
                           compilation-mode-hook
                           messages-buffer-mode-hook
                           completion-list-mode-hook
                           org-agenda-mode-hook
                           ibuffer-mode-hook
                           magit-status-mode-hook
                           magit-popup-mode-hook
                           magit-log-mode-hook
                           magit-diff-mode-hook
                           comint-mode-hook
                           slime-repl-mode-hook
                           process-menu-mode-hook)
                         #'rogue-ui-hide-mode-line)

  ;; Hooks for line spacing
  (rogue-utils-add-hooks '(text-mode-hook
                           helm-mode-hook
                           prog-mode-hook
                           ibuffer-mode-hook
                           comint-mode-hook)
                         (lambda () (rogue-ui-line-spacing 0.1)))

  (rogue-utils-add-hooks '(org-agenda-mode-hook)
                         (lambda () (rogue-ui-line-spacing 0.2)))

 ;; No line highlighting
;; (rogue-utils-add-hooks '(text-mode-hook
;;                          cfw:calendar-mode-hook)
;;                        #'rogue-ui-no-hl-line)


  ;; Clear message buffer
  (with-current-buffer "*Messages*"
    (rogue-ui-hide-mode-line)
    (rogue-ui-clear-header)
    (rogue-ui-clear-sides))

  ;; Other general hooks
  (add-hook 'css-mode-hook (lambda () (rainbow-mode 1)))
  (add-hook 'text-mode-hook #'auto-fill-mode)
  (add-hook 'term-mode-hook #'toggle-truncate-lines)
  (add-hook 'prog-mode-hook #'nlinum-mode)
  (add-hook 'text-mode-hook #'visual-line-mode))

(rogue-ui-setup)
(provide 'ana-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ui-base.el ends here
