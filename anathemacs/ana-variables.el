;;; ana-variables.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; dotemacs paths
(setq user-dir "~/.emacs.d/user/")

(setq user-logo (concat user-dir "logo.svg"))

(setq user-backups-dir (concat user-dir "backups/"))

(setq user-secrets-dir (concat user-dir "secrets/"))

;; org paths

(setq user-org-dir "~/Media/documentos/org/")

(setq user-archive-file (concat user-org-dir ".archivo.org"))

(setq user-bib-notes-file (concat user-org-dir "investigaciones/notas-de-referencia.org"))

(setq user-bookmarks-file (concat user-org-dir "marcardores.org"))

(setq user-brain-dir (concat user-org-dir ".cerebro/"))

(setq user-cal-file (concat user-org-dir "calendario.org"))

(setq user-caldav-file (concat user-secrets-dir "caldav.el"))

(setq user-cookbook-file (concat user-org-dir "vida/recetas.org"))

(setq user-default-bib-file (concat user-org-dir "investigaciones/referencias.bib"))

;; Contains authentication info for a remote Dokuwiki instance.  Referenced in realms/personal/ana-dokuwiki.el
(setq user-dokuwiki-file (concat user-secrets-dir "dokuwiki.el"))

;; Where org-download should store images and org-web-mode/org-board should save webpages.  Referenced by tools/ana-archiving.el
(setq user-download-dir (concat user-org-dir ".descargas/"))

(setq user-journal-dir (concat user-org-dir "diario/"))

;; Default file for multiple org-capture templates (tasks, bookmarks, links, etc.). Referenced by realms/personal/ana-capture.el
(setq user-master-file (concat user-org-dir "codex.org"))

;; This top-level heading serves as an inbox for everything that needs to be processed or refiled.  Captures are added as level 2 headings beneath it.
(setq user-master-inbox-headline "braindump")

(setq user-pdf-dir (concat user-org-dir "investigaciones/documentos/"))

;; System music folder used by EMMS.  Referenced in realms/personal/ana-media.el
(setq user-music-dir "~/Media/música/")

(provide 'ana-variables)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-variables.el ends here