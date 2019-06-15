;;; ana-editing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package dash)
(use-package ht)
(use-package s)

(setq display-line-numbers-width-start t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Visibility
(ha-leader-def
  ";." 'hs-minor-mode
  ";]" 'hs-hide-block
  ";[" 'hs-show-block
  ";\-" 'hs-toggle-hiding
  ";a" 'hs-hide-all
  ";A" 'hs-show-all
  ";l" 'display-line-numbers-mode
  ";L" 'global-display-line-numbers-mode)



;; comments
(ha-leader-def
  "c]"  'comment-dwim ;; add to end of line
  "c\-" 'comment-line
  "c["  'comment-or-uncomment-region)

(use-package crux
  :general
  (ha-leader-def
    "."  '(:which-key "crux")
    ".!" 'crux-sudo-edit
    ".@ " 'crux-recompile-init
    ".c" 'crux-copy-file-preserve-attributes
    ".d" 'crux-delete-file-and-buffer
    ".f" 'crux-recentf-find-file
    ".r" 'crux-rename-file-and-buffer
    ".t" 'crux-transpose-windows
    ".x" 'crux-cleanup-buffer-or-region
    ".+" 'crux-duplicate-current-line-or-region
    ".=" 'crux-duplicate-and-comment-current-line-or-region
    ". DEL" 'crux-kill-other-buffers))

(use-package format-all
  :general
  (ha-leader-def
    "F" 'format-all-buffer))

(use-package multiple-cursors
  :general
  (general-define-key
   "C-<" 'mc/edit-beginnings-of-lines
   "C->" 'mc/edit-ends-of-lines
   "C-M-<mouse-1>" 'mc/add-cursor-on-click))

(use-package smartparens
  :diminish smartparens-mode
  :init
  (smartparens-global-mode))

(use-package undo-tree
  :diminish undo-tree-mode
  :init
  (global-undo-tree-mode t)
  :general
  (ha-leader-def
    "<kp-0>" 'undo-tree-visualize
    "<left>"   'undo-tree-undo
    "<right>"  'undo-tree-redo
    "<kp-decimal>" 'undo-tree-visualize-redo)
  :config
  (setq undo-tree-visualizer-diff t
        undo-tree-visualizer-relative-timestamps t
        undo-tree-auto-save-history t
        undo-tree-history-directory-alist `((".*" . "~/.cache/emacs/backups/"))))

(use-package ws-butler
  :diminish t
  :init
  (ws-butler-global-mode))

(provide 'ana-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-editing.el ends here

