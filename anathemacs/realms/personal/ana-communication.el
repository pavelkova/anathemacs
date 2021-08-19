;;; ana-communication.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; email
(require 'mu4e)
(require 'mu4e-context)
(require 'smtpmail)

(load-file user-mu4e-file) ;; where contexts are defined

(setq mu4e-completing-read-function 'ivy-completing-read
      mu4e-compose-signature-auto-include nil
      mu4e-attachment-dir "~/Downloads"
      mu4e-get-mail-command "mbsync -aV"
      mu4e-headers-include-related t
      mu4e-headers-skip-duplicates t
      mu4e-hide-index-messages t
      mu4e-maildir "~/.local/mail"
      mu4e-mu-version "1.6.3"
      mu4e-update-interval 300
      mu4e-use-fancy-chars t
      mail-user-agent 'mu4e-user-agent
      mu4e-view-prefer-html t
      mu4e-view-show-addresses t
      mu4e-view-show-images t
      mu4e-split-view 'horizontal
      smtpmail-debug-info t
      smtpmail-send-mail-function 'smtpmail-send-it)

(hs-leader-def
  "m" 'mu4e)

(use-package mu4e-alert
  :init
  (mu4e-alert-enable-notifications)
  (mu4e-alert-enable-mode-line-display)
  :config
  (setq mu4e-alert-set-default-style 'libnotify))

(use-package mu4e-conversation
  :after mu4e
  :config
  (global-mu4e-conversation-mode))

(use-package mu4e-overview
  :after mu4e)

(use-package mu4e-views)

(use-package helm-mu
  :after (helm mu4e))

(use-package all-the-icons-gnus
  :config
  (all-the-icons-gnus-setup))

(provide 'ana-communication)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-communication.el ends here
