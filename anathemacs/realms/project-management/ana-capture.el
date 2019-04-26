;;; ana-capture.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; SETUP
(hs-leader-def
  "C" 'org-capture)

;; (add-hook 'org-capture-prepare-finalize-hook 'org-id-get-create)

;; properties
;; (setq org-tempo-keywords-alist '())

;; PACKAGES
(use-package org-chef
  :defer t)

(defun org-journal-find-location ()
  (org-journal-new-entry t)
  (goto-char (point-min)))

;; TEMPLATES
(setq org-capture-templates
      '((
      ;;---BASIC CAPTURES
      ;;;; TODO
         "t" "tarea" entry
         (file+headline user-master-file "braindump")
         "** ○ %^{tarea} %?
SCHEDULED: %t
%T")
        
      ;;;; APPOINTMENT
        ("c" "cita" entry
         (file+olp+datetree user-cal-file)
         "** %^{cita} %? :cita:
:PROPERTIES:
:LOCATION:
:END:
%T"
         :tree-type month)

      ;;;; EVENT
        ("e" "evento" entry
         (file+olp+datetree user-cal-file)
         "** %^{evento} %? :evento:
%t"
         :tree-type month)

      ;;;; NOTE
        ("n" "nota" entry
         (file+headline user-master-file "braindump")
         "** %^{nota} %? :nota:
%T")
        
      ;;;; LINK
        ("l" "enlace" entry
         ((file+headline user-master-file "braindump"))
         "** %(org-cliplink-capture) :recurso:
%T")
        
;;       ;;;; BOOKMARK
        ("m" "marcador" entry
         (file+headline user-master-file "marcadores")
         "** 📎 %? :recurso:
%a
%T")
        
      ;;---THIRD-PARTY PACKAGE CAPTURES
      ;;;; ORG-BRAIN
        ("C" "cerebro" plain
         (function org-brain-goto-end)
         "* %i%?")
        
      ;;;; ORG-CHEF
        ("r" "receta" entry
         (file user-cookbook-file)
         "%(org-chef-get-recipe-from-url)")
        ("R" "receta [manual]" entry
         (file user-cookbook-file)
         "* %^{Recipe title: }
:PROPERTIES:
:source-url:
:servings:
:prep-time:
:cook-time:
:ready-in:
:END:
** Ingredients
%?
** Directions")

      ;;;; ORG-CAPTURE EXTENSION
        ("p" "protocol" entry
         (file+headline user-master-file "braindump")
        "* %^{Title} :recurso:
:PROPERTIES
:fuenta: %u, %c
:END:
%T
#+BEGIN_QUOTE
%i
#+END_QUOTE
%?")
	("L" "protocol link" entry
         (file+headline user-master-file "braindump")
        "* %? [[%:link][%:description]] :recurso:
%T")

      ;;---PERSONAL
      ;;;; bullet journal entries
        ("1" "idea" entry
         (file+headline user-master-file "braindump")
         "** 💡 %^{idea} %?
%T")

        ("2" "finanzas" entry
         (file+headline user-master-file "braindump")
         "** ＄ %^{dinero} %? :finaciero:
%T")

        ("3" "pregunta" entry
         (file+headline user-master-file "braindump")
                  "** ❔ %^{look up} %? :pregunta:
%T")
        ))

(provide 'ana-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-capture.el ends here
