;;; ana-projectile.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package counsel-projectile
  :after projectile
  :bind-keymap
  ("H-x p" . projectile-command-map)
  :init
  (counsel-projectile-mode)
  :config
  (setq projectile-switch-project-action 'counsel-projectile-find-file))

(use-package org-projectile
  :init
  (org-projectile-per-project)
  (minor-leader-def
    "np" 'org-projectile-project-todo-completing-read)
  :config
  (setq org-projectile-capture-template
"** □ %^{project todo} %?
:PROPERTIES:
:ADDED: %T
:realm: desarollo
:project:
:END:"
  org-projectile-projects-directory (file-expand-wildcards "~/Code/Current/*/")
  org-projectile-per-project-filepath "README.org"
  org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
  (add-to-list 'org-capture-templates
               (org-projectile-project-todo-entry
                :capture-character "D"
                :capture-heading "Linked Project TODO"))
  (add-to-list 'org-capture-templates
               (org-projectile-project-todo-entry
                :capture-character "d")))
  

(use-package projectile
  :diminish t
  :init
  (projectile-mode +1)
  :config
  (setq projectile-sort-order 'recently-active
        projectile-enable-caching t
        projectile-completion-system 'ivy
        projectile-switch-project-action #'projectile-find-dir
        projectile-find-dir-includes-top-level t
        projectile-mode-line-function '(lambda () (format "⧉ %s" (projectile-project-name)))))

(provide 'ana-projectile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projectile.el ends here
