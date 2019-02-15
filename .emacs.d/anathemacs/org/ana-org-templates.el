;;; ana-templates.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; Capture templates
(setq org-capture-templates
      '(("t" "TAREA" entry
         (file+headline "~/Media/documentos/org/tareas.org"
                        "0.0 everything that rises must converge")
         "** TODO %?\n  %i\n  %a")
        ("e" "EVENTO" entry
         (file user-gcal-file)
         "* %?\n\n%^T\n\n:PROPERTIES:\n\n:END:\n\n")
        ;; ("d" "DIARIO" entry
        ;;  (file+olp+datetree user-journal-dir)
        ;;  "* %?\nEntered on %U\n  %i\n  %a")
        ("b" "MARCADOR" entry
         (file "notas.org")
         "* %?\n%a")))

(provide 'ana-templates)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-templates.el ends here
