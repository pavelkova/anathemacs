;;; ana-visualization.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package gnuplot
  :defer t
  :config
  (hm-leader-def
   :keymaps 'org-mode
   "tp" 'org-plot/gnuplot))

(use-package graphviz-dot-mode
  :mode (("\\.diag\\'"      . graphviz-dot-mode)
           ("\\.blockdiag\\'" . graphviz-dot-mode)
           ("\\.nwdiag\\'"    . graphviz-dot-mode)
           ("\\.rackdiag\\'"  . graphviz-dot-mode)
           ("\\.dot\\'"       . graphviz-dot-mode)
           ("\\.gv\\'"        . graphviz-dot-mode))
  :config
  (hx-leader-def
    :keymaps graphviz-dot-mode-keymaps
    "m=" 'graphviz-dot-indent-graph
    "mc" 'compile))


(provide 'ana-visualization)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-visualization.el ends here
