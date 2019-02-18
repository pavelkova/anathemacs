;;; ana-org-templates.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package org-chef)

;; Capture templates
(setq org-capture-templates
      '(("t" "TASK" entry
         (file+headline (concat user-org-dir "tasks.org")
                        "Inbox")
         "** TODO %?\n  %i\n  %a")
        ("e" "EVENT" entry
         (file user-cal-file)
         "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")
        ("d" "DIARY" entry
         (file+olp+datetree user-journal-dir)
         "* %?\nEntered on %U\n  %i\n  %a")
        ("b" "BOOKMARK" entry
         (file "bookmarks.org")
         "* %?\n%a")
        ("b" "BRAIN" plain (function org-brain-goto-end)
          "* %i%?" :empty-lines 1)
        ("r" "RECIPE" entry
         (file 'user-cookbook-file)
         "%(org-chef-get-recipe-from-url)"
         :empty-lines 1)
        ("R" "RECIPE [manual]" entry
         (file 'user-cookbook-file)
         "* %^{Recipe title: }\n  :PROPERTIES:\n  :source-url:\n  :servings:\n  :prep-time:\n  :cook-time:\n  :ready-in:\n  :END:\n** Ingredients\n   %?\n** Directions\n\n")))

;; (use-package org-journal
;;   :config
;;   (setq org-journal-dir user-journal-dir
;;         org-journal-enable-agenda-integration t
;;         org-extend-today-until "7:00"
;;         org-journal-date-format "%d %B %Y [%A]"
;;         org-journal-file-format "%Y-%m-%d.org"))

(provide 'ana-org-templates)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-templates.el ends here
