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
(defconst user-download-dir (concat user-org-dir ".descargas/"))
(defconst user-inbox-file (concat user-org-dir "codex.org"))
(defconst user-journal-dir (concat user-org-dir "diario/"))
(defconst user-pdf-dir (concat user-org-dir "investigaciones/documentos/"))
(defconst user-tasks-file (concat user-org-dir "tareas.org"))
(defconst user-tasks-inbox-headline "everything that rises must converge")

(provide 'ana-constants)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-constantsel ends here
