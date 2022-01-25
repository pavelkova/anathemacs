;;; ana-version-control.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; EMACS
(setq auto-save-file-name-transforms `((".*" "~/.cache/emacs/auto-saves/" t)))

(setq backup-by-copying t
      backup-directory-alist `((".*" . "~/.cache/emacs/backups/"))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t)

(setq create-lockfiles nil)

;; GIT
;; (use-package browse-at-remote)

(use-package git-modes)

(use-package git-gutter-fringe
  :delight git-gutter-mode
  :init
  (global-git-gutter-mode)
  :config
  (ha-leader-def
    "g." 'git-gutter-mode))

(use-package gitlab
  :config
  (load-file (concat user-secrets-dir "gitlab.el")))

(use-package git-link
  :general
  (ha-leader-def
    "g/" 'git-link))

(use-package git-timemachine
  :general
  (ha-leader-def
    "g?" 'git-timemachine))

(use-package magit
  :general
  (ha-leader-def
    "gs" 'magit-status
    "gc" 'magit-commit
    "gF" 'magit-stage-file
    "gi" 'magit-ignore
    "gm" 'magit-stage-modified
    "gp" 'magit-push
    "gu" 'magit-unstage-file)
  :config
  (use-package magit-popup))

(use-package magithub
  :after magit
  :config
  (magithub-feature-autoinject t))

(use-package magit-todos
  :general
  (ha-leader-def
    "gl" 'magit-todos-list
    "gh" 'helm-magit-todos)
  :config
  (setq magit-todos-fontify-keyword-headers t
        magit-todos-fontify-org nil))

(use-package helm-ls-git
  :general
  (ha-leader-def
    "C-d" 'helm-browse-project))

(provide 'ana-version-control)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-version-control.el ends here
