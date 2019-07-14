;;; anathemacs-theme-faces.el --- Modify fonts and sizing here to maintain

;;; Commentary:
;;; Code:

;; FACES: maintain consistency and ease customization across various screen resolutions and font families

;; (setq mono-font  "FiraCode"
;;       sans-font  "Lato"
;;       serif-font "ETBembo")

;; (defface mono-xs '((t :family ,mono-font :height 100)) "xs monospace font")
;; (defface mono-sm '((t :family ,mono-font :height 120)) "sm monospace font")
;; (defface mono-md '((t :family ,mono-font :height 140)) "md monospace font")
;; (defface mono-lg '((t :family ,mono-font :height 160)) "lg monospace font")
;; (defface mono-xl '((t :family ,mono-font :height 180)) "xl monospace font")

;; (defface sans-xs  '((t :family ,sans-font :height 100)) "xs sans serif font")
;; (defface sans-sm  '((t :family ,sans-font :height 120)) "sm sans serif font")
;; (defface sans-md  '((t :family ,sans-font :height 140)) "md sans serif font")
;; (defface sans-lg  '((t :family ,sans-font :height 160)) "lg sans serif font")
;; (defface sans-xl  '((t :family ,sans-font :height 180)) "xl sans serif font")
;; (defface sans-xxl '((t :family ,sans-font :height 290)) "xxl sans serif font")

;; (defface serif-xs  '((t :family ,serif-font :height 150)) "xs serif font")
;; (defface serif-sm  '((t :family ,serif-font :height 170)) "sm serif font")
;; (defface serif-md  '((t :family ,serif-font :height 190)) "md serif font")
;; (defface serif-lg  '((t :family ,serif-font :height 240)) "lg serif font")
;; (defface serif-xl  '((t :family ,serif-font :height 290)) "xl serif font")
;; (defface serif-xxl '((t :family ,serif-font :height 400)) "xxl serif font")

(defface mono-xs '((t :family "FiraCode" :height 120)) "xs monospace font")
(defface mono-sm '((t :family "FiraCode" :height 130)) "sm monospace font")
(defface mono-md '((t :family "FiraCode" :height 140)) "md monospace font")
(defface mono-lg '((t :family "FiraCode" :height 150)) "lg monospace font")
(defface mono-xl '((t :family "FiraCode" :height 160)) "xl monospace font")

(defface sans-xs  '((t :family "Lato" :height 130)) "xs sans serif font")
(defface sans-sm  '((t :family "Lato" :height 150)) "sm sans serif font")
(defface sans-md  '((t :family "Lato" :height 170)) "md sans serif font")
(defface sans-lg  '((t :family "Lato" :height 190)) "lg sans serif font")
(defface sans-xl  '((t :family "Lato" :height 300)) "xl sans serif font")
(defface sans-xxl '((t :family "Lato" :height 320)) "xxl sans serif font")

(defface serif-xs  '((t :family "ETBembo" :height 135)) "xs serif font")
(defface serif-sm  '((t :family "ETBembo" :height 160)) "sm serif font")
(defface serif-md  '((t :family "ETBembo" :height 185)) "md serif font")
(defface serif-lg  '((t :family "ETBembo" :height 235)) "lg serif font")
(defface serif-xl  '((t :family "ETBembo" :height 285)) "xl serif font")
(defface serif-xxl '((t :family "ETBembo" :height 435)) "xxl serif font")

;; macro with variables style (string), font (string), heights (list)
;;;; list SIZES  with size abbrevs
;;;; loop through list of size abbrevs with index
;;;;;;

; '(mono FiraCode (90 110 130 150 170))
; '(mono FiraCode (("xs" . 90) ("sm" . 110)))

;; (defmacro anathemacs-def-face (style font heights)
;;   "STYLE is the type of face, e.g. monospace, serif, sans serif, etc.
;; FONT is the name of the font family, e.g. Hack, Georgia.
;; HEIGHTS is a list of the heights to be used for the various sizes of each face.  Heights must be in ascending order."
;;   (let ((sizes '(xs sm md lg xl xxl))
;;         (dotimes i (length heights)
;;                  `(defface ,(intern (concat style "-" (elt sizes i)))
;;                     '((t (:family ,font :height ,(elt heights i))))
;;                     ,(concat (elt sizes i) " size of " style " face"))))))

;; (let ((anathemacs-faces '((mono FiraCode (90 110 130 150 170))
;;                           (sans Lato (100 120 140 180 290))
;;                           (serif ETBembo (110 130 150 190 400)))))
;;   (loop for anaface in anathemacs-faces
;;         for style = (format "%s" (car anaface))
;;         for font = (format "%s" (cadr anaface))
;;         for heights = (format "%s" (caddr anaface))
;;         do
;;         (eval (macroexpand `(anathemacs-def-face ,style ,font ,heights)))))

;; (let ((letcol-alist '((s . (white black))
;;               (t . (black yellow))
;;               (u . (green pink)))))
;;   (loop for elem in letcol-alist
;;     for l = (format "%s" (car elem))
;;     for back = (format "%s" (cadr elem))
;;     for fore = (format "%s" (caddr elem))
;;     do
;;     (eval (macroexpand `(brian-def-char-face ,l ,back ,fore)))))

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; anathemacs-theme-faces.el ends here
