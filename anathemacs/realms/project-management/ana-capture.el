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
  (concat org-journal-dir org-journal-file-format))

;; TEMPLATES
(setq org-capture-templates
      '((
      ;;---BASIC CAPTURES
      ;;;; TODO
         "t" "tarea" entry
         (file+headline user-master-file "braindump")
         "** TODO %^{tarea} %?
%T")
      ;;;; NOTE
        ("n" "nota" entry
         (file+headline user-master-file "braindump")
         "** %^{nota} %?
%T")

      ;;;; LINK
        ("l" "enlace" entry
         ((file+headline user-master-file "braindump"))
         "** %(org-cliplink-capture)
%T")
        
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
        ("P" "protocol" entry
         (file+headline user-master-file "braindump")
        "* %^{Title}
:PROPERTIES:
:fuenta: %u, %c
:END:
%T
#+BEGIN_QUOTE
%i
#+END_QUOTE
%?")
	("L" "protocol link" entry
         (file+headline user-master-file "braindump")
        "* %? [[%:link][%:description]]
%T")
        ))
(provide 'ana-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-capture.el ends here
