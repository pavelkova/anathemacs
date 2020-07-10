;;; ana-reading.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package calibredb
  :general
  (hr-leader-def
   "cs" 'calibredb-find-helm
   "cl" 'calibredb-list)
  :config
  (setq sql-sqlite-program "/usr/bin/sqlite3"
        calibredb-root-dir "~/Media/biblioteca"
        calibre-db-dir (expand-file-name "metadata.db" calibredb-root-dir)
        calibredb-program "/usr/bin/calibredb"
        calibre-db-format-all-the-icons t)
  )
(use-package nov
  :mode ("\\.epub\\'" . nov-mode))

(use-package linguistic)

(use-package pdf-tools
  :mode ("\\.pdf\\'" . pdf-tools-enable-minor-modes)
  :config
  (pdf-tools-install))

(use-package wiki-summary
  :general
  (hs-leader-def
    "r?" 'wiki-summary))

(provide 'ana-reading)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reading.el ends here
