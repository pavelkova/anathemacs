;;; ana-planning.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; TODO keywords
(with-eval-after-load 'org
  (general-define-key
   "<kp-multiply>" 'org-todo)
  ;; TODO
  (setq org-todo-keywords
        '((sequence "○(t)" "◑(r@)" "▶(p!)" "|" "●(d!)" "⮿(c!)")
          ;; Todo, paRtially done, postponed | Done, Cancelled
          (sequence "△(a)" "☆(e)" "❔(q)" "|" "▲(A)" "★(E)" "❓(Q)" "💡(i)" "＄(f)" "📎(b)")
          ;; appointment, event, research | appointment, event, research, idea, finance, bookmark
          )
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
                        ("nota")
                        ("pregunta")
                        ("recurso")))
  
  ;; AGENDA
  (hs-leader-def
    "A" 'org-agenda)

  (setq org-log-done 'time
        org-log-into-drawer t
        org-archive-location (concat user-archive-file "::datetree/")
        org-refile-allow-creating-parent-nodes t
        org-outline-path-complete-in-steps nil
        org-refile-targets '((nil :maxlevel . 2)
                             (org-agenda-files :maxlevel . 2)
                             ((concat user-org-dir "investigación/investigación.org" :maxlevel 2)))

        org-agenda-window-setup 'current-window
        org-agenda-files '((concat user-org-dir "codex.org")
                           ;; (concat user-org-dir "investigación/CURRENT_PROJECT_FOLDER/CURRENT_PROJECT.org")
                           ;; (concat user-org-dir "trabajo/trabajo.org")
                           (concat user-org-dir "mobile.org"))
        org-agenda-text-search-extra-files '((directory-files-recursively user-org-dir "org"))
        org-agenda-include-diary t
        org-agenda-include-inactive-timestamps t
        org-agenda-custom-commands
        '(("a" "agenda"
             ((agenda "")))
            ("t" "tareas"
             ((todo "tareas"
                    ((org-agenda-overriding-header "tareas")
                     (org-agenda-sorting-strategy '(priority-down))))))
            ("n" "próximo" agenda ""
             ((org-agenda-entry-types '(:deadline :scheduled :sexp :timestamp))
              ;; (org-agenda-time-grid nil)
              (org-deadline-warning-days 30)
              (org-agenda-overriding-header "próximo")))
            ("p"  "proyectos")
            ("pb" "personalbrand" tags-todo "personalbrand")
            ("pd" "dgar" tags-todo "dgar")
            ("pp" "playsette" tags-todo "playsette"))))

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

(provide 'ana-planning)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
