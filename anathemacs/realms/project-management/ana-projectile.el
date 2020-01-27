;;; ana-projectile.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package counsel-projectile
  :diminish t
  :init
  (counsel-projectile-mode))

(use-package projectile
  :diminish t
  :bind-keymap
  ("M-a" . projectile-command-map)
  :init
  (projectile-mode)
  :config
  (setq projectile-sort-order 'recently-active
        projectile-enable-caching t
        projectile-completion-system 'ivy
        projectile-switch-project-action #'projectile-find-dir
        projectile-find-dir-includes-top-level t
        projectile-mode-line-function '(lambda () (format "⧉  %s " (projectile-project-name)))))

;; allow renaming of projects in .dir-locals.el
(put 'projectile-project-name 'safe-local-variable #'stringp)

(provide 'ana-projectile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projectile.el ends here
