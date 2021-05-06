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

(defvar user-org-directory
  "~/Org/"
  "Base directory for org files.")

(setq org-directory user-org-directory)

(defvar user-org-roam-directory user-org-directory
  "Path to directory for org-roam files.")

(defvar user-org-roam-dailies-directory (concat user-org-directory "Diario/")
  "Daily notes--in org-roam-dir + daily/ by default.")

(defvar user-org-roam-index-file "index.org"
  "Index file, relative to org-roam-directory.")

(defvar user-archive-file
  (concat user-org-directory "basement.org"))

(defvar user-bib-notes-file
  (concat user-org-directory "Proyectos/Investigación/referencia.org"))

(defvar user-bookmarks-file
  (concat user-org-directory "marcardores.org"))

(defvar user-cal-file
  (concat user-org-directory "calendario.org"))

(defvar user-cal-inbox-file
  (concat user-org-directory ".calendario-temp.org"))

(defvar user-caldav-file
  (concat user-secrets-dir "caldav.el"))

(defvar user-cookbook-file
  (concat user-org-directory "recetas.org"))

(defvar user-default-bib-file
  (concat user-org-directory "Proyectos/investigación/referencia.bib"))

;; Contains authentication info for a remote Dokuwiki instance.  Referenced in realms/personal/ana-dokuwiki.el
(defvar user-dokuwiki-file
  (concat user-secrets-dir "dokuwiki.el"))

;; Where org-download should store images and org-web-mode/org-board should save webpages.  Referenced by tools/ana-archiving.el
(defvar user-download-dir
  (concat user-org-directory ".data/descargas/"))

;; Default file for multiple org-capture templates (tasks, bookmarks, links, etc.). Referenced by realms/personal/ana-capture.el
(defvar user-master-file
  (concat user-org-directory "codex.org"))

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
  "~/Media/biblioteca/")

(defvar user-noter-notes-dir
  (concat user-org-directory "Proyectos/lectura/notas/"))

(provide 'ana-variables)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-variables.el ends here
