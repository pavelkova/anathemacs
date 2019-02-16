;;; ana-editing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

;; functions



(use-package multiple-cursors
  :init
  (general-define-key
   "C->" 'mc/edit-beginnings-of-lines
   "C-<" 'mc/edit-ends-of-lines
   "C-M-<mouse-1>" 'mc/add-cursor-on-click))

(use-package smartparens)

(use-package undo-tree
  :config
  (hx-leader-def
   "u" 'undo-tree-visualize))

(provide 'ana-editing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-editingel ends here
