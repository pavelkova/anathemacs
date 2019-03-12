;;; ana-layout.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package eyebrowse
  :general
  (ha-leader-def
    "w+" 'eyebrowse-mode
    "w<" 'eyebrowse-prev-window-config
    "w>" 'eyebrowse-next-window-config
    "w\-" 'eyebrowse-last-window-config
    "wr" 'eyebrowse-rename-window-config
    "wc" 'eyebrowse-create-window-config
    "wk" 'eyebrowse-close-window-config
    "w:" 'eyebrowse-switch-to-window-config
    "w0" 'eyebrowse-switch-to-window-config-0
    "w1" 'eyebrowse-switch-to-window-config-1
    "w2" 'eyebrowse-switch-to-window-config-2
    "w3" 'eyebrowse-switch-to-window-config-3
    "w4" 'eyebrowse-switch-to-window-config-4
    "w5" 'eyebrowse-switch-to-window-config-5
    "w6" 'eyebrowse-switch-to-window-config-6
    "w7" 'eyebrowse-switch-to-window-config-7
    "w8" 'eyebrowse-switch-to-window-config-8
    "w9" 'eyebrowse-switch-to-window-config-9))

(provide 'ana-layout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-layout.el ends here
