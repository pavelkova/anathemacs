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
    "W."        'eyebrowse-mode
    "W-<left>"  'eyebrowse-prev-window-config
    "W-<right>" 'eyebrowse-next-window-config
    "W-<down>"  'eyebrowse-last-window-config
    "Wr"        'eyebrowse-rename-window-config
    "Wc"        'eyebrowse-create-window-config
    "Ww"        'eyebrowse-close-window-config
    "W:"        'eyebrowse-switch-to-window-config))

(use-package persp-mode
  :general
  (ha-leader-def
    "w."          'persp-mode
    "w+"          'persp-add-buffer
    "w-"          'persp-remove-buffer
    "w M-<right>" 'persp-next
    "w M-<left>"  'persp-prev
    "w M-<up>"    'persp-load-state-from-file
    "w M-<down>"  'persp-save-state-to-file
    "w C-<up>"    'persp-load-from-file-by-names
    "w C-<down>"  'persp-save-to-file-by-names
    "wc"          'persp-copy
    "wf"          'persp-frame-switch
    "wI"          'persp-import-win-conf
    "wi"          'persp-import-buffers
    "wK"          'persp-kill
    "wk"          'persp-kill-buffer
    "wr"          'persp-rename
    "wS"          'persp-window-switch
    "ws"          'persp-switch-to-buffer
    "wt"          'persp-temporarily-display-buffer))

;; DESKTOP
(setq desktop-restore-in-current-display nil)
(ha-leader-def
  "ds" 'desktop-save-in-desktop-dir
  "dr" 'desktop-read)

;; FRAMES
(ha-leader-def
  "C-n" 'find-file-other-frame)

(provide 'ana-layout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-layout.el ends here
