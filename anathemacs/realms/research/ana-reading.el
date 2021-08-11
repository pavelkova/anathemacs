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
  (setq calibredb-root-dir "~/Biblioteca"
        calibre-db-dir (expand-file-name "metadata.db" calibredb-root-dir)
        ;; sql-sqlite-program "/usr/bin/sqlite3"
        ;; calibredb-program "/usr/bin/calibredb"
        calibre-db-format-all-the-icons t))

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
