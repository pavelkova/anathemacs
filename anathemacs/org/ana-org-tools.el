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
  (setq org-brain-path 'user-org-brain-dir)
  :config
  (setq org-id-track-globally t)
  (setq org-id-locations-file (concat user-dir ".org-id-locations"))
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 12))

(use-package org-download
  :config
  (setq-default org-download-image-dir 'user-download-image-dir)
  )

(provide 'ana-org-tools)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-tools.el ends here
