;;; ana-projectile.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package counsel-projectile
  :config
  (setq projectile-switch-project-action 'counsel-projectile-find-file)
  (hx-leader-def
   "p SPC" 'counsel-projectile
   "pb"    'counsel-projectile-switch-to-buffer
   "pd"    'counsel-projectile-find-dir
   "pp"    'counsel-projectile-switch-project
   "pf"    'counsel-projectile-find-file
   "pr"    'projectile-recentf)
  )

(use-package org-projectile
  :config
  (org-projectile-per-project)
  (setq org-projectile-per-project-filepath "README.org"
        org-agenda-files (append org-agenda-files (org-projectile-todo-files))))

(use-package projectile
  :diminish projectile-mode
  :init
  (projectile-mode)
  :config
  (setq projectile-sort-order 'recently-active
        projectile-enable-caching t
        projectile-completion-system 'ivy
        projectile-switch-project-action #'projectile-find-dir
        projectile-find-dir-includes-top-level t
        projectile-mode-line-function '(lambda () (format "🕮⧉ %s" (projectile-project-name)))))

(provide 'ana-projectile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projectile.el ends here
