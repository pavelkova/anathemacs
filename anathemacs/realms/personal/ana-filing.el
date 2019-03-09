;;; ana-filing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package org-brain
  :init
  (setq org-brain-path 'user-org-brain-dir)
  (hs-leader-def
    "oB" 'org-brain-visualize)
  :config
  (setq org-id-track-globally t)
  (setq org-id-locations-file (concat user-dir ".org-id-locations"))
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 12))

(use-package org-chef)

(setq org-capture-templates
      '((
      ;;---BASIC CAPTURES
      ;;;; TODO
         "t" "TODO" entry
         (file+headline user-master-file "braindump")
         "** □ %^{todo} %?
:PROPERTIES:
:ADDED: %T
:realm:
:project:
:END:")
        
      ;;;; APPOINTMENT
        ("a" "APPOINTMENT" entry
         (file+olp+datetree user-cal-file)
         ;; ▲
         ;; %(all-the-icons-octicon \"triangle-up\" :face 'all-the-icons-lpink)
         "** %^{appointment} %? :appointment:
:PROPERTIES:
:SCHEDULED: %T
:END:"
         :time-prompt t
         :tree-type week)

      ;;;; EVENT
        ("E" "EVENT" entry
         (file+olp+datetree user-cal-file)
         ;; ⛥
         ;; %(all-the-icons-material \"star\" :face 'all-the-icons-lpink)
         "** %^{event} %? :event:
:PROPERTIES:
:SCHEDULED: %t
:END:"
         :time-prompt t
         :tree-type week)

      ;;;; NOTE
        ("N" "NOTE" entry
         (file+headline user-master-file "braindump")
         ;;  ▪
         ;; %(all-the-icons-material \"speaker_notes\" :face 'all-the-icons-lpink)
         "** %^{note} %? :note:
:PROPERTIES:
:ADDED: %T
:END:")
        
      ;;;; LINK
        ("l" "LINK" entry
         ((file+headline user-master-file "braindump"))
         "** %(org-cliplink-capture)
:PROPERTIES:
:ADDED: %T
:END:")
        
      ;;;; BOOKMARK
        ("b" "BOOKMARK" entry
         (file+headline user-master-file "marcadores")
         "** %?
%a")
        
      ;;---THIRD-PARTY PACKAGE CAPTURES
      ;;;; ORG-JOURNAL
        ("j" "DIARY" entry
         (function org-journal-find-location)
         "* %(format-time-string org-journal-time-format)%^{Title}\n%i%?")

      ;;;; ORG-BRAIN
        ("B" "BRAIN" plain
         (function org-brain-goto-end)
         "* %i%?")
        
      ;;;; ORG-CHEF
        ("r" "RECIPE" entry
         (file user-cookbook-file)
         "%(org-chef-get-recipe-from-url)")
        ("R" "RECIPE [manual]" entry
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
;; :ADDED: %T
;; :END:")
        
;;         ("I" "IMPORTANT" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-faicon \"exclamation\" :face 'all-the-icons-lpink)
;;          "** ❗ %^{big deal} %? :important:
;; :PROPERTIES:
;; :ADDED: %T
;; :END:")

;;         ("F" "FANTASY" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"cloud_queue\" :face 'all-the-icons-lpink)
;;          "** ⛅ %^{pipe dream} %?
;; :PROPERTIES:
;; :ADDED: %T
;; :END:")

;;         ("f" "FINANCE" entry
;; orgmode/comments/aeaq9d/anyone_using_org_mode_as_snippet_manager/         (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"attach_money\" :face 'all-the-icons-lpink)
;;          "** ＄ %^{dinero} %? :finance:
;; :PROPERTIES:
;; :ADDED: %T
;; :END:")

;;         ("P" "INSPIRATION" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-material \"favorite\" :face 'all-the-icons-lpink)
;;          "** ♥ %^{inspo} %? :inspiration:
;; :PROPERTIES:
;; :ADDED: %T
;; :END:")

;;         ("A" "ACCOMPLISHMENT" entry
;;          (file+olp+datetree user-cal-file)
;;          ;; %(all-the-icons-faicon \"check\" :face 'all-the-icons-lpink)
;;          "** ✓ %^{milestone} %? :accomplishment:
;; :PROPERTIES:
;; :ADDED: %T
;; :END:"
;;          :time-prompt t
;;          :tree-type week)

;;         ("S" "RESEARCH" entry
;;          (file+headline user-master-file "braindump")
;;          ;; %(all-the-icons-faicon \"question\" :face 'all-the-icons-lpink)
;;          "** ❓ %^{look up} %? :research:
;; :PROPERTIES:
;; :ADDED: %T
;; :END:")
        ))

(hs-leader-def
  "c" 'org-capture)

;; properties
(setq org-tempo-keywords-alist '())

(provide 'ana-filing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-filing.el ends here
