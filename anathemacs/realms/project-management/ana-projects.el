;;; ana-projects.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; automatically source .envrc files for development projects
(use-package direnv
  :config
  (direnv-mode))


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

;; allow renaming of projects in .dir-locals.el
(put 'projectile-project-name 'safe-local-variable #'stringp)

(use-package org-projectile
  :general
  (hs-leader-def
    "t" 'org-projectile-project-todo-completing-read)
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
    "<SPC>" 'org-projectile-helm-template-or-project))

(use-package helm-projectile
  :after projectile
  :init
  (helm-projectile-on)
  :config
  (setq projectile-completion-system 'helm))


;; PERSPECTIVES

(use-package persp-mode
  :init
  (persp-mode 1)
  :bind-keymap
  ("H-a p" . persp-key-map)
  :config
  (setq persp-autokill-buffer-on-remove 'kill-weak
        persp-nil-name "default"
        persp-nil-hidden t)
  ;; Integrate bs-show
  (global-set-key (kbd "C-x b") #'(lambda (arg)
                                    (interactive "P")
                                    (with-persp-buffer-list () (bs-show arg))))
  ;; Integrate ibuffer
  (global-set-key (kbd "C-x C-b") #'(lambda (arg)
                                      (interactive "P")
                                      (with-persp-buffer-list () (ibuffer arg))))
  )

(use-package persp-mode-projectile-bridge
  :after (persp-mode projectile)
  :hook ((persp-mode projectile-mode) . persp-mode-projectile-bridge-mode)
  :init
  (persp-mode-projectile-bridge-mode 1)
  :config
  (setq persp-mode-projectile-bridge-persp-name-prefix "⧉ ")
  ;; (setq persp-mode-projectile-bridge-persp-name-prefix "[p]")
  (with-eval-after-load "persp-mode-projectile-bridge-autoloads"
    (add-hook 'persp-mode-projectile-bridge-mode-hook
              #'(lambda ()
                  (if persp-mode-projectile-bridge-mode
                      (persp-mode-projectile-bridge-find-perspectives-for-all-buffers)
                    (persp-mode-projectile-bridge-kill-perspectives))))
    (add-hook 'after-init-hook
              #'(lambda ()
                  (persp-mode-projectile-bridge-mode 1))
              t)))

(provide 'ana-projects)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projects.el ends here
