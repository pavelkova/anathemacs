;;; ana-reading.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package calibredb
  :general
  (hs-leader-def
   "C-c f" 'calibredb-find-helm
   "C-c l" 'calibredb-list)
  :config
  (setq calibredb-root-dir "~/Sync/Biblioteca"
        calibre-db-dir (expand-file-name "metadata.db" calibredb-root-dir)
        ;; sql-sqlite-program "/usr/bin/sqlite3"
        ;; calibredb-program "/usr/bin/calibredb"
        calibre-db-format-all-the-icons t))

(use-package linguistic)

(use-package nov
  :mode ("\\.epub\\'" . nov-mode))

(use-package org-books
  :init
  (push '(("b" "Add book to reading list manually" entry '(file+head user-reading-list-file "Libros")
         "** TOREAD %^{TITLE}
:PROPERTIES:
:CREATED: %U
:AUTHOR: %^{AUTHOR}p
:FILE:
:NOTES:
:GOODREADS:
:END:\n%?"
         :empty-lines 1)
        ("B" "Add log note to book on reading list" item (function org-books-visit-book-log)
         "- %U %?" :prepend t))
        org-capture-templates)
  :config
  (setq org-books-file 'user-reading-list-file))

(use-package pdf-tools
  :mode ("\\.pdf\\'" . pdf-tools-enable-minor-modes)
  :config
  (pdf-tools-install)
  ;; :general
  ;; (:keymaps 'pdf-view-mode-map
  ;;           ("d" 'pdf-annot-delete))
  )

(use-package pocket-reader)

(provide 'ana-reading)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reading.el ends here
