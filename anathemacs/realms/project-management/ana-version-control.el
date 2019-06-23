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

;; (use-package gist
;;   :general
;;   ;; (load-file (concat user-secrets-dir "gist.el"))
;;   (ha-leader-def
;;     "ggl" 'gist-list    ; Lists your gists in a new buffer
;;     "ggb" 'gist-buffer  ; Copies gist URL into the kill ring
;;     "ggB" 'gist-buffer-private
;;     "ggr" 'gist-region
;;     "ggR" 'gist-region-private
;;     "ggp" 'gist-region-or-buffer
;;     "ggP" 'gist-region-or-buffer-private))

(use-package gitconfig-mode
  :mode "\\.git/config\\'")

(use-package git-gutter-fringe
  :diminish t
  :init
  (global-git-gutter-mode)
  :config
  (ha-leader-def
    "g." 'git-gutter-mode))

(use-package gitignore-mode
  :mode "\\.gitignore\\'")

(use-package gitlab
  :config
  (load-file (concat user-secrets-dir "gitlab.el")))

(use-package git-timemachine
  :general
  (ha-leader-def
    "gt" 'git-timemachine))

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

;; (use-package magit-annex)

;; (use-package git-annex)

(use-package magithub
  :after magit
  :config
  (magithub-feature-autoinject t))

;; integrate with system pass

(use-package pass)

(require 'auth-source-pass)
(auth-source-pass-enable)
(setq auth-sources '(password-store))


(provide 'ana-version-control)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-version-control.el ends here
