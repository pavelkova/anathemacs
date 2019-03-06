;;; ana-dokuwiki.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package dokuwiki
  :config
  (load-file user-dokuwiki-file)
  (hs-leader-def
    "D+" 'dokuwiki-login
    "Dl" 'dokuwiki-list-pages
    "Do" 'dokuwiki-open-page
    "Ds" 'dokuwiki-save-page))

(use-package dokuwiki-mode
  :hook dokuwiki)

(use-package outline-magic)

(provide 'ana-dokuwiki)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-dokuwiki.el ends here
