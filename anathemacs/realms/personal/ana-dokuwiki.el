;;; ana-dokuwiki.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(defun load-dokuwiki-secrets ()
  "Prevent file loading from slowing startup time."
  (load-file user-dokuwiki-file)
  (interactive)
  (dokuwiki-login))

(use-package dokuwiki
  :general
  (hs-leader-def
    "C-d =" 'load-dokuwiki-secrets
    "C-d l" 'dokuwiki-list-pages
    "C-d o" 'dokuwiki-open-page
    "C-d s" 'dokuwiki-save-page))

(use-package dokuwiki-mode
  :mode "\\.doku\\'")

(use-package outline-magic
  :hook dokuwiki-mode)

(provide 'ana-dokuwiki)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-dokuwiki.el ends here
