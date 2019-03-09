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

(use-package multiple-cursors
  :init
  (general-define-key
   "C-<" 'mc/edit-beginnings-of-lines
   "C->" 'mc/edit-ends-of-lines
   "C-M-<mouse-1>" 'mc/add-cursor-on-click))

(use-package nlinum
  :hook prog-mode
  :hook (pdf-mode . (lambda () (nlinum-mode -1)))
  :init
  (setq nlinum-highlight-current-line t
        nlinum-format " %d"))

(use-package nlinum-relative
  :init
  (setq nlinum-relative-current-symbol ""
        nlinum-relative-redisplay-delay 0))

(use-package origami
  ;; :hook prog-mode
  :config
  (hx-leader-def
    "v," 'origami-toggle-node
    "v;" 'origami-recursively-toggle-node
    "v-" 'origami-forward-toggle-node
    "v." 'origami-show-only-node))

(use-package smartparens
  :diminish smartparens-mode
  :config
  (smartparens-global-mode))

(use-package undo-tree
  :config
  (global-undo-tree-mode)
  (setq undo-tree-visualizer-diff t
        undo-tree-visualizer-relative-timestamps t
        undo-tree-auto-save-history t
        undo-tree-history-directory-alist `((".*" . ,(concat user-emacs-directory "auto-save-list"))))
  (hx-leader-def
    "<insert>" 'undo-tree-visualize
    "<left>"   'undo-tree-undo
    "<right>"  'undo-tree-redo
    "<deletechar>" 'undo-tree-visualize-redo))

(provide 'ana-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-editing.el ends here
