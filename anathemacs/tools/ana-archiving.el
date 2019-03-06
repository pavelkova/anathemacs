;;; ana-archiving.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; web archiving
(use-package org-board
  :config
  (hs-leader-def
    "a0" 'org-attach-reveal-in-emacs
    ;; "a3" 'org-board-diff3web-too
    "aa" 'org-board-archive
    ;; "ad" 'org-board-diff
    "aD" 'org-board-delete-all
    "an" 'org-board-new
    "ao" 'org-board-open
    "aR" 'org-board-archive-dry-run
    ;; "ax" 'org-board-run-after-archive-function
    "aX" 'org-board-cancel)
  (setq org-board-capture-file 'user-inbox-file
        org-attach-directory user-download-dir))

(use-package org-web-tools
  :config
  (hs-leader-def
   "ae" 'org-web-tools-insert-web-page-as-entry
   "aE" 'org-web-tools-convert-links-to-page-entries
   ;; "al" 'org-web-tools-insert-link-for-url
   "ar" 'org-web-tools-read-url-as-org
   ))

(use-package org-cliplink
  :config
  (hs-leader-def
   "ac" 'org-cliplink))

;; drag-and-drop support
(use-package org-download
  :config
  (setq-default org-download-image-dir 'user-download-dir)
  (hs-leader-def
    "ay" 'org-download-yank))

(provide 'ana-archiving)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-archiving.el ends here
