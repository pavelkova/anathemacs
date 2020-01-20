;;; ana-visualization.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package gnuplot
  :defer t
  :config
  (hs-leader-def
   :keymaps 'org-mode
   "dp" 'org-plot/gnuplot))

(use-package graphviz-dot-mode
  :mode (("\\.diag\\'"      . graphviz-dot-mode)
           ("\\.blockdiag\\'" . graphviz-dot-mode)
           ("\\.nwdiag\\'"    . graphviz-dot-mode)
           ("\\.rackdiag\\'"  . graphviz-dot-mode)
           ("\\.dot\\'"       . graphviz-dot-mode)
           ("\\.gv\\'"        . graphviz-dot-mode))
  :config
  (hs-leader-def
    ; :keymaps graphviz-dot-mode-keymap
    "d=" 'graphviz-dot-indent-graph
    "dc" 'compile))

(provide 'ana-visualization)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-visualization.el ends here
