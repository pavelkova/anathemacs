;;; ana-capture.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; SETUP
(hs-leader-def
  "c" 'org-capture)

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
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
%T")
        
      ;;;; APPOINTMENT
        ("c" "cita" entry
         (file+olp+datetree user-cal-file)
         "** △ %^{cita} %? :cita:
SCHEDULED: %T
:PROPERTIES:
:location:
:END:"
         :tree-type month)

      ;;;; EVENT
        ("e" "evento" entry
         (file+olp+datetree user-cal-file)
         "** ☆ %^{evento} %? :evento:
SCHEDULED: %t"
         :tree-type month)

      ;;;; NOTE
        ("n" "nota" entry
         (file+headline user-master-file "braindump")
         "** %^{nota} %? :nota:
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
%T")
        
      ;;;; LINK
        ("l" "enlace" entry
         ((file+headline user-master-file "braindump"))
         "** 👁 %(org-cliplink-capture) :enlace:
:PROPERTIES:
:campo: %^{campo}p
:END:
%T")
        
      ;;;; BOOKMARK
        ("m" "marcador" entry
         (file+headline user-master-file "marcadores")
         "** 📎 %?
%a
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
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
        "* %^{Title} :referencía:
:PROPERTIES
:fuenta: %u, %c
:campo: %^{campo}p
:proyecto:
:END:
%T
#+BEGIN_QUOTE
%i
#+END_QUOTE
%?")
	("L" "protocol link" entry
         (file+headline user-master-file "braindump")
        "* %? [[%:link][%:description]] :enlace:
:PROPERTIES
:archive_date: %U
:campo: %^{campo}p
:proyecto:
:END:
%T")

      ;;---PERSONAL
      ;;;; bullet journal entries
        ("1" "idea" entry
         (file+headline user-master-file "braindump")
         "** 💡 %^{idea} %? :idea:
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
%T")
        ("2" "fantasía" entry
         (file+headline user-master-file "braindump")
         "** ⛅ %^{pipe dream} %? :fantasía:
:PROPERTIES:
:campo: %^{campo}p
:END:
%T")

        ("3" "finanzas" entry
         (file+headline user-master-file "braindump")
         "** ＄ %^{dinero} %? :finanzas:
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
%T")

        ("4" "inspiracion" entry
         (file+headline user-master-file "braindump")
         "** ♥ %^{inspo} %? :inspiración:
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:
%T")

        ("5" "investigar" entry
         (file+headline user-master-file "braindump")
         "** ❔ %^{look up} %? :investigar:
:PROPERTIES:
:campo: %^{campo}p
:proyecto:
:END:")))

(provide 'ana-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-capture.el ends here
