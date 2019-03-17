;;; ana-media.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; email
(require 'notmuch)

;; social media

;; twitter
(use-package twittering-mode
  :general
  (hs-leader-def
    "mt" 'twit)
  :config
  (setq twittering-timeline-header "twittering \n\n"
        twittering-use-icon-storage t
        twittering-icon-storage-file "~/.emacs.d/user/.twittering-mode-icons.gz"
        twittering-fill-column 80)
  (general-define-key
   :keymaps 'twittering-mode-map
   "e" 'eww)) ;; open link at cursor with eww

;; reddit
(use-package md4rd
  :general
  (hs-leader-def
    "mr" 'md4rd)
  :config
  (setq md4rd-subs-active '(news politics emacs linux femalefashionadvice sorceryofthespectacle askhistorians historyofideas)))

;; music
(use-package emms
  :general
  (hs-leader-def
    "mb" 'emms-browser)
  :config
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory user-music-dir)
  (setq emms-playlist-buffer-name "*música*")
  (setq emms-info-asynchronously t)
 ;; (require 'emms-info-libtag)
 ;; (setq emms-info-functions '(emms-info-libtag))
  (require 'emms-mode-line)
  (emms-mode-line 1)
  (require 'emms-playing-time)
  (emms-playing-time 1))

(provide 'ana-media)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-media.el ends here
