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
         (file+headline user-master-file "braindump")
         "** □ %?\n  %i\n  %a\n:ADDED: %t\n")
        ("l" "LINK" entry
         ((file+headline user-master-file user-master-inbox-headline))
         "** □ %(org-cliplink-capture) \n :ADDED: %t\n"
         :empty-lines 1)
        ("e" "EVENT" entry
         (file user-cal-file)
         "** %?\n%^T\n:PROPERTIES:\n:LOCATION:\n:END:\n")
        ("j" "DIARY" entry
         (function org-journal-find-location)
         "* %(format-time-string org-journal-time-format)%^{Title}\n%i%?")
        ("b" "BOOKMARK" entry
         (file user-master-file)
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

(hs-leader-def
  "c" 'org-capture)

;; properties
(custom-set-variables '(org-global-properties
                        '(("realm" .
                           ("creatividad"
                            "desarrollo"
                            "escritura")))))

(provide 'ana-filing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-filing.el ends here
