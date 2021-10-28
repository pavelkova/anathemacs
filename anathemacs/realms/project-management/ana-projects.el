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
        projectile-switch-project-action #'projectile-find-file-dwim
        projectile-find-dir-includes-top-level t
        projectile-dynamic-mode-line t
        projectile-mode-line-function '(lambda () (format "⧉  %s " (projectile-project-name)))))

;; allow renaming of projects in .dir-locals.el
(put 'projectile-project-name 'safe-local-variable #'stringp)

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

;; (use-package perspective
;;   :bind-keymap
;;   ("H-a p" . perspective-map)
;;   :bind
;;   (("C-x b"   . persp-switch-to-buffer*)
;;    ("C-x k"   . persp-kill-buffer*)
;;    ("C-x C-b" . persp-ibuffer)
;;    :map perspective-map
;;    ("s"       . persp-switch))
;;   :config
;;   (persp-mode)
;;   (setq persp-initial-frame-name "default"
;;         persp-modestring-dividers '("⧉ " "" "::")
;;         persp-modestring-short t
;;         persp-mode-prefix-key "H-a p"
;;         persp-sort 'access))

;; (use-package persp-projectile
;;   :after
;;   (perspective projectile)
;;   :bind
;;   (:map perspective-map
;;         ("o" . projectile-persp-switch-project)))

(provide 'ana-projects)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-projects.el ends here
