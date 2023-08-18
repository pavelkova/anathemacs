;;; ana-web.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; archiving web pages
(use-package org-board
  :general
  (hs-leader-def
    "/0" 'org-attach-reveal-in-emacs
    ;; "/3" 'org-board-diff3web-too
    "/a" 'org-board-archive
    ;; "/d" 'org-board-diff
    "/D" 'org-board-delete-all
    "/n" 'org-board-new
    "/o" 'org-board-open
    "/R" 'org-board-archive-dry-run
    ;; "/x" 'org-board-run-after-archive-function
    "/X" 'org-board-cancel)
  :config
  (setq org-board-capture-file 'user-inbox-file
        org-attach-directory user-download-dir))

(use-package org-cliplink
 :general
 (hs-leader-def
   "/c" 'org-cliplink)
 :config
 (setq org-cliplink-max-length 160))

;; drag-and-drop support
(use-package org-download
  :general
  (hs-leader-def
    "/y" 'org-download-yank)
  :config
  (setq org-download-image-dir user-download-dir
        org-download-image-org-width 650
        org-download-heading-lvl nil))

(use-package org-web-tools
  :load-path "anathemacs/lib/org-web-tools"
  :general
  (hs-leader-def
    "/e" 'org-web-tools-insert-web-page-as-entry
    "/E" 'org-web-tools-convert-links-to-page-entries
    ;; "/l" 'org-web-tools-insert-link-for-url
    "/r" 'org-web-tools-read-url-as-org)
  :config
  (setq org-web-tools-pandoc-sleep-time 20.0))

(use-package org-yt
  :load-path "anathemacs/lib/org-yt")


(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
