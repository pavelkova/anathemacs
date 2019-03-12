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
(use-package twittering-mode
  :general
  (hs-leader-def
    "mt" 'twittering-mode))

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
