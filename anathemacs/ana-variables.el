;;; ana-variables.el --- Custom paths used in configuration

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; EMACS configuration paths

(defvar user-dir
  (concat user-emacs-directory "user/")
  "Path to directory containing user secrets files.")

(defvar user-logo
  (concat user-dir "logo.svg")
  "Path to logo used by dashboard.")

(defvar user-backups-dir
  "~/.cache/emacs/backups/"
  "Path to directory in which Emacs should create backup files.")

(defvar user-secrets-dir
  (concat user-dir "secrets/")
  "Path to directory containing user secrets files.")

;; ORG paths

(defvar org-directory
  "~/Media/org/"
  "Base directory for org files.")

(defvar user-archive-file
  (concat org-directory "basement.org"))

(defvar user-bib-notes-file
  (concat org-directory "proyectos/investigación/referencia.org"))

(defvar user-bookmarks-file
      (concat org-directory "marcardores.org"))

(defvar user-brain-dir
  (concat org-directory ".data/cerebro/"))

(defvar user-cal-file
  (concat org-directory "calendario.org"))

(defvar user-cal-inbox-file
  (concat org-directory ".calendario-temp.org"))

(defvar user-caldav-file
  (concat user-secrets-dir "caldav.el"))

(defvar user-cookbook-file
  (concat org-directory "vida/salud/recetas.org"))

(defvar user-default-bib-file
  (concat org-directory "proyectos/investigación/referencia.bib"))

;; Contains authentication info for a remote Dokuwiki instance.  Referenced in realms/personal/ana-dokuwiki.el
(defvar user-dokuwiki-file
  (concat user-secrets-dir "dokuwiki.el"))

;; Where org-download should store images and org-web-mode/org-board should save webpages.  Referenced by tools/ana-archiving.el
(defvar user-download-dir
  (concat org-directory ".data/descargas/"))

(defvar user-journal-dir
  (concat org-directory "vida/diario/"))

;; Default file for multiple org-capture templates (tasks, bookmarks, links, etc.). Referenced by realms/personal/ana-capture.el
(defvar user-master-file
  (concat org-directory "codex.org"))

;; This top-level heading serves as an inbox for everything that needs to be processed or refiled.  Captures are added as level 2 headings beneath it.
(defvar user-master-inbox-headline
  "braindump")

(defvar user-mu4e-file
  (concat user-secrets-dir "mu4e.el"))

;; todoist settings
(defvar user-todoist-file
  (concat user-secrets-dir "todoist.el"))

;; Keep list of agenda files in separate file.  Referenced by realms/project-management/ana-planning.el
;; (setq user-org-agenda-files (concat user-dir "agenda_files"))

(defvar user-pdf-dir
  (concat org-directory "proyectos/investigación/documentos/"))

;; System music folder used by EMMS.  Referenced in realms/personal/ana-media.el
(defvar user-music-dir
  "~/Media/música/")

(provide 'ana-variables)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-variables.el ends here
