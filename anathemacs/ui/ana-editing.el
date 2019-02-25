;;; ana-editing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

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
  :init
  (setq nlinum-highlight-current-line t
        nlinum-format " %d"))

(use-package nlinum-relative
  :init
  (setq nlinum-relative-current-symbol ""
        nlinum-relative-redisplay-delay 0))

(use-package origami
  :hook prog-mode
  :config
  (hx-leader-def
    "v," 'origami-toggle-node
    "v;" 'origami-recursively-toggle-node
    "v-" 'origami-forward-toggle-node
    "v." 'origami-show-only-node))

(use-package pandoc-mode
  :defer t)

(use-package smartparens
  :config
  (smartparens-global-mode))

(use-package undo-tree
  :config
  (hx-leader-def
    "u" 'undo-tree-visualize))

(provide 'ana-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-editing.el ends here
