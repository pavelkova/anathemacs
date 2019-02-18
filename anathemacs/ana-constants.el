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

(defconst user-brain-dir (concat user-org-dir ".brain/"))

(defconst user-cal-file (concat user-org-dir "calendar.org"))

(defconst user-download-image-dir (concat user-org-dir ".images/"))

(defconst user-journal-dir (concat user-org-dir "journal/"))


(provide 'ana-constants)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-constantsel ends here
