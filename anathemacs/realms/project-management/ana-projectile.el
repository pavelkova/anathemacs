;;; ana-projectile.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package counsel-projectile
  :general
  (ha-leader-def
    "p SPC" 'counsel-projectile
    "pb" 'counsel-projectile-switch-to-buffer
    "pc" 'counsel-projectile-org-capture
    "pd" 'counsel-projectile-find-dir
    "pD" 'projectile-current-project-dirs
    "pf" 'counsel-projectile-find-file
    "pF" 'projectile-current-project-files
    "pg" 'counsel-projectile-grep
    "pi" 'projectile-ibuffer-by-project
    "pI" 'projectile-ibuffer
    "pk" 'projectile-kill-buffers
    "pp" 'counsel-projectile-switch-project)
  :config
  (counsel-projectile-mode))

(use-package projectile
  :diminish t
  :general
  (ha-leader-def
   "P" '(:prefix-command projectile-command-map :which-key "projectile"))
  :init
  (projectile-mode)
  :config
  (setq projectile-sort-order 'recently-active
        projectile-enable-caching t
        projectile-completion-system 'ivy
        projectile-switch-project-action #'projectile-find-dir
        projectile-find-dir-includes-top-level t
        projectile-mode-line-function '(lambda () (format "⧉  %s " (projectile-project-name)))))

(use-package persp-projectile
  :general
  (ha-leader-def
    "wS" 'projectile-persp-switch-project))

;; allow renaming of projects in .dir-locals.el
(put 'projectile-project-name 'safe-local-variable #'stringp)

(provide 'ana-projectile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projectile.el ends here
