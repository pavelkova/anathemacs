;;; ana-archiving.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; web archiving
(use-package org-board
  :init
  (hx-leader-def
    "ob" 'org-board-keymap)
  (setq org-board-capture-file 'user-inbox-file))

(use-package org-web-tools)

(use-package org-cliplink)

;; drag-and-drop support
(use-package org-download
  :config
  (setq-default org-download-image-dir 'user-download-dir))

(provide 'ana-archiving)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-archiving.el ends here
