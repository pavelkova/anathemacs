;;; ana-markdown.el --- Package configurations for working with Markdown.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package markdown-mode
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package markdown-preview-mode)

(use-package markdown-toc)

(defun markdown-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Markdown")))

(add-hook 'markdown-mode-hook 'markdown-doc)

(provide 'ana-markdown)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-markdown.el ends here
