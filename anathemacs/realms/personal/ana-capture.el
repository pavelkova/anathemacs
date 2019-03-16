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

(add-hook 'org-capture-prepare-finalize-hook 'org-id-get-create)

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
         "** □ %^{tarea} %?
SCHEDULED: %t
:PROPERTIES:
:CREATED: %T
:realm:
:project:
:END:")
        
      ;;;; APPOINTMENT
        ("c" "cita" entry
         (file+olp+datetree user-cal-file)
         "** ▲ %^{cita} %? :appointment:
SCHEDULED: %T
:PROPERTIES:
:location:
:END:"
         :tree-type month)

      ;;;; EVENT
        ("e" "evento" entry
         (file+olp+datetree user-cal-file)
         "** ⛥ %^{evento} %? :event:
SCHEDULED: %t"
         :tree-type month)

      ;;;; NOTE
        ("n" "nota" entry
         (file+headline user-master-file "braindump")
         "** %^{nota} %? :note:
:PROPERTIES:
:CREATED: %T
:realm:
:END:")
        
      ;;;; LINK
        ("l" "enlace" entry
         ((file+headline user-master-file "braindump"))
         "** %(org-cliplink-capture) :website:
:PROPERTIES:
:CREATED: %T
:realm: %?
:END:")
        
      ;;;; BOOKMARK
        ("m" "marcador" entry
         (file+headline user-master-file "marcadores")
         "** %?
%a
:PROPERTIES:
:CREATED: %T
:realm:
:project:
:END:")
        
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

      ;;---PERSONAL
      ;;;; 
;;         ("i" "IDEA" entry ;; 🗲
;;          (file+headline user-master-file "braindump")
;;          "** %(all-the-icons-faicon \"lightbulb-o\" :face 'all-the-icons-lpink) %^{idea} %?
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")
        
;;         ("I" "IMPORTANT" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-faicon \"exclamation\" :face 'all-the-icons-lpink)
;;          "** ❗ %^{big deal} %? :important:
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")

;;         ("F" "FANTASY" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"cloud_queue\" :face 'all-the-icons-lpink)
;;          "** ⛅ %^{pipe dream} %?
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")

;;         ("f" "FINANCE" entry
;; orgmode/comments/aeaq9d/anyone_using_org_mode_as_snippet_manager/         (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"attach_money\" :face 'all-the-icons-lpink)
;;          "** ＄ %^{dinero} %? :finance:
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")

;;         ("P" "INSPIRATION" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"favorite\" :face 'all-the-icons-lpink)
;;          "** ♥ %^{inspo} %? :inspiration:
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")

;;         ("A" "ACCOMPLISHMENT" entry
;;          (file+olp+datetree user-cal-file)
;;          ;; %(all-the-icons-faicon \"check\" :face 'all-the-icons-lpink)
;;          "** ✓ %^{milestone} %? :accomplishment:
;; :PROPERTIES:
;; :CREATED: %T
;; :END:"
;;          :time-prompt t
;;          :tree-type week)

;;         ("S" "RESEARCH" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-faicon \"question\" :face 'all-the-icons-lpink)
;;          "** ❓ %^{look up} %? :research:
;; :PROPERTIES:
;; :CREATED: %T
;; :END:")
        ))

(provide 'ana-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-capture.el ends here
