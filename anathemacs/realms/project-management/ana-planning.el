;;; ana-planning.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; TODO keybindings
(with-eval-after-load 'org
  (general-define-key
   "<kp-multiply>" 'org-todo
   "<C-kp-multiply>" 'org-toggle-checkbox)

 (hs-leader-def
   ".t" 'org-todo-list)

   ;; FILING
  (hs-leader-def
    "f+" 'org-agenda-file-to-front
    "f-" 'org-remove-file
    "fa" 'org-archive-subtree-default
    "fc" 'org-copy
    "fL" 'org-refile-goto-last-stored
    "fr" 'org-refile)

  ;; TODO keywords
  (setq org-todo-keywords
        '((sequence "○(t)" "◑(r@)" "▶(p!)" "|" "●(d!)" "⮿(c!)")
          ;; Todo, paRtially done, postponed | Done, Cancelled
          ;; (sequence "△(a)" "☆(e)" "❔(q)" "|" "▲(A)" "★(E)" "❓(Q)" "💡(i)" "＄(f)" "📎(b)")
          ;; appointment, event, research | appointment, event, research, idea, finance, bookmark
          ;; (sequence "△(a)" "☆(e)" "❔(q)" "|" "▲(A)" "★(E)" "❓(Q)")
          )
        ;; org-list-demote-modify-bullet '(("+" . "-"))
        org-hierarchical-todo-statistics nil
        org-tag-alist '((:startgrouptag)
                        ("campo")
                        (:grouptags)
                        ("aprendizaje")
                        ("desarrollo")
                        ("escritura")
                        ("investigaciones")
                        ("trabajo")
                        ("vida")
                        (:endgrouptag)
                        (:startgrouptag)
                        ("escritura")
                        (:grouptags)
                        ("devblog")
                        ("carta")
                        ("diario")
                        ("ensayo")
                        ("ficciones")
                        (:endgrouptag)
                        (:startgrouptag)
                        ("vida")
                        (:grouptags)
                        ("edificación")
                        ("limpieza")
                        ("organización")
                        ("salud")
                        ("vanidad")
                        (:endgrouptag)
                        ("financiera")
                        ("idea")
                        ("media")
                        ;; ("nota")
                        ("pregunta")
                        ("recurso")))



  (setq org-archive-location (concat user-archive-file "::datetree/")
        org-log-done 'time
        org-log-into-drawer t
        org-outline-path-complete-in-steps nil
        org-refile-allow-creating-parent-nodes t
        org-refile-targets '((nil :maxlevel . 4)
                             (org-agenda-files :maxlevel . 4))))

;; BRAIN - mindmapping with org trees
(use-package org-brain
  :general
  (hs-leader-def
    "BA"  'org-brain-agenda
    "B.c" 'org-brain-add-child-headline
    "B.f" 'org-brain-add-friendship
    "B.p" 'org-brain-add-parent
    "B,c" 'org-brain-remove-child
    "B,f" 'org-brain-remove-friendship
    "B,p" 'org-brain-remove-parent
    "Bg"  'org-brain-goto
    "B/c" 'org-brain-goto-child
    "B/f" 'org-brain-goto-friendship
    "B/p" 'org-brain-goto-parent
    "B/e" 'org-brain-goto-end
    "B/o" 'org-brain-goto-current
    "B/w" 'org-brain-goto-other-window
    "Bp"  'org-brain-pin
    "Br"  'org-brain-refile
    "Bv"  'org-brain-visualize)
  :config
  (setq org-brain-path user-brain-dir
        org-id-track-globally t
        org-id-locations-file (concat user-dir ".org-id-locations")
        org-brain-visualize-default-choices 'all
        org-brain-title-max-length 12))

;; KANBAN
(use-package org-kanban
  :general
  (hs-leader-def
    "k" 'org-kanban/initialize))

(provide 'ana-planning)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
