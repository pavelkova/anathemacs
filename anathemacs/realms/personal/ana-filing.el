;;; ana-filing.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; Capture templates
(setq org-capture-templates
      '(("t" "TASK" entry
         (file+headline user-tasks-file
                        user-tasks-inbox-headline)
         "** □ %?\n  %i\n  %a")
        ("l" "LINK" entry
         ((file+headline user-tasks-file
                         user-tasks-inbox-headline))
         "* □ %(org-cliplink-capture) \n SCHEDULED: %t\n"
         :empty-lines 1)
        ("e" "EVENT" entry
         (file user-cal-file)
         "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")
        ("d" "DIARY" entry
         (file+olp+datetree user-journal-dir)
         "* %?\nEntered on %U\n  %i\n  %a")
        ("b" "BOOKMARK" entry
         (file user-bookmarks-file)
         "* %?\n%a")
        ("B" "BRAIN" plain (function org-brain-goto-end)
         "* %i%?"
         :empty-lines 1)
        ("r" "RECIPE" entry
         (file user-cookbook-file)
         "%(org-chef-get-recipe-from-url)"
         :empty-lines 1)
        ("R" "RECIPE [manual]" entry
         (file user-cookbook-file)
         "* %^{Recipe title: }\n  :PROPERTIES:\n  :source-url:\n  :servings:\n  :prep-time:\n  :cook-time:\n  :ready-in:\n  :END:\n** Ingredients\n   %?\n** Directions\n\n")))

(hx-leader-def
  "oc" 'org-capture)

(provide 'ana-filing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-filing.el ends here
