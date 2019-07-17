;;; ana-projectile.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package counsel-projectile
  :general
  (cmx-leader-def
    "SPC" 'counsel-projectile
    "b" 'counsel-projectile-switch-to-buffer
    "c" 'counsel-projectile-org-capture
    "d" 'counsel-projectile-find-dir
    "D" 'projectile-current-project-dirs
    "f" 'counsel-projectile-find-file
    "F" 'projectile-current-project-files
    "g" 'counsel-projectile-grep
    "i" 'projectile-ibuffer-by-project
    "I" 'projectile-ibuffer
    "k" 'projectile-kill-buffers
    "p" 'counsel-projectile-switch-project)
  :config
  (counsel-projectile-mode))

(use-package projectile
  :diminish t
  :general
  (cmx-leader-def
   "." '(:prefix-command projectile-command-map :which-key "(more)"))
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
