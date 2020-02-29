;;; ana-projects.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package projectile
  :bind-keymap
  ("H-s" . projectile-command-map)
  :init
  (projectile-mode)
  :config
  (setq projectile-sort-order 'recently-active
        projectile-enable-caching t
        projectile-switch-project-action #'projectile-find-dir
        projectile-find-dir-includes-top-level t
        projectile-mode-line-function '(lambda () (format "⧉  %s " (projectile-project-name)))))

(use-package org-projectile
  :general
  (hs-leader-def
    "tt" 'org-projectile-project-todo-completing-read)
  :config
  (org-projectile-per-project)
  (setq org-projectile-per-project-filepath "index.org"
        org-projectile-capture-template (format "%s" "*** TODO %? %T")
        org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
  (add-to-list 'org-capture-templates
                 (org-projectile-project-todo-entry
                  :capture-character "p"
                  :capture-heading "tarea (projectile)")))

(use-package org-projectile-helm
  :after org-projectile
  :general
  (hs-leader-def
    "p" 'org-projectile-helm-template-or-project))

;; allow renaming of projects in .dir-locals.el
(put 'projectile-project-name 'safe-local-variable #'stringp)

(provide 'ana-projects)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projects.el ends here
