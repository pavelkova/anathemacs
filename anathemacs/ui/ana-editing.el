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

;; comments
(hx-leader-def
  "c]"  'comment-dwim ;; add to end of line
  "c\-" 'comment-line
  "c["  'comment-or-uncomment-region)

(use-package multiple-cursors
  :init
  (general-define-key
   "C-<" 'mc/edit-beginnings-of-lines
   "C->" 'mc/edit-ends-of-lines
   "C-M-<mouse-1>" 'mc/add-cursor-on-click))

(use-package nlinum
  ;; :hook prog-mode
  :hook (pdf-mode . (lambda () (nlinum-mode -1)))
  :config
  (setq nlinum-highlight-current-line t
        nlinum-format " %d"))

;; (use-package nlinum-relative
;;   :config
;;   (setq nlinum-relative-current-symbol ""
;;         nlinum-relative-redisplay-delay 0))

(use-package origami
  :general
  (hx-leader-def
    "v," 'origami-toggle-node
    "v;" 'origami-recursively-toggle-node
    "v-" 'origami-forward-toggle-node
    "v." 'origami-show-only-node))

(use-package smartparens
  :diminish t
  :demand t
  :config
  (smartparens-global-mode))

(use-package undo-tree
  :general
  (hx-leader-def
    "<insert>" 'undo-tree-visualize
    "<left>"   'undo-tree-undo
    "<right>"  'undo-tree-redo
    "<deletechar>" 'undo-tree-visualize-redo)
  :config
  (global-undo-tree-mode)
  (setq undo-tree-visualizer-diff t
        undo-tree-visualizer-relative-timestamps t
        undo-tree-auto-save-history t
        undo-tree-history-directory-alist `((".*" "~/.cache/emacs/backups/"))))

(provide 'ana-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-editing.el ends here
