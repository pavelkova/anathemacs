;;; ana-constants.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; dotemacs paths
(defconst user-dir "~/.emacs.d/user/")

(defconst user-logo (concat user-dir "logo.svg"))

(defconst user-secrets-dir (concat user-dir "secrets/"))

(defconst user-snippets-dir (concat user-dir "snippets/"))

;; org paths

(defconst user-org-dir "~/Media/documentos/org/")
(defconst user-archive-file (concat user-org-dir ".archivo.org"))
(defconst user-bib-notes-file (concat user-org-dir "investigaciones/notas-de-referencia.org"))
(defconst user-bookmarks-file (concat user-org-dir "marcardores.org"))
(defconst user-brain-dir (concat user-org-dir ".cerebro/"))
(defconst user-cal-file (concat user-org-dir "calendario.org"))
(defconst user-caldav-file (concat user-secrets-dir "caldav.el"))
(defconst user-cookbook-file (concat user-org-dir "vida/recetas.org"))
(defconst user-default-bib-file (concat user-org-dir "investigaciones/referencias.bib"))
;; Contains authentication info for a remote Dokuwiki instance.  Referenced in realms/personal/ana-dokuwiki.el
(defconst user-dokuwiki-file (concat user-secrets-dir "dokuwiki.el"))
;; Where org-download should store images and org-web-mode/org-board should save webpages.  Referenced by tools/ana-archiving.el
(defconst user-download-dir (concat user-org-dir ".descargas/"))
(defconst user-journal-dir (concat user-org-dir "diario/"))

;; Default file for multiple org-capture templates (tasks, bookmarks, links, etc.). Referenced by realms/personal/ana-capture.el
(defconst user-master-file (concat user-org-dir "codex.org"))
;; This top-level heading serves as an inbox for everything that needs to be processed or refiled.  Captures are added as level 2 headings beneath it.
(defconst user-master-inbox-headline "braindump")

(defconst user-pdf-dir (concat user-org-dir "investigaciones/documentos/"))

;; for dashboard
(defconst user-current-project-dir "~/.emacs.d/")

;; System music folder used by EMMS.  Referenced in realms/personal/ana-media.el
(defconst user-music-dir "~/Media/música/")

(provide 'ana-constants)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-constantsel ends here
