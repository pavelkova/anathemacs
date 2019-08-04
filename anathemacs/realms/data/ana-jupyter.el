;;; ana-jupyter.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package ein
  :defer t
  :general
  (hd-leader-def
    "j"  '(:ignore t :which-key "jupyter")
    "j+" 'ein:jupyter-server-start
    "jl" 'ein:notebooklist-open
    "jn" 'ein:notebooklist-new-notebook
    "jg" 'ein:notebooklist-open-notebook-global
    "jp" 'ein:notebooklist-login
    "jj" 'ein:junk-new))

;; ELPY config for .dir-locals.el
;; jupyter
;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt"
;;       python-shell-prompt-detect-failure-warning nil)
;; (add-to-list 'python-shell-completion-native-disabled-interpreters
;;              "jupyter")
;; ipython
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "-i --simple-prompt")

(provide 'ana-jupyter)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-jupyter.el ends here
