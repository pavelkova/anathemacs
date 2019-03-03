;;; ana-version-control.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package browse-at-remote
  :defer t)

(use-package gist
  :defer t
  :config
  ;; (load-file (concat user-secrets-dir "gist.el"))
  (hx-leader-def
    "ggl" 'gist-list    ; Lists your gists in a new buffer
    "ggb" 'gist-buffer  ; Copies gist URL into the kill ring
    "ggB" 'gist-buffer-private
    "ggr" 'gist-region
    "ggR" 'gist-region-private
    "ggp" 'gist-region-or-buffer
    "ggP" 'gist-region-or-buffer-private))

(use-package gitconfig-mode
  :hook magit)

(use-package git-gutter-fringe
  :defer t)

(use-package gitignore-mode
  :hook magit)

;; (use-package gitlab)

(use-package magit
  :config
  (use-package magit-popup)
  (hx-leader-def
    "gs" 'magit-status
    "gF" 'magit-stage-file
    "gm" 'magit-stage-modified
    "gc" 'magit-commit
    "gt" 'magit-worktree))

;; (use-package magithub
;;   :after magit
;;   :config
;;   (magithub-feature-autoinject t)
;;   (setq magithub-clone-default-directory "~/.emacs.d/tmp/"))

(provide 'ana-version-control)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-version-control.el ends here
