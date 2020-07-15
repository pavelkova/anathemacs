;;; ana-planning.el --- Tools for org agenda and tasks

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; TODO keybindings
(with-eval-after-load 'org
  (general-define-key
   "<kp-multiply>"   'org-todo
   "<M-kp-multiply>" 'org-todo-yesterday
   "<C-kp-multiply>" 'org-toggle-checkbox)

  (hs-leader-def
    "t." 'org-todo-list)

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
        '((sequence "TODO(t)" "INPROGRESS(i@)" "POSTPONED(p!)" "|" "DONE(d!)" "CANCELLED(c!)")
          (sequence "APPOINTMENT(a)" "EVENT(e)" "QUESTION(q)" "|" "APPOINTMENT.(A)" "EVENT.(E)" "ANSWERED(Q)"))
        org-hierarchical-todo-statistics nil)

  ;; CHECKLISTS
  (setq org-list-demote-modify-bullet '(("+" . "-")))

  (add-hook 'org-mode-hook (lambda ()
                             "Replace todo keywords and checkboxes with symbols"
                             (push '("TODO"         . "○") prettify-symbols-alist)
                             (push '("INPROGRESS"   . "◑" ) prettify-symbols-alist)
                             (push '("POSTPONED"    . "▶" ) prettify-symbols-alist)
                             (push '("DONE"         . "●" ) prettify-symbols-alist)
                             (push '("CANCELLED"    . "⮿" ) prettify-symbols-alist)
                             (push '("APPOINTMENT"  . "△" ) prettify-symbols-alist)
                             (push '("EVENT"        . "☆" ) prettify-symbols-alist)
                             (push '("QUESTION"     . "❔" ) prettify-symbols-alist)
                             (push '("APPOINTMENT." . "▲" ) prettify-symbols-alist)
                             (push '("EVENT."       . "★" ) prettify-symbols-alist)
                             (push '("ANSWERED"     . "❓" ) prettify-symbols-alist)
                             (push '("[ ]"          . "◻" ) prettify-symbols-alist)
                             (push '("[-]"          . "◪" ) prettify-symbols-alist)
                             (push '("[X]"          . "◼" ) prettify-symbols-alist)
                             (prettify-symbols-mode)))

  (setq org-archive-location (concat user-archive-file "::datetree/")
        org-log-done 'note
        org-log-done-with-time t
        org-log-into-drawer t
        org-log-redeadline t
        org-log-refile t
        org-log-repeat t
        org-log-reschedule t
        org-outline-path-complete-in-steps nil
        org-refile-allow-creating-parent-nodes t
        org-refile-targets '((nil :maxlevel . 10)
                             (org-agenda-files :maxlevel . 10))))

;; KANBAN
(use-package org-kanban
  :general
  (hs-leader-def
    "k" 'org-kanban/initialize))

;; TODOIST INTEGRATION
(use-package todoist
  :mode
  (("\\todoist.org\\'" . todoist-mode))
  :general
  (hs-leader-def
    "C-t" 'todoist)
  :config
  (load-file user-todoist-file)
  ;; (setq todist-token "XXXXXXXXXXXX"
  ;;       todoist-backing-buffer "path/to/file")
  (setq todoist-show-all nil))

;; LEDGER (finances)
(use-package ledger-mode
  :mode ("\\.dat\\'"
         "\\.ledger\\'")
  :custom (ledger-clear-whole-transactions t))

(use-package flycheck-ledger
  :after ledger-mode)

(provide 'ana-planning)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-planning.el ends here
