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


(provide 'ana-visualization)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-visualization.el ends here
