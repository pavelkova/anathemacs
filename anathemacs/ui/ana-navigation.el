;;; ana-navigation.el --- Directory browsers and sidebars.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; (use-package all-the-icons-dired
;;   :hook dired-mode)

;; ibuffer
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

(use-package imenu
  :general
  (ha-leader-def
    "j"  'counsel-imenu))

(use-package imenu-list
  :general
  (ha-leader-def
    "'" 'imenu-list-smart-toggle)
  :config
  (setq imenu-list-focus-auto-resize t))


;; (defun neotree-project-dir ()
;;     "Open NeoTree using the git root."
;;     (interactive)
;;     (let ((project-dir (projectile-project-root))
;;           (file-name (buffer-file-name)))
;;       (neotree-toggle)
;;       (if project-dir
;;           (if (neo-global--window-exists-p)
;;               (progn
;;                 (neotree-dir project-dir)
;;                 (neotree-find file-name)))
;;         (message "Could not find git project root."))))

;; (use-package neotree
;;   :general
;;   (general-define-key
;;    "<f8>" 'neotree-toggle
;;    "H-a p d" 'neotree-project-dir)
;;   :config
;;   (setq neo-window-width 32
;;         neo-theme 'icons
;;         neo-create-file-auto-open nil
;;         neo-show-updir-line nil
;;         neo-mode-line-type nil
;;         neo-smart-open t
;;         neo-persist-show nil
;;         neo-show-hidden-files t
;;         neo-auto-indent-point t
;;         neo-modern-sidebar t
;;         projectile-switch-project-action 'neotree-projectile-action))

;; REPLACE NEOTREE WITH TREEMACS TO UTILIZE PER-FRAME BUFFERS.
(use-package treemacs
  :general
  (general-define-key
   "<f8>" 'treemacs)
  :config
  (setq treemacs-no-png-images t
        treemacs-width 30)
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))

(use-package treemacs-magit
  :after treemacs magit)

(use-package treemacs-projectile
  :after treemacs projectile)

(provide 'ana-navigation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-navigation.el ends here
