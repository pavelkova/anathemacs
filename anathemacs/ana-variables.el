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

(setq user-backups-dir "~/.cache/emacs/backups/")

(setq user-secrets-dir (concat user-dir "secrets/"))

;; org paths

(setq org-directory "~/Media/documentos/org/") ;; this is used by org-mode

(setq user-archive-file (concat org-directory "basement.org"))

(setq user-bib-notes-file (concat org-directory "investigaciones/notas-de-referencia.org"))

(setq user-bookmarks-file (concat org-directory "marcardores.org"))

(setq user-brain-dir (concat org-directory ".cerebro/"))

(setq user-cal-file (concat org-directory "calendario.org"))

(setq user-caldav-file (concat user-secrets-dir "caldav.el"))

(setq user-cookbook-file (concat org-directory "vida/salud/recetas.org"))

(setq user-default-bib-file (concat org-directory "investigación/referencias.bib"))

;; Contains authentication info for a remote Dokuwiki instance.  Referenced in realms/personal/ana-dokuwiki.el
(setq user-dokuwiki-file (concat user-secrets-dir "dokuwiki.el"))

;; Where org-download should store images and org-web-mode/org-board should save webpages.  Referenced by tools/ana-archiving.el
(setq user-download-dir (concat org-directory ".descargas/"))

(setq user-journal-dir (concat org-directory "escritura/diario/"))

;; Default file for multiple org-capture templates (tasks, bookmarks, links, etc.). Referenced by realms/personal/ana-capture.el
(setq user-master-file (concat org-directory "codex.org"))

;; This top-level heading serves as an inbox for everything that needs to be processed or refiled.  Captures are added as level 2 headings beneath it.
(setq user-master-inbox-headline "braindump")

(setq user-mu4e-file (concat user-secrets-dir "mu4e.el"))

;; Keep list of agenda files in separate file.  Referenced by realms/project-management/ana-planning.el
;; (setq user-org-agenda-files (concat user-dir "agenda_files"))

(setq user-pdf-dir (concat org-directory "investigación/documentos/"))

;; System music folder used by EMMS.  Referenced in realms/personal/ana-media.el
(setq user-music-dir "~/Media/música/")

(provide 'ana-variables)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-variables.el ends here
