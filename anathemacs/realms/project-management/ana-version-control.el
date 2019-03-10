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
      backup-directory-alist `((".*" "~/.cache/emacs/backups/"))
      delete-old-versions t
      kept-old-versions 2
      kept-new-versions 4
      version-control t)

(setq create-lockfiles nil)
      
;; GIT
;; (use-package browse-at-remote)

(use-package gist
  :general
  ;; (load-file (concat user-secrets-dir "gist.el"))
  (hx-leader-def
    "ggl" 'gist-list    ; Lists your gists in a new buffer
    "ggb" 'gist-buffer  ; Copies gist URL into the kill ring
    "ggB" 'gist-buffer-private
    "ggr" 'gist-region
    "ggR" 'gist-region-private
    "ggp" 'gist-region-or-buffer
    "ggP" 'gist-region-or-buffer-private))

;; (use-package gitconfig-mode)

(use-package git-gutter-fringe
  :general
  (hx-leader-def
    "g." 'git-gutter-mode))

(use-package gitignore-mode
  :mode "\\.gitignore\\'")

;; (use-package gitlab)

(use-package magit
  :general
  (hx-leader-def
    "gs" 'magit-status
    "gc" 'magit-commit
    "gF" 'magit-stage-file
    "gm" 'magit-stage-modified
    "gp" 'magit-push)
  :config
  (use-package magit-popup))

;; (use-package magithub
;;   :after magit
;;   :config
;;   (magithub-feature-autoinject t))

(provide 'ana-version-control)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-version-control.el ends here
