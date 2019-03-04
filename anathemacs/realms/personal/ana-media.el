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
;; (use-package twittering-mode)

(use-package md4rd
  :defer t
  :config
  (setq md4rd-subs-active '(news politics emacs linux femalefashionadvice sorceryofthespectacle askhistorians historyofideas)))

;; music
(use-package libmpdee)

(use-package mingus
  :after libmpdee)

(provide 'ana-media)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-media.el ends here
