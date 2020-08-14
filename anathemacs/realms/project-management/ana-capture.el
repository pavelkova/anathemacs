;;; ana-capture.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; SETUP

;; properties
;; (setq org-tempo-keywords-alist '())

(defun org-journal-find-location ()
  ;; Open today's journal, but specify a non-nil prefix argument in order to
  ;; inhibit inserting the heading; org-capture will insert the heading.
  (org-journal-new-entry t)
  ;; Position point on the journal's top-level heading so that org-capture
  ;; will add the new entry as a child entry.
  (goto-char (point-min)))

;; TEMPLATES
(setq org-capture-templates
      '((
      ;;---BASIC CAPTURES
      ;;;; TODO
         "t" "tarea" entry (function org-journal-find-location)
         "** TODO %^{tarea} %?
%U")
      ;;;; NOTE
        ("n" "nota" entry (function org-journal-find-location)
         "** %^{nota} %?
%U")

      ;;;; LINK
        ("l" "enlace" entry (function org-journal-find-location)
         "** %(org-cliplink-capture)
%U")
        
      ;;;; APPOINTMENT
        ("c" "cita" entry
         (file+olp+datetree user-cal-file)
         "** APPOINTMENT %^{cita} %?
:PROPERTIES:
:LOCATION:
:END:
%T"
         :tree-type month
         :time-prompt t)

      ;;;; EVENT
        ("e" "evento" entry
         (file+olp+datetree user-cal-file)
         "** EVENT %^{evento} %?
%t"
         :tree-type month
         :time-prompt t)

;;;;; ----- SPECIAL EVENTS
        ("v" "jvc")
      ;;;; JVC primary advocate shift
        ("va" "jvc primary victim advocate shift" entry
         (file+olp+datetree user-cal-file)
         "** EVENT A-Primary Victim Advocate
:PROPERTIES:
:LOCATION: Julie Valentine - ON CALL
:END:
<%<%Y-%m-%d %a 18:00>>--<%<%Y-%m-%d %a 06:00>>"
         :tree-type month
         :time-prompt t)

      ;;;; JVC backup advocate shift
        ("vb" "jvc backup victim advocate shift" entry
         (file+olp+datetree user-cal-file)
         "** EVENT B-BACKUP Victim Advocate
:PROPERTIES:
:LOCATION: Julie Valentine - ON CALL
:END:
<%<%Y-%m-%d %a 18:00>>--<%<%Y-%m-%d %a 06:00>>"
         :tree-type month
         :time-prompt t)

      ;;;; ORG-CAPTURE EXTENSION
        ("P" "protocol" entry (function org-journal-find-location)
        "** %^{Title}
:PROPERTIES:
:fuenta: %u, %c
:END:
%U
#+BEGIN_QUOTE
%i
#+END_QUOTE
%?")
	("L" "protocol link" entry (function org-journal-find-location)
        "* %? [[%:link][%:description]]
%T")
        ))
(provide 'ana-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-capture.el ends here
