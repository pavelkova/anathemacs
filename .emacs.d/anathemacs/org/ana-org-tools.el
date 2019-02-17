;;; ana-org-tools.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))
;; epub reader & referencer - TODO integrate with bibtex, pdf,kindle clippings
(use-package ereader)

;; web archiving
(use-package org-board)

(use-package org-brain
  :init
  (setq org-brain-path "directory/path/where-i-want-org-brain")
  :config
  (setq org-id-track-globally t)
  (setq org-id-locations-file "~/.emacs.d/.org-id-locations")
  (push '("b" "Brain" plain (function org-brain-goto-end)
          "* %i%?" :empty-lines 1)
        org-capture-templates)
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 12))

(provide 'ana-org-tools)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-tools.el ends here
