;;; ana-reading.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package nov
  :mode ("\\.epub\\'" . nov-mode))

(use-package linguistic)

(use-package pdf-tools
  :mode ("\\.pdf\\'" . pdf-tools-enable-minor-modes)
  :config
  (pdf-tools-install))

(provide 'ana-reading)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reading.el ends here
