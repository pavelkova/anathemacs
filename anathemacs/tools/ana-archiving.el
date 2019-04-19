;;; ana-archiving.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; web archiving
(use-package org-board
  :general
  (hs-leader-def
    "a0" 'org-attach-reveal-in-emacs
    ;; "a3" 'org-board-diff3web-too
    "aa" 'org-board-archive
    ;; "ad" 'org-board-diff
    "aD" 'org-board-delete-all
    "an" 'org-board-new
    "ao" 'org-board-open
    "aR" 'org-board-archive-dry-run
    ;; "ax" 'org-board-run-after-archive-function
    "aX" 'org-board-cancel)
  (setq org-board-capture-file 'user-inbox-file
        org-attach-directory user-download-dir))

(use-package org-cliplink
  :general
  (hs-leader-def
   "ac" 'org-cliplink))

;; drag-and-drop support
(use-package org-download
  :general
  (hs-leader-def
    "ay" 'org-download-yank)
  :config
  (setq-default org-download-image-dir user-download-dir
                org-download-heading-lvl nil))

(use-package org-web-tools
  :general
  (hs-leader-def
   "ae" 'org-web-tools-insert-web-page-as-entry
   "aE" 'org-web-tools-convert-links-to-page-entries
   ;; "al" 'org-web-tools-insert-link-for-url
   "ar" 'org-web-tools-read-url-as-org))

(with-eval-after-load 'org-web-tools
  ;; Modify
  (defun org-web-tools--article-from-url (&optional url)
    (require 'org-web-tools)
    "Edit of org-web-tools function to save full article text from URL with fewer nested headers and added property placeholders."
    ;; By taking an optional URL, and getting it from the clipboard if
    ;; none is given, this becomes suitable for use in an org-capture
    ;; template, like:

    ;; ("wr" "Capture Web site with eww-readable" entry
    ;;  (file "~/org/articles.org")
    ;;  "%(org-web-tools--url-as-readable-org)")
    (-let* ((url (or url (org-web-tools--get-first-url)))
            (html (org-web-tools--get-url url))
            (html (org-web-tools--sanitize-html html))
            ((title . readable) (org-web-tools--eww-readable html))
            (title (org-web-tools--cleanup-title (or title "")))
            (converted (org-web-tools--html-to-org-with-pandoc readable))
            (link (org-make-link-string url title))
            (timestamp (format-time-string (concat "[" (substring (cdr org-time-stamp-formats) 1 -1) "]"))))
      (with-temp-buffer
        (org-mode)
        ;; Insert article text
        (insert converted)
        ;; Demote in-article headings
        ;; MAYBE: Use `org-paste-subtree' instead of demoting headings ourselves.
        (org-web-tools--demote-headings-below 2)
        ;; Insert headings at top
        (goto-char (point-min))
        (insert "* " link " :articulo:" "\n"
                timestamp "\n"
":PROPERTIES:\n
:título: \n
:autor: \n
:publicación: \n
:fecha: \n
:END:")
        (buffer-string))))

  (cl-defun org-web-tools-article-from-url (url &key (show-buffer-fn #'switch-to-buffer))
    "Read URL's readable content in an Org buffer.
     Buffer is displayed using SHOW-BUFFER-FN."
    (interactive (list (org-web-tools--get-first-url)))
    (require 'org-web-tools)
    (let ((entry (org-web-tools--article-from-url url)))
      (when entry
        (funcall show-buffer-fn url)
        (org-mode)
        (insert entry)
        ;; Set buffer title
        (goto-char (point-min))
        (rename-buffer (cdr (org-web-tools--read-org-bracket-link)))))))


(provide 'ana-archiving)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-archiving.el ends here
