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
  :config
  (hs-leader-def
    "w0" 'org-attach-reveal-in-emacs
    "w3" 'org-board-diff3
    "wa" 'org-board-archive
    "wd" 'org-board-diff
    "wD" 'org-board-delete-all
    "wn" 'org-board-new
    "wo" 'org-board-open
    "wR" 'org-board-archive-dry-run
    "wx" 'org-board-run-after-archive-function
    "wX" 'org-board-cancel)
  (setq org-board-capture-file 'user-inbox-file))

(use-package org-web-tools
  :config
  (hs-leader-def
   "we" 'org-web-tools-insert-web-page-as-entry
   "wE" 'org-web-tools-convert-links-to-page-entries
   "wl" 'org-web-tools-insert-link-for-url
   "wr" 'org-web-tools-read-url-as-org
   ))

(use-package org-cliplink
  :config
  (hs-leader-def
   "wc" 'org-cliplink))

;; drag-and-drop support
(use-package org-download
  :config
  (setq-default org-download-image-dir 'user-download-dir))

(provide 'ana-archiving)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-archiving.el ends here
