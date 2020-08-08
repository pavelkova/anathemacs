;;; anathemacs-theme.el --- Dark theme to go with the anathemacs emacs config.

;;; Commentary:
;;; Code:

;; THEME

(deftheme anathemacs)

(load-file (concat user-emacs-directory "anathemacs-theme-faces.el"))
(load-file (concat user-emacs-directory "anathemacs-theme-colors.el"))

(let ((class '((class color) (min-colors 89)))
      ;; background
      (bg-1          ana-bg-1)
      ;; alt background
      (bg-2          ana-bg-2)
      (cblk-bg       ana-bg-2)
      (ttip-bg       ana-bg-2)
      (comment-bg    ana-bg-2)
      ;; text
      (fg-1          ana-base-1)
      ;; dim text
      (fg-2          ana-base-dim)
      (head1         ana-base-dim)
      (ttip          ana-base-dim)
      (cblk          ana-base-dim)
      ;; dimmer text
      (base-2        ana-base-2)
      (act1          ana-base-2)
      (act2          ana-base-2)
      (str           ana-base-2)
      ;; red
      (red-1         ana-red-1)
      (cursor        ana-red-1)
      (err           ana-red-1)
      ;; lt red
      (red-2         ana-red-2)
      (var           ana-red-2)
      (war           ana-red-2)
      ;; green
      (green-1       ana-green-1)
      (lnum          ana-green-1)
      (cblk-ln       ana-green-1)
      ;; lt green
      (green-2       ana-green-2)
      (suc           ana-green-2)
      (highlight-dim ana-green-2)
      ;; blue
      (blue-1        ana-blue-1)
      (func          ana-blue-1)
      ;; lt blue
      (blue-2        ana-blue-2)
      (ttip-sl       ana-blue-2)
      (comment       ana-blue-2)
      ;; yellow
      (yellow-1      ana-yellow-1)
      (const         ana-yellow-1)
      ;; lt yellow
      (yellow-2      ana-yellow-2)
      (border        ana-yellow-2)
      (highlight     ana-yellow-2)
      ;; magenta
      (magenta-1     ana-magenta-1)
      (meta          ana-magenta-1)
      ;; lt magenta
      (magenta-2     ana-magenta-2)
      (type          ana-magenta-2)
      (comp          ana-magenta-2)
      ;; cyan
      (cyan-1        ana-cyan-1)
      (mat           ana-cyan-1)
      ;; lt cyan
      (cyan-2        ana-cyan-2)
      (keyword       ana-cyan-2))



  (custom-theme-set-faces
   `anathemacs

;;;;; basics
   `(cursor                   ((t :background ,cursor)))
   `(custom-button            ((t :background ,bg-2 :foreground ,fg-1 :box (:line-width 2 :style released-button))))
   `(default                  ((t :inherit mono-md :background ,bg-1 :foreground ,fg-1)))
   `(default-italic           ((t :inherit default :slant italic)))
   `(error                    ((t :foreground ,err)))
   `(eval-sexp-fu-flash       ((t :background ,suc :foreground ,bg-1)))
   `(eval-sexp-fu-flash-error ((t :background ,err :foreground ,bg-1)))
   `(fixed-pitch              ((t :inherit mono-md)))
   `(fringe                   ((t :background ,bg-1 :foreground ,fg-1)))
   `(header-line              ((t :background nil :inherit nil)))
   `(highlight                ((t :foreground ,bg-1 :background ,highlight)))
   `(hl-line                  ((t :background ,bg-2)))
   `(italic                   ((t :slant italic)))
   `(isearch                  ((t :background ,mat :foreground ,bg-1)))
   `(lazy-highlight           ((t :background ,highlight-dim :foreground ,bg-1 :weight normal)))
   `(link                     ((t :foreground ,keyword :underline t)))
   `(link-visited             ((t :foreground ,comp :underline t)))
   `(match                    ((t :background ,highlight-dim :foreground ,bg-1)))
   `(minibuffer-prompt        ((t :foreground ,const :weight bold)))
   `(page-break-lines         ((t :background ,bg-2 :foreground ,bg-2)))
   `(region                   ((t :background ,highlight :foreground ,bg-1)))
   `(secondary-selection      ((t :background ,bg-2)))
   `(shadow                   ((t :foreground ,fg-2)))
   `(success                  ((t :foreground ,suc)))
   `(tooltip                  ((t :background ,ttip-sl :foreground ,fg-1 :bold nil :italic nil :underline nil)))
   `(variable-pitch           ((t :inherit serif-md)))
   `(vertical-border          ((t :foreground ,border)))
   `(warning                  ((t :foreground ,war)))

   ;; font locks
   `(font-lock-builtin-face        ((t :foreground ,keyword)))
   `(font-lock-comment-face        ((t :foreground ,comment)))
   `(font-lock-constant-face       ((t :foreground ,const)))
   `(font-lock-doc-face            ((t :foreground ,comment)))
   `(font-lock-function-name-face  ((t :foreground ,func :weight bold)))
   `(font-lock-keyword-face        ((t :foreground ,type :background nil)))
   `(font-lock-negation-char-face  ((t :foreground ,const)))
   `(font-lock-preprocessor-face   ((t :foreground ,type)))
   `(font-lock-reference-face      ((t :foreground ,const)))
   `(font-lock-string-face         ((t :foreground ,str)))
   `(font-lock-type-face           ((t :foreground ,type :weight bold)))
   `(font-lock-variable-name-face  ((t :foreground ,var)))
   `(font-lock-warning-face        ((t :foreground ,war :background ,bg-1)))

;;;;; ahs
   `(ahs-face                      ((t :background ,highlight)))
   `(ahs-plugin-whole-buffer-face  ((t :background ,mat :foreground ,bg-1)))

;;;;; anzu-mode
   `(anzu-mode-line ((t :inherit bold :foreground ,yellow-1)))

;;;;; auto-complete
   `(ac-completion-face ((t :background ,ttip-bg :foreground ,ttip)))

;;;;; avy
   `(avy-lead-face   ((t :background ,blue-2 :foreground ,red-1)))
   `(avy-lead-face-0 ((t :background ,blue-2 :foreground ,blue-1)))
   `(avy-lead-face-1 ((t :background ,blue-2 :foreground ,red-1)))
   `(avy-lead-face-2 ((t :background ,blue-2 :foreground ,blue-1)))

;;;;; calfw
   `(cfw:face-title              ((t :inerit mono-lg :foreground ,fg-2 :weight bold)))
   `(cfw:face-header             ((t :foreground ,fg-2 :weight bold)))
   `(cfw:face-saturday           ((t :background nil :foreground ,fg-2 :weight bold)))
   `(cfw:face-sunday             ((t :inherit cfw:face-saturday)))
   `(cfw:face-holiday            ((t :background nil :foreground ,var)))
   `(cfw:face-grid               ((t :foreground ,border)))
   `(cfw:face-default-content    ((t :foreground ,fg-1)))
   `(cfw:face-periods            ((t :foreground ,fg-2)))
   `(cfw:face-day-title          ((t :background ,comment-bg)))
   `(cfw:face-default-day        ((t :inherit cfw:face-day-title :weight bold)))
   `(cfw:face-annotation         ((t :inherit cfw:face-day-title :foreground ,fg-2)))
   `(cfw:face-disable            ((t :inherit cfw:face-day-title :foreground ,comment)))
   `(cfw:face-today-title        ((t :background ,keyword :weight bold)))
   `(cfw:face-today              ((t :background ,highlight :weight bold)))
   `(cfw:face-select             ((t :background ,highlight)))
   `(cfw:face-toolbar            ((t :background nil :foreground ,comment)))
   `(cfw:face-toolbar-button-off ((t :foreground ,highlight :weight bold)))
   `(cfw:face-toolbar-button-on  ((t :foreground ,highlight :weight bold)))

;;;;; cider
   `(cider-enlightened         ((t :background nil :foreground ,yellow-1 :box (:color ,yellow-1 :line-width -1 :style nil))))
   `(cider-enlightened-local   ((t :foreground ,yellow-1)))
   `(cider-instrumented-face   ((t :background nil :box (:color ,red-2 :line-width -1 :style nil) :foreground ,red-2)))
   `(cider-result-overlay-face ((t :background nil :box (:color ,blue-1 :line-width -1 :style nil) :foreground ,blue-1)))
   `(cider-test-error-face     ((t :background ,war :foreground ,bg-1)))
   `(cider-test-failure-face   ((t :background ,err :foreground ,bg-1)))
   `(cider-test-success-face   ((t :background ,suc :foreground ,bg-1)))
   `(cider-traced-face         ((t :box (:color ,yellow-1 :line-width -1 :style nil))))

;;;;; company
   `(company-echo-common              ((t :background ,bg-1 :foreground ,fg-1)))
   `(company-preview                  ((t :background ,ttip-bg :foreground ,ttip)))
   `(company-preview-common           ((t :background ,ttip-bg :foreground ,fg-2)))
   `(company-preview-search           ((t :inherit match)))
   `(company-scrollbar-bg             ((t :background ,bg-2)))
   `(company-scrollbar-fg             ((t :background ,act2)))
   `(company-template-field           ((t :inherit region)))
   `(company-tooltip                  ((t :background ,ttip-bg :foreground ,ttip)))
   `(company-tooltip-annotation       ((t :foreground ,comment)))
   `(company-tooltip-common           ((t :background ,ttip-bg :foreground ,fg-2)))
   `(company-tooltip-common-selection ((t :foreground ,func)))
   `(company-tooltip-mouse            ((t :inherit highlight)))
   `(company-tooltip-search           ((t :inherit match)))
   `(company-tooltip-selection        ((t :background ,ttip-sl :foreground ,fg-1)))

;;;;; counsel
   `(counsel-mark-ring-highlight    ((t :inherit ivy-current-match)))
   `(counsel-active-mode            ((t :foreground ,suc)))
   `(counsel-application-name       ((t :foreground ,func)))
   `(counsel-key-binding            ((t :inherit mono-xs :foreground ,keyword)))
   `(counsel-variable-documentation ((t :inherit mono-xs :foreground ,ttip)))
   `(counsel-outline-1              ((t :inherit counsel-outline-default :weight bold)))
   `(counsel-outline-2              ((t :inherit counsel-outline-default)))
   `(counsel-outline-3              ((t :inherit counsel-outline-default)))
   `(counsel-outline-4              ((t :inherit counsel-outline-default)))
   `(counsel-outline-5              ((t :inherit counsel-outline-default)))
   `(counsel-outline-6              ((t :inherit counsel-outline-default)))
   `(counsel-outline-7              ((t :inherit counsel-outline-default)))
   `(counsel-outline-8              ((t :inherit counsel-outline-default)))

;;;;; dashboard
   `(dashboard-banner-logo-title     ((t :inherit sans-md :weight normal)))
   ;; `(dashboard-text-banner-face    ((t :inherit nil)))
   `(dashboard-heading                ((t :inherit sans-xl :foreground ,func :weight light)))
   `(widget-button                    ((t :inherit mono-xs)))



;;;;; diff
   `(diff-added             ((t :background nil :foreground ,green-1)))
   `(diff-changed           ((t :background nil :foreground ,keyword)))
   `(diff-header            ((t :background ,cblk-bg :foreground ,func)))
   `(diff-file-header       ((t :background ,cblk-bg :foreground ,cblk)))
   `(diff-indicator-added   ((t :background nil :foreground ,green-1)))
   `(diff-indicator-changed ((t :background nil :foreground ,keyword)))
   `(diff-indicator-removed ((t :background nil :foreground ,red-2)))
   `(diff-refine-added      ((t :background ,green-1 :foreground ,bg-2)))
   `(diff-refine-changed    ((t :background ,keyword :foreground ,bg-2)))
   `(diff-refine-removed    ((t :background ,red-2 :foreground ,bg-2)))
   `(diff-removed           ((t :background nil :foreground ,red-2)))

;;;;; diff-hl
   `(diff-hl-change ((t :background ,blue-2 :foreground ,blue-1)))
   `(diff-hl-delete ((t :background ,magenta-2 :foreground ,red-2)))
   `(diff-hl-insert ((t :background ,green-2 :foreground ,green-1)))

;;;;; dired-2
   `(dired-directory  ((t :inherit bold :background ,bg-1 :foreground ,keyword)))
   `(dired-flagged    ((t :foreground ,red-2)))
   `(dired-header     ((t :foreground ,comp :weoght bold)))
   `(dired-ignored    ((t :inherit shadow)))
   `(dired-mark       ((t :inherit dired-header)))
   `(dired-marked     ((t :inherit bold :foreground ,red-1)))
   `(dired-perm-write ((t :foreground ,fg-1 :underline t)))
   `(dired-symlink    ((t :background ,bg-1 :foreground ,yellow-1 :weight bold)))
   `(dired-warning    ((t :foreground ,war)))

;;;;; display-line-numbers-mode
   `(line-number              ((t :inherit mono-xs :background nil :foreground ,lnum)))
   `(line-number-current-line ((t :inherit mono-xs :background ,bg-2 :foreground ,lnum)))

;;;;;; doom-neotree
   `(doom-neotree-data-file-face   ((t :inherit sans-xs :foreground ,keyword)))
   `(doom-neotree-dir-face         ((t :inherit sans-xs :weight normal)))
   `(doom-neotree-file-face        ((t :inherit sans-xs)))
   `(doom-neotree-hidden-file-face ((t :inherit sans-xs :foreground ,act2)))
   `(doom-neotree-media-file-face  ((t :inherit sans-xs :foreground ,highlight-dim)))
   `(doom-neotree-text-file-face   ((t :inherit sans-xs)))

;;;;; ediff
   `(ediff-current-diff-A        ((t :background ,fg-2 :foreground ,red-2)))
   `(ediff-current-diff-Ancestor ((t :background ,magenta-2 :foreground ,magenta-1)))
   `(ediff-current-diff-B        ((t :background ,green-2 :foreground ,green-1)))
   `(ediff-current-diff-C        ((t :background ,blue-2 :foreground ,blue-1)))
   `(ediff-even-diff-A           ((t :background ,bg-2)))
   `(ediff-even-diff-Ancestor    ((t :background ,bg-2)))
   `(ediff-even-diff-B           ((t :background ,bg-2)))
   `(ediff-even-diff-C           ((t :background ,bg-2)))
   `(ediff-fine-diff-A           ((t :background nil :weight bold)))
   `(ediff-fine-diff-Ancestor    ((t :background nil :weight bold)))
   `(ediff-fine-diff-B           ((t :background nil :weight bold)))
   `(ediff-fine-diff-C           ((t :background nil :weight bold)))
   `(ediff-odd-diff-A            ((t :background ,bg-2)))
   `(ediff-odd-diff-Ancestor     ((t :background ,bg-2)))
   `(ediff-odd-diff-B            ((t :background ,bg-2)))
   `(ediff-odd-diff-C            ((t :background ,bg-2)))

;;;;; ein
   `(ein:cell-input-area           ((t :background ,bg-2)))
   `(ein:cell-input-prompt         ((t :foreground ,suc)))
   `(ein:cell-output-prompt        ((t :foreground ,err)))
   `(ein:notification-tab-normal   ((t :foreground ,keyword)))
   `(ein:notification-tab-selected ((t :foreground ,suc :weight bold)))

;;;;; eldoc
   `(eldoc-highlight-function-argument ((t :inherit bold :foreground ,mat)))

;;;;; enh-ruby
   `(enh-ruby-op-face               ((t :background ,bg-1 :foreground ,fg-1)))
   `(enh-ruby-string-delimiter-face ((t :foreground ,str)))

;;;;; erc
   `(erc-input-face        ((t :foreground ,func)))
   `(erc-my-nick-face      ((t :foreground ,keyword)))
   `(erc-nick-default-face ((t :foreground ,keyword)))
   `(erc-nick-prefix-face  ((t :foreground ,yellow-1)))
   `(erc-notice-face       ((t :foreground ,str)))
   `(erc-prompt-face       ((t :foreground ,mat :weight bold)))
   `(erc-timestamp-face    ((t :foreground ,keyword)))

;;;;; eshell
   `(eshell-ls-archive     ((t :foreground ,red-2 :weight bold)))
   `(eshell-ls-backup      ((t :inherit font-lock-comment-face)))
   `(eshell-ls-clutter     ((t :inherit font-lock-comment-face)))
   `(eshell-ls-directory   ((t :foreground ,keyword :weight bold)))
   `(eshell-ls-executable  ((t :foreground ,suc :weight bold)))
   `(eshell-ls-missing     ((t :inherit font-lock-warning-face)))
   `(eshell-ls-product     ((t :inherit font-lock-doc-face)))
   `(eshell-ls-special     ((t :foreground ,yellow-1 :weight bold)))
   `(eshell-ls-symlink     ((t :inherit eshell-ls-special)))
   `(eshell-ls-unreadable  ((t :foreground ,fg-1)))
   `(eshell-prompt         ((t :inherit eshell-ls-directory)))


;;;;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,err)))
      (,class (:foreground ,fg-1 :background ,err :weight bold :underline t))))
   `(flycheck-error-list-checker-name ((t :foreground ,keyword)))
   `(flycheck-fringe-error ((t :foreground ,err :weight bold)))
   `(flycheck-fringe-info ((t :foreground ,keyword :weight bold)))
   `(flycheck-fringe-warning ((t :foreground ,war :weight bold)))
   `(flycheck-info
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,keyword)))
      (,class (:foreground ,fg-1 :background ,keyword :weight bold :underline t))))
   `(flycheck-warning
     ((,(append '((supports :underline (:style line))) class)
       (:underline (:style line :color ,war)))
      (,class (:foreground ,fg-1 :background ,war :weight bold :underline t))))

;;;;; flymake
   `(flymake-error          ((t :underline (:style wave :color ,err))))
   `(flymake-note           ((t :underline (:style line :color ,comment))))
   `(flymake-warning        ((t :underline (:style wave :color ,war))))

;;;;; git-gutter
   `(git-gutter:added       ((t :foreground ,suc :weight bold)))
   `(git-gutter:deleted     ((t :foreground ,err :weight bold)))
   `(git-gutter:modified    ((t :foreground ,war :weight bold)))

;;;;; git-gutter-fr
   `(git-gutter-fr:added    ((t :inherit git-gutter:added)))
   `(git-gutter-fr:deleted  ((t :inherit git-gutter:deleted)))
   `(git-gutter-fr:modified ((t :inherit git-gutter:modified)))

;;;;; git-timemachine
   `(git-timemachine-minibuffer-detail-face ((t :background ,blue-2 :foreground ,blue-1 :weight bold)))

;;;;; gnus
   `(gnus-emphasis-highlight-words ((t :background ,suc :foreground ,bg-1)))
   `(gnus-header-content           ((t :foreground ,keyword)))
   `(gnus-header-from              ((t :foreground ,var)))
   `(gnus-header-name              ((t :foreground ,comp)))
   `(gnus-header-subject           ((t :inherit bold :foreground ,func)))
   `(gnus-summary-cancelled        ((t :background ,war :foreground ,bg-1)))

;;;;; guide-key
   `(guide-key/highlight-command-face ((t :foreground ,fg-1)))
   `(guide-key/key-face               ((t :foreground ,keyword)))
   `(guide-key/prefix-command-face    ((t :inherit guide-key/key-face :weight bold)))

;;;;; helm
   `(helm-bookmark-directory          ((t :inherit helm-ff-directory :weight bold)))
   `(helm-bookmark-file               ((t :foreground ,fg-1)))
   `(helm-bookmark-gnus               ((t :foreground ,comp)))
   `(helm-bookmark-info               ((t :inherit helm-bookmark-gnus)))
   `(helm-bookmark-man                ((t :inherit helm-bookmark-gnus)))
   `(helm-bookmark-w3m                ((t :inherit helm-bookmark-gnus)))
   `(helm-buffer-directory            ((t :inherit helm-ff-directory)))
   `(helm-buffer-file                 ((t :inherit helm-ff-file)))
   `(helm-buffer-not-saved            ((t :inherit helm-buffer-file :foreground ,war)))
   `(helm-buffer-process              ((t :inherit helm-buffer-file :foreground ,keyword)))
   `(helm-buffer-saved-out            ((t :inherit helm-buffer-file)))
   `(helm-buffer-size                 ((t :inherit helm-buffer-file)))
   `(helm-candidate-number            ((t :inherit helm-ff-directory)))
   `(helm-ff-directory                ((t :inherit treemacs-directory-face)))
   `(helm-ff-dotted-directory         ((t :inherit helm-ff-directory :foreground ,comment)))
   `(helm-ff-dotted-symlink-directory ((t :inherit helm-ff-symlink)))
   `(helm-ff-executable               ((t :background ,bg-1 :foreground ,suc :weight normal)))
   `(helm-ff-file                     ((t :inherit treemacs-file-face)))
   `(helm-ff-file-extension           ((t :inherit helm-ff-file :foreground ,fg-2)))
   `(helm-ff-invalid-symlink          ((t :inherit helm-ff-file :foreground ,err)))
   `(helm-ff-prefix                   ((t :inherit helm-ff-file :background ,keyword :foreground ,bg-1)))
   `(helm-ff-symlink                  ((t :inherit helm-ff-file :foreground ,fg-2)))
   `(helm-grep-cmd-line               ((t :inherit helm-buffer-file)))
   `(helm-grep-file                   ((t :inherit helm-buffer-file)))
   `(helm-grep-finish                 ((t :inherit helm-buffer-file)))
   `(helm-grep-lineno                 ((t :inherit helm-buffer-file :foreground ,lnum)))
   `(helm-grep-match                  ((t :inherit helm-match)))
   `(helm-header                      ((t :inherit sans-sm :foreground ,comment :underline nil :box nil)))
   `(helm-header-line-left-margin     ((t :foreground ,keyword :background nil)))
   `(helm-match                       ((t :background ,bg-2 :foreground ,head1)))
   `(helm-match-item                  ((t :inherit helm-match)))
   `(helm-moccur-buffer               ((t :background ,bg-1 :foreground ,var)))
   `(helm-m-x-key                     ((t :inherit counsel-key-binding :foreground ,comp)))
   `(helm-selection                   ((t :background ,highlight :foreground ,bg-1)))
   `(helm-selection-line              ((t :background ,highlight)))
   `(helm-separator                   ((t :background ,bg-1 :foreground ,comp)))
   `(helm-source-header               ((t :inherit sans-md :foreground ,highlight)))
   `(helm-time-zone-current           ((t :inherit helm-buffer-process)))
   `(helm-time-zone-home              ((t :background ,bg-1 :foreground ,comp)))
   `(helm-visible-mark                ((t :background ,bg-2 :foreground ,keyword)))

;;;;; helm-swoop
   `(helm-swoop-target-line-face       ((t :background ,highlight :foreground ,bg-1)))
   `(helm-swoop-target-line-block-face ((t :inherit helm-swoop-target-line-face)))
   `(helm-swoop-target-word-face       ((t :background ,highlight-dim :foreground ,bg-1)))

;;;;; highlights
   `(hi-green  ((t :foreground ,bg-2 :background ,green-2)))
   `(hi-yellow ((t :foreground ,bg-2 :background ,yellow-2)))

;;;;; highlight-indentation
   `(highlight-indentation-face ((t :background ,comment-bg)))

;;;;; highlight-symbol
   `(highlight-symbol-face ((t :background ,bg-2)))

;;;;; hydra
   `(hydra-face-blue       ((t :foreground ,blue-1)))
   `(hydra-face-red        ((t :foreground ,red-2)))

;;;;; ibuffer
   `(ibuffer-filter-group-name-face ((t :inherit nil)))

;;;;; ido
   `(ido-first-match         ((t :foreground ,comp :weight bold)))
   `(ido-only-match          ((t :foreground ,mat :weight bold)))
   `(ido-subdir              ((t :foreground ,keyword)))
   `(ido-vertical-match-face ((t :foreground ,comp :underline nil)))

;;;;; info
   `(info-header-xref    ((t :foreground ,func :underline t)))
   `(info-menu           ((t :foreground ,suc)))
   `(info-node           ((t :foreground ,func :weight bold)))
   `(info-quoted-name    ((t :foreground ,keyword)))
   `(info-reference-item ((t :background nil :underline t :weiight bold)))
   `(info-string         ((t :foreground ,str)))
   `(info-title-1        ((t :inherit mono-xl :weight bold)))
   `(info-title-2        ((t :inherit mono-lg :weight bold)))
   `(info-title-3        ((t :inherit mono-lg)))
   `(info-title-4        ((t :inherit mono-md)))

;;;;; ivy
   `(ivy-current-match              ((t :foreground ,bg-1 :background ,highlight)))
   `(ivy-grep-info                  ((t :foreground ,comment)))
   `(ivy-grep-line-number           ((t :foreground ,func)))
   `(ivy-highlight-face             ((t :inherit ivy-current-match)))
   `(ivy-match-required-face        ((t :foreground ,err :weight bold)))
   `(ivy-minibuffer-match-highlight ((t :inherit ivy-current-match)))
   `(ivy-minibuffer-match-face-1    ((t)))
   `(ivy-minibuffer-match-face-2    ((t :inherit ivy-minibuffer-match-face-1 :foreground ,head1 :underline t)))
   `(ivy-minibuffer-match-face-3    ((t :inherit ivy-minibuffer-match-face-2)))
   `(ivy-minibuffer-match-face-4    ((t :inherit ivy-minibuffer-match-face-2)))
   `(ivy-modified-buffer            ((t :foreground ,war)))
   `(ivy-modified-outside-buffer    ((t :foreground ,err)))
   `(ivy-org                        ((t :foreground ,fg-2)))
   `(ivy-remote                     ((t :foreground ,yellow-1)))
   `(ivy-separator                  ((t :weight bold)))
   `(ivy-subdir                     ((t :weight bold)))
   `(ivy-virtual                    ((t :foreground ,comment)))
   `(ivy-yanked-word                ((t :inherit ivy-current-match)))

;;;;; latex
   `(font-latex-bold-face                ((t :foreground ,comp)))
   `(font-latex-italic-face              ((t :foreground ,keyword :italic t)))
   `(font-latex-match-reference-keywords ((t :foreground ,const)))
   `(font-latex-match-variable-keywords  ((t :foreground ,var)))
   `(font-latex-sectioning-0-face        ((t :foreground ,head1 :weight bold)))
   `(font-latex-sectioning-1-face        ((t :inherit font-latex-sectioning-0-face)))
   `(font-latex-sectioning-2-face        ((t :inherit font-latex-sectioning-0-face)))
   `(font-latex-sectioning-3-face        ((t :inherit font-latex-sectioning-0-face)))
   `(font-latex-sectioning-4-face        ((t :foreground ,head1 :weight normal)))
   `(font-latex-sectioning-5-face        ((t :foreground ,head1 :weight normal)))
   `(font-latex-string-face              ((t :foreground ,str)))
   `(font-latex-warning-face             ((t :foreground ,war)))

;;;;; linum-mode
   `(linum                       ((t :inherit line-number)))
   `(linum-relative-current-face ((t :inherit line-number-current-line)))

   ;; display line numbers

;;;;; magit
   `(magit-blame-culprit               ((t :background ,bg-2 :foreground ,yellow-1)))
   `(magit-blame-date                  ((t :background ,bg-2 :foreground ,green-1)))
   `(magit-blame-hash                  ((t :background ,bg-2 :foreground ,func)))
   `(magit-blame-header                ((t :background ,bg-2 :foreground ,green-1)))
   `(magit-blame-heading               ((t :background ,bg-2 :foreground ,green-1)))
   `(magit-blame-name                  ((t :background ,bg-2 :foreground ,yellow-1)))
   `(magit-blame-sha1                  ((t :background ,bg-2 :foreground ,func)))
   `(magit-blame-subject               ((t :background ,bg-2 :foreground ,yellow-1)))
   `(magit-blame-summary               ((t :background ,bg-2 :foreground ,yellow-1)))
   `(magit-blame-time                  ((t :background ,bg-2 :foreground ,green-1)))
   `(magit-branch                      ((t :foreground ,const :weight bold)))
   `(magit-branch-current              ((t :background ,blue-2 :foreground ,blue-1 :weight bold :box t)))
   `(magit-branch-local                ((t :background ,blue-2 :foreground ,blue-1 :weight bold)))
   `(magit-branch-remote               ((t :background ,magenta-2 :foreground ,magenta-1 :weight bold)))
   `(magit-diff-context-highlight      ((t :background ,bg-2 :foreground ,fg-1)))
   `(magit-diff-file-header            ((t :background ,comment-bg :foreground ,comment)))
   `(magit-diff-file-heading           ((t :background ,comment-bg :foreground ,comment)))
   `(magit-diff-file-heading-highlight ((t :background ,comment-bg :foreground ,comment)))
   `(magit-diff-hunk-header            ((t :background ,ttip-bg :foreground ,ttip)))
   `(magit-diff-hunk-heading           ((t :background ,ttip-bg :foreground ,ttip)))
   `(magit-diff-hunk-heading-highlight ((t :background ,ttip-bg :foreground ,ttip)))
   `(magit-hash                        ((t :foreground ,var)))
   `(magit-header-line                 ((t :background nil :foreground ,bg-1 :box nil)))
   `(magit-hunk-heading                ((t :background ,bg-2)))
   `(magit-hunk-heading-highlight      ((t :background ,bg-2)))
   `(magit-item-highlight              ((t :background ,bg-2)))
   `(magit-log-author                  ((t :foreground ,func)))
   `(magit-log-head-label-head         ((t :background ,yellow-1 :foreground ,bg-1 :weight bold)))
   `(magit-log-head-label-local        ((t :background ,keyword :foreground ,bg-1 :weight bold)))
   `(magit-log-head-label-remote       ((t :background ,suc :foreground ,bg-1 :weight bold)))
   `(magit-log-head-label-tags         ((t :background ,red-1 :foreground ,bg-1 :weight bold)))
   `(magit-log-head-label-wip          ((t :background ,yellow-1 :foreground ,bg-1 :weight bold)))
   `(magit-log-sha1                    ((t :foreground ,str)))
   `(magit-process-ng                  ((t :foreground ,war :weight bold)))
   `(magit-process-ok                  ((t :foreground ,func :weight bold)))
   `(magit-reflog-amend                ((t :foreground ,red-1)))
   `(magit-reflog-checkout             ((t :foreground ,blue-1)))
   `(magit-reflog-cherry-pick          ((t :foreground ,green-1)))
   `(magit-reflog-commit               ((t :foreground ,green-1)))
   `(magit-reflog-merge                ((t :foreground ,green-1)))
   `(magit-reflog-other                ((t :foreground ,yellow-1)))
   `(magit-reflog-rebase               ((t :foreground ,red-1)))
   `(magit-reflog-remote               ((t :foreground ,yellow-1)))
   `(magit-reflog-reset                ((t :foreground ,red-2)))
   `(magit-section-heading             ((t :foreground ,keyword :weight bold)))
   `(magit-section-highlight           ((t :background ,bg-2)))
   `(magit-section-title               ((t :background ,bg-1 :foreground ,keyword :weight bold)))

;;;;; man
   `(Man-overstrike ((t :foreground ,head1 :weight bold)))
   `(Man-reverse    ((t :foreground ,highlight)))
   `(Man-underline  ((t :foreground ,comp :underline t)))

;;;;; markdown
   `(markdown-blockquote-face       ((t :inherit org-quote :foreground nil)))
   `(markdown-bold-face             ((t :foreground nil :weight bold)))
   `(markdown-code-face             ((t :inhert org-code :foreground nil)))
   `(markdown-header-delimiter-face ((t :inherit org-level-1 :foreground nil)))
   `(markdown-header-face           ((t :inherit org-level-1 :foreground nil)))
   `(markdown-header-face-1         ((t :inherit org-level-1 :foreground nil)))
   `(markdown-header-face-2         ((t :inherit org-level-2 :foreground nil)))
   `(markdown-header-face-3         ((t :inherit org-level-3 :foreground nil)))
   `(markdown-header-face-4         ((t :inherit org-level-4 :foreground nil)))
   `(markdown-header-face-5         ((t :inherit org-level-5 :foreground nil)))
   `(markdown-header-face-6         ((t :inherit org-level-6 :foreground nil)))
   `(markdown-inline-code-face      ((t :inherit org-code)))
   `(markdown-italic-face           ((t :foreground nil :slant italic)))
   `(markdown-link-face             ((t :inherit org-link :foreground nil)))
   `(markdown-list-face             ((t :inherit org-list-dt :foreground nil)))
   `(markdown-metadata-key-face     ((t :inherit font-lock-keyword-face :foreground nil)))
   `(markdown-pre-face              ((t :inherit org-block :foreground nil)))
   `(markdown-url-face              ((t :inherit org-link :foreground nil)))

;;;;; mode-line
   `(mode-line           ((t :inherit sans-xs :foreground ,comment :background ,bg-2 :box nil)))
   `(mode-line-buffer-id ((t :inherit mode-line :foreground ,comment :weight semibold)))
   `(mode-line-emphasis  ((t :inherit mono-xs :foreground ,highlight)))
   `(mode-line-highlight ((t :inherit mono-xs :foreground ,highlight-dim :style nil)))
   `(mode-line-inactive  ((t :inherit sans-xs :foreground ,comment :background ,bg-1 :box nil)))
;;;; doom modeline

   `(doom-modeline-bar-inactive       (( t :inherit mode-line)))
   `(doom-modeline-battery-charging   (( t :inherit mode-line :foreground ,highlight)))
   `(doom-modeline-battery-critical   (( t :inherit mode-line :foreground ,err)))
   `(doom-modeline-battery-error      (( t :inherit mode-line :foreground ,err)))
   `(doom-modeline-battery-full       (( t :inherit mode-line :foreground ,suc)))
   `(doom-modeline-battery-normal     (( t :inherit mode-line :foreground ,fg-2)))
   `(doom-modeline-battery-warning    (( t :inherit mode-line :foreground ,war)))

   `(doom-modeline-buffer-file        (( t :inherit mode-line)))
   `(doom-modeline-buffer-major-mode  (( t :inherit mode-line :weight bold)))
   `(doom-modeline-buffer-minor-mode  (( t :inherit mode-line)))
   `(doom-modeline-buffer-modified    (( t :inherit mode-line :underline ,highlight)))
   `(doom-modeline-buffer-path        (( t :inherit mode-line)))
   `(doom-modeline-buffer-timemachine (( t :inherit mono-xs :slant italic)))
   `(doom-modeline-debug              (( t :inherit mono-xs :foreground ,comment)))

   `(doom-modeline-highlight          (( t :inherit mode-line :foreground ,highlight)))
   `(doom-modeline-host               (( t :inherit mode-line :weight bold)))
   `(doom-modeline-info               (( t :inherit mono-xs :foreground ,comment)))

   `(doom-modeline-lsp-error          (( t :inherit mono-xs :foreground ,err)))
   `(doom-modeline-lsp-running        (( t :inherit mono-xs :foreground ,keyword)))
   `(doom-modeline-lsp-success        (( t :inherit mono-xs :foreground ,suc)))
   `(doom-modeline-lsp-warning        (( t :inherit mono-xs :foreground ,war)))

   `(doom-modeline-panel                     (( t :inherit mode-line)))
   `(doom-modeline-persp-buffer-not-in-persp (( t :inherit mode-line :strike-through t)))
   `(doom-modeline-persp-name                (( t :inherit mode-line :weight bold)))
   `(doom-modeline-project-dir               (( t :inherit mode-line)))
   `(doom-modeline-project-parent-dir        (( t :inherit mode-line)))
   `(doom-modeline-project-root-dir          (( t :inherit mode-line :foreground ,cyan-2)))
   `(doom-modeline-unread-number             (( t :inherit mode-line :foreground ,war)))
   `(doom-modeline-urgent                    (( t :inherit mode-line :foreground ,err)))
   `(doom-modeline-warning                   (( t :inherit mode-line :foreground ,war)))

   `(lsp-modeline-code-actions-face          (( t :inherit mono-xs :foreground ,func)))
   `(lsp-ui-doc-background                   (( t :background ,bg-2)))
   `(lsp-ui-doc-border                       (( t :background ,comment)))
   `(lsp-ui-doc-header                       (( t :inherit sans-md :foreground ,keyword)))
   `(lsp-ui-peek-filename                    (( t :foreground ,fg-1)))
   `(lsp-ui-peek-footer                      (( t :background nil)))
   `(lsp-ui-peek-header                      (( t :background nil)))
   `(lsp-ui-peek-highlight                   (( t :background nil)))
   `(lsp-ui-peek-list                        (( t :background ,bg-2)))
   `(lsp-ui-peek-peek                        (( t :background nil)))
   `(lsp-ui-sideline-code-action             (( t :inherit lsp-modeline-code-actions-face)))

;;;;; mu4e
   `(mu4e-cited-1-face          ((t :foreground ,fg-1)))
   `(mu4e-cited-7-face          ((t :foreground ,fg-1)))
   `(mu4e-header-face           ((t :foreground ,head1 :weight normal)))
   `(mu4e-header-highlight-face ((t :weight normal)))
   `(mu4e-header-key-face       ((t :foreground ,head1 :weight normal)))
   `(mu4e-header-marks-face     ((t :foreground ,comp)))
   `(mu4e-unread-face           ((t :foreground ,yellow-1 :weight bold)))
   `(mu4e-view-url-number-face  ((t :foreground ,comp)))

;;;;; notmuch
   `(notmuch-search-date                 ((t :foreground ,func)))
   `(notmuch-search-flagged-face         ((t :weight extra-bold)))
   `(notmuch-search-non-matching-authors ((t :foreground ,fg-2)))
   `(notmuch-search-unread-face          ((t :background ,highlight-dim :box ,border)))
   `(notmuch-tag-face                    ((t :foreground ,keyword)))
   `(notmuch-tag-flagged                 ((t :foreground ,war)))

;;;;; neotree
   `(neo-dir-link-face   ((t :inherit mono-xs :foreground ,fg-1)))
   `(neo-expand-btn-face ((t :inherit mono-xs :foreground ,magenta-2)))
   `(neo-file-link-face  ((t :inherit mono-xs :foreground ,fg-1)))
   `(neo-root-dir-face   ((t :inherit mono-md :foreground ,comment)))

;;;;; org
   `(org-archived                  ((t :foreground ,fg-2)))
   `(org-agenda-clocking           ((t :background ,highlight :foreground ,bg-1)))
   `(org-agenda-date               ((t :foreground ,var)))
   `(org-agenda-date-today         ((t :foreground ,keyword :weight bold)))
   `(org-agenda-date-weekend       ((t :foreground ,var)))
   `(org-agenda-diary              ((t :foreground ,keyword)))
   `(org-agenda-done               ((t :foreground ,comment :strike-through t)))
   `(org-agenda-structure          ((t :inherit sans-xxl :foreground ,func :weight light)))
   `(org-block                     ((t :inherit mono-sm :background ,cblk-bg :foreground ,cblk)))
   `(org-block-begin-line          ((t :inherit mono-xs :background ,cblk-bg :foreground ,cblk-ln)))
   `(org-block-end-line            ((t :inherit mono-xs :background ,cblk-bg :foreground ,cblk-ln)))
   `(org-clock-overlay             ((t :foreground ,comp)))
   `(org-checkbox                  ((t :inherit org-todo)))
   `(org-code                      ((t :inherit mono-sm :foreground ,fg-2)))
   `(org-column                    ((t :background ,bg-2)))
   `(org-column-title              ((t :weight bold :foreground ,green-2)))
   `(org-date                      ((t :inherit mono-xs :foreground ,fg-2 :underline t)))
   `(org-date-selected             ((t :background ,highlight-dim :foreground ,bg-1)))
   `(org-document-info             ((t :inherit serif-xl :slant italic)))
   `(org-document-info-keyword     ((t :inherit org-meta-line)))
   `(org-document-title            ((t :inherit serif-xxl :underline nil :weight semi-bold)))
   `(org-done                      ((t :inherit mono-md :background nil :foreground ,highlight-dim :strike-through nil)))
   `(org-drawer                    ((t :inherit mono-xs :foreground ,comment)))
   `(org-ellipsis                  ((t :inherit variable-pitch :foreground ,comment :underline nil :weight bold)))
   `(org-footnote                  ((t :inherit serif-sm :foreground ,fg-2 :slant italic)))
   `(org-habit-alert-face          ((t :background ,magenta-1)))
   `(org-habit-alert-future-face   ((t :background ,magenta-2)))
   `(org-habit-clear-face          ((t :background ,green-2)))
   `(org-habit-clear-future-face   ((t :background ,bg-2)))
   `(org-habit-overdue-face        ((t :background ,war)))
   `(org-habit-overdue-future-face ((t :background ,bg-2)))
   `(org-habit-ready-face          ((t :background ,green-1)))
   `(org-habit-ready-future-face   ((t :background ,cyan-1)))
   `(org-headline-done             ((t :foreground ,fg-2 :strike-through nil)))
   `(org-hide                      ((t :inherit sans-md :foreground ,bg-1)))
   `(org-indent                    ((t :inherit org-hide)))
   `(org-kbd                       ((t :inherit region :foreground ,fg-1 :box (:line-width 1 :style released-button))))
   `(org-level-1                   ((t :inherit serif-xl :foreground ,fg-1 :slant italic)))
   `(org-level-2                   ((t :inherit serif-md)))
   `(org-level-3                   ((t :inherit org-level-2)))
   `(org-level-4                   ((t :inherit org-level-2)))
   `(org-level-5                   ((t :inherit org-level-2)))
   `(org-level-6                   ((t :inherit org-level-2)))
   `(org-level-7                   ((t :inherit org-level-2)))
   `(org-level-8                   ((t :inherit org-level-2)))
   `(org-link                      ((t :foreground ,meta :underline t)))
   `(org-meta-line                 ((t :inherit mono-xs :foreground ,comment)))
   `(org-mode-line-clock-overrun   ((t :inherit mono-xs :foreground ,err)))
   `(org-pomodoro-mode-line          ((t :inherit mode-line :foreground ,fg-2 :slant italic)))
   `(org-pomodoro-mode-line-break    ((t :inherit org-pomodoro-mode-line :foreground ,suc)))
   `(org-pomodoro-mode-line-overtime ((t :inherit org-pomodoro-mode-line :foreground ,war)))
   `(org-priority                  ((t :foreground ,war :weight bold)))
   `(org-property-value            ((t :inherit mono-sm :foreground ,fg-2)))
   `(org-quote                     ((t :background ,cblk-bg :foreground ,cblk)))
   `(org-ref-cite-face             ((t :foreground ,type)))
   `(org-scheduled                 ((t :foreground ,comp)))
   `(org-scheduled-today           ((t :foreground ,func)))
   `(org-sexp-date                 ((t :foreground ,fg-1)))
   `(org-special-keyword           ((t :inherit org-meta-line)))
   `(org-checkbox-statistics-done  ((t :inherit org-done)))
   `(org-checkbox-statistics-todo  ((t :inherit org-todo)))
   `(org-tag                       ((t :inherit mono-xs :foreground ,meta)))
   `(org-tag-group                 ((t :inherit org-tag :foreground ,comp)))
   `(org-table                     ((t :inherit mono-sm :background nil :foreground ,fg-1)))
   `(org-time-grid                 ((t :foreground ,comment)))
   `(org-todo                      ((t :inherit mono-md :background nil :foreground ,highlight)))
   `(org-verbatim                  ((t :inherit org-block)))
   `(org-verse                     ((t :inherit org-quote :slant italic)))
   `(org-warning                   ((t :foreground ,err)))

;;;;; org-noter
   `(org-noter-notes-exist-face    ((t :inherit mode-line :foreground ,suc)))
   `(org-noter-no-notes-exist-face ((t :inherit mode-line)))

;;;;; perspective
   `(persp-face-lighter-buffer-not-in-persp ((t :inherit sans-xs :weight bold :background nil :foreground ,err)))
   `(persp-face-lighter ((t :inherit sans-xs :background nil :foreground ,highlight)))
   `(persp-face-lighter-nil-persp ((t :inherit sans-xs :background nil :foreground ,highlight-dim)))

;;;;; popup
   `(popup-enu-selection-face         ((t :background ,ttip-sl :foreground ,fg-1)))
   `(popup-face                       ((t :background ,ttip-bg :foreground ,ttip)))
   `(popup-isearch-match              ((t :inherit match)))
   `(popup-menu-face                  ((t :background ,ttip-bg :foreground ,fg-1)))
   `(popup-menu-mouse-face            ((t :inherit highlight)))
   `(popup-scroll-bar-background-face ((t :background ,bg-2)))
   `(popup-scroll-bar-foreground-face ((t :background ,act2)))
   `(popup-tip-face                   ((t :background ,ttip-sl :foreground ,fg-1 :weight normal :italic nil :underline nil)))

;;;;; powerline
   `(powerline-active1   ((t :background ,bg-1 :foreground ,fg-2)))
   `(powerline-active2   ((t :background ,bg-1 :foreground ,fg-2)))
   `(powerline-inactive1 ((t :background ,bg-1 :foreground ,comment)))
   `(powerline-inactive2 ((t :background ,bg-1 :foreground ,comment)))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face    ((t :foreground ,keyword)))
   `(rainbow-delimiters-depth-2-face    ((t :foreground ,func)))
   `(rainbow-delimiters-depth-3-face    ((t :foreground ,str)))
   `(rainbow-delimiters-depth-4-face    ((t :foreground ,green-1)))
   `(rainbow-delimiters-depth-5-face    ((t :foreground ,yellow-1)))
   `(rainbow-delimiters-depth-6-face    ((t :foreground ,keyword)))
   `(rainbow-delimiters-depth-7-face    ((t :foreground ,func)))
   `(rainbow-delimiters-depth-8-face    ((t :foreground ,str)))
   `(rainbow-delimiters-mismatched-face ((t :foreground ,err :overline t)))
   `(rainbow-delimiters-unmatched-face  ((t :foreground ,err :overline t)))

;;;;; rcirc
   `(rcirc-bright-nick   ((t :background ,magenta-2 :foreground ,yellow-1)))
   `(rcirc-dim-nick      ((t :foreground ,fg-2)))
   `(rcirc-keyword       ((t :background ,green-2 :foreground ,green-1)))
   `(rcirc-timestamp     ((t :foreground ,keyword)))
   `(rcirc-track-keyword ((t :background ,green-1 :foreground ,bg-1)))
   `(rcirc-url           ((t :inherit link)))

;;;;; shm
   `(shm-current-face    ((t :background ,green-2)))
   `(shm-quarantine-face ((t :background ,fg-2)))

;;;;; show-paren
   `(show-paren-match    ((t :background ,green-2)))
   `(show-paren-mismatch ((t :background ,fg-2)))

;;;;; smartparens
   `(sp-pair-overlay-face    ((t :background ,bg-2 :foreground ,suc)))
   `(sp-show-pair-match-face ((t :background ,bg-2 :weight bold :underline t)))

;;;;; spaceline
   `(spaceline-flycheck-error   ((t :foreground ,err)))
   `(spaceline-flycheck-info    ((t :foreground ,keyword)))
   `(spaceline-flycheck-warning ((t :foreground ,war)))
   `(spaceline-python-venv      ((t :foreground ,comp)))

;;;;; swiper
   `(swiper-background-match-face-1 ((t :inherit ivy-minibuffer-match-face-1)))
   `(swiper-background-match-face-2 ((t :inherit ivy-minibuffer-match-face-2)))
   `(swiper-background-match-face-3 ((t :inherit ivy-minibuffer-match-face-3)))
   `(swiper-background-match-face-4 ((t :inherit ivy-minibuffer-match-face-4)))
   `(swiper-match-face-1            ((t :inherit ivy-minibuffer-match-face-1)))
   `(swiper-match-face-2            ((t :inherit ivy-minibuffer-match-face-2)))
   `(swiper-match-face-3            ((t :inherit ivy-minibuffer-match-face-3)))
   `(swiper-match-face-4            ((t :inherit ivy-minibuffer-match-face-4)))
   `(swiper-line-face               ((t :inherit ivy-current-match)))

;;;;; tabbar
   `(tab-bar               ((t :inherit mono-xs :background ,bg-2 :foreground ,fg-1)))
   `(tab-bar-tab           ((t :inherit mono-xs :background ,bg-1 :foreground ,fg-1)))
   `(tab-bar-tab-inactive  ((t :inherit mono-xs :background ,bg-2 :foreground ,fg-2)))
   ;; `(tabbar-button           ((t :inherit tabbar-default)))
   ;; `(tabbar-button-highlight ((t :inherit tabbar-default)))
   ;; `(tabbar-default          ((t :inhherit mono-sm :background ,bg-1 :foreground ,head1)))
   ;; `(tabbar-highlight        ((t :underline t)))
   ;; `(tabbar-selected         ((t :inherit tabbar-default :foreground ,red-1 :weight bold)))
   ;; `(tabbar-separator        ((t :inherit tabbar-default)))
   ;; `(tabbar-unselected       ((t :inherit tabbar-default :background ,bg-1 :slant italic :weight light)))

;;;;; term
   `(term              ((t :foreground ,fg-1 :background ,bg-1)))
   `(term-color-black  ((t :foreground ,bg-2)))
   `(term-color-blue   ((t :foreground ,keyword)))
   `(term-color-cyan   ((t :foreground ,cyan-1)))
   `(term-color-green  ((t :foreground ,green-1)))
   `(term-color-red-1  ((t :foreground ,red-1)))
   `(term-color-red    ((t :foreground ,red-2)))
   `(term-color-white  ((t :foreground ,fg-1)))
   `(term-color-yellow ((t :foreground ,yellow-1)))


;;;;; treemacs
   `(treemacs-directory-face                ((t :inherit mono-xs foreground ,fg-1)))
   `(treemacs-directory-collapsed-face      ((t :inherit treemacs-directory-face)))
   `(treemacs-file-face                     ((t :inherit mono-xs :foreground ,fg-1)))
   `(treemacs-git-added-face                ((t :inherit mono-xs :foreground ,suc)))
   `(treemacs-git-conflict-face             ((t :inherit mono-xs :foreground ,err)))
   `(treemacs-git-ignored-face              ((t :inherit mono-xs :foreground ,comment)))
   `(treemacs-git-modified-face             ((t :inherit mono-xs :foreground ,war)))
   `(treemacs-git-remamed-face              ((t :inherit mono-xs :foreground ,war)))
   `(treemacs-git-unmodified-face           ((t :inherit mono-xs :foreground ,fg-1)))
   `(treemacs-git-untracked-face            ((t :inherit mono-xs :foreground ,fg-2)))
   `(treemacs-root-face                     ((t :inherit sans-md :foreground ,keyword)))
   `(treemacs-root-remote-face              ((t :inherit treemacs-root-face)))
   `(treemacs-root-unreadable-face          ((t :inherit treemacs-root-face :strike-through t :foreground ,comment)))
   `(treemacs-root-remote-unreadable-face   ((t :inherit treemacs-root-unreadable-face)))
   `(treemacs-root-remote-disconnected-face ((t :inherit treemacs-root-face :foreground ,war)))


;;;;; twittering
   `(twittering-timeline-footer-face ((t :foreground ,fg-2 :weight bold)))
   `(twittering-timeline-header-face ((t :inherit org-agenda-structure)))
   `(twittering-uri-face             ((t :inherit org-link)))
   `(twittering-username-face        ((t :inherit sans-md :foreground ,keyword)))

;;;;; web-mode
   `(web-mode-builtin-face         ((t :inherit ,font-lock-builtin-face)))
   `(web-mode-comment-face         ((t :inherit ,font-lock-comment-face)))
   `(web-mode-constant-face        ((t :inherit ,font-lock-constant-face)))
   `(web-mode-doctype-face         ((t :inherit ,font-lock-comment-face)))
   `(web-mode-function-name-face   ((t :inherit ,font-lock-function-name-face)))
   `(web-mode-html-attr-name-face  ((t :foreground ,func)))
   `(web-mode-html-attr-value-face ((t :foreground ,keyword)))
   `(web-mode-html-tag-face        ((t :foreground ,keyword)))
   `(web-mode-keyword-face         ((t :foreground ,keyword)))
   `(web-mode-string-face          ((t :foreground ,str)))
   `(web-mode-symbol-face          ((t :foreground ,type)))
   `(web-mode-type-face            ((t :inherit ,font-lock-type-face)))
   `(web-mode-warning-face         ((t :inherit ,font-lock-warning-face)))

;;;;; which-key
   `(which-key-command-description-face ((t :foreground ,fg-1)))
   `(which-key-group-description-face   ((t :foreground ,keyword)))
   `(which-key-key-face                 ((t :foreground ,func :weight bold)))
   `(which-key-note-face                ((t :foreground ,comment :slant italic)))
   `(which-key-separator-face           ((t :background nil :foreground ,str)))
   `(which-key-special-key-face         ((t :background ,func :foreground ,bg-1)))

;;;;; which-function-mode
   `(which-func ((t :foreground ,func)))

;;;;; whitespace-mode
   `(whitespace-empty            ((t :background nil :foreground ,yellow-1)))
   `(whitespace-indentation      ((t :background nil :foreground ,war)))
   `(whitespace-line             ((t :background nil :foreground ,comp)))
   `(whitespace-newline          ((t :background nil :foreground ,comp)))
   `(whitespace-space            ((t :background nil :foreground ,act2)))
   `(whitespace-space-after-tab  ((t :background nil :foreground ,yellow-1)))
   `(whitespace-space-before-tab ((t :background nil :foreground ,yellow-1)))
   `(whitespace-tab              ((t :background nil)))
   `(whitespace-trailing         ((t :background ,err :foreground ,war)))

;;;;; other, need more work
   `(ac-completion-face                   ((t :foreground ,keyword :underline t)))
   `(ffap                                 ((t :foreground ,fg-1)))
   `(flx-highlight-face                   ((t :foreground ,bg-1 :underline nil)))
   `(icompletep-determined                ((t :foreground ,keyword)))
   `(js2-external-variable                ((t :foreground ,comp)))
   `(js2-function-param                   ((t :foreground ,const)))
   `(js2-jsdoc-html-tag-delimiter         ((t :foreground ,str)))
   `(js2-jsdoc-html-tag-name              ((t :foreground ,keyword)))
   `(js2-jsdoc-value                      ((t :foreground ,str)))
   `(js2-private-function-call            ((t :foreground ,const)))
   `(js2-private-member                   ((t :foreground ,fg-1)))
   `(js3-error-face                       ((t :underline ,war)))
   `(js3-external-variable-face           ((t :foreground ,var)))
   `(js3-function-param-face              ((t :foreground ,keyword)))
   `(js3-instance-member-face             ((t :foreground ,const)))
   `(js3-jsdoc-tag-face                   ((t :foreground ,keyword)))
   `(js3-warning-face                     ((t :underline ,keyword)))
   `(slime-repl-inputed-output-face       ((t :foreground ,comp)))
   `(trailing-whitespace                  ((t :foreground nil :background ,err)))
   `(undo-tree-visualizer-current-face    ((t :foreground ,keyword)))
   `(undo-tree-visualizer-default-face    ((t :foreground ,fg-1)))
   `(undo-tree-visualizer-register-face   ((t :foreground ,comp)))
   `(undo-tree-visualizer-unmodified-face ((t :foreground ,var)))
   )
  )



;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'anathemacs)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; anathemacs-theme.el ends here
