;;; anathemacs-theme.el ---

;;; Code:

(deftheme anathemacs)

(load-file "~/.emacs.d/anathemacs-theme-colors.el")

(let ((class '((class color) (min-colors 89)))
      ;; background
      (bg1           ana-bg-1)
      ;; alt background
      (bg2           ana-bg-2)
      (cblk-bg       ana-bg-2)
      (ttip-bg       ana-bg-2)
      (comment-bg    ana-bg-2)
      ;; text
      (base          ana-base-1)
      ;; dim text
      (base-dim      ana-base-dim)
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
      (keyword       ana-cyan-2)
      
      ;; fonts
      (base-font    "FiraCode")
      (et-font      "ETBembo")
      (sans-font    "Lato"))

    (custom-theme-set-faces
     `anathemacs

;;;;; basics
     `(cursor                   ((,class (:background ,cursor))))
     `(custom-button            ((,class :background ,bg2 :foreground ,base :box (:line-width 2 :style released-button))))
     `(default                  ((,class (:inherit fixed-pitch :background ,bg1 :foreground ,base))))
     `(default-italic           ((,class (:italic t))))
     `(error                    ((,class (:foreground ,err))))
     `(eval-sexp-fu-flash       ((,class (:background ,suc :foreground ,bg1))))
     `(eval-sexp-fu-flash-error ((,class (:background ,err :foreground ,bg1))))
     `(fixed-pitch              ((,class (:family ,base-font :height 100))))
     `(fringe                   ((,class (:background ,bg1 :foreground ,base))))
     `(header-line              ((,class :background nil :inherit nil)))
     `(highlight                ((,class (:foreground ,bg1 :background ,highlight))))
     `(hl-line                  ((,class (:background ,bg2))))
     `(isearch                  ((,class (:foreground ,bg1 :background ,mat))))
     `(lazy-highlight      ((,class (:background ,highlight-dim :foreground ,bg1 :weight normal))))
     `(link                ((,class (:foreground ,keyword :underline t))))
     `(link-visited        ((,class (:foreground ,comp :underline t))))
     `(match               ((,class (:background ,highlight-dim :foreground ,bg1))))
     `(minibuffer-prompt   ((,class (:inherit bold :foreground ,const))))
     `(page-break-lines    ((,class (:foreground ,bg2 :background ,bg2))))
     `(region              ((,class (:background ,highlight :foreground ,bg1))))
     `(secondary-selection ((,class (:background ,bg2))))
     `(shadow              ((,class (:foreground ,base-dim))))
     `(success             ((,class (:foreground ,suc))))
     `(tooltip             ((,class (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))
     `(variable-pitch      ((,class (:family ,et-font :height 130))))
     `(vertical-border     ((,class (:foreground ,border))))
     `(warning             ((,class (:foreground ,war))))
     
;; font locks
     `(font-lock-builtin＄-face ((,class (:foreground ,keyword))))
     `(font-lock-comment-face ((,class (:foreground ,comment))))
     `(font-lock-constant-face ((,class (:foreground ,const))))
     `(font-lock-doc-face ((,class (:foreground ,comment))))
     `(font-lock-function-name-face ((,class (:foreground ,func :inherit bold))))
     `(font-lock-keyword-face ((,class (:inherit none :foreground ,type :background nil))))
     `(font-lock-negation-char-face ((,class (:foreground ,const))))
     `(font-lock-preprocessor-face ((,class (:foreground ,type))))
     `(font-lock-reference-face ((,class (:foreground ,const))))
     `(font-lock-string-face ((,class (:foreground ,str))))
     `(font-lock-type-face ((,class (:foreground ,type :inherit bold))))
     `(font-lock-variable-name-face ((,class (:foreground ,var))))
     `(font-lock-warning-face ((,class (:foreground ,war :background ,bg1))))

;;;;; ahs
     `(ahs-face ((,class (:background ,highlight))))
     `(ahs-plugin-whole-buffer-face ((,class (:background ,mat :foreground ,bg1))))

;;;;; anzu-mode
     `(anzu-mode-line ((,class (:foreground ,yellow-1 :inherit bold))))

;;;;; auto-complete
     `(ac-completion-face ((,class (:background ,ttip-bg :foreground ,ttip))))

;;;;; avy
     `(avy-lead-face   ((,class (:background ,blue-2 :foreground ,red-1))))
     `(avy-lead-face-0 ((,class (:background ,blue-2 :foreground ,blue-1))))
     `(avy-lead-face-1 ((,class (:background ,blue-2 :foreground ,red-1))))
     `(avy-lead-face-2 ((,class (:background ,blue-2 :foreground ,blue-1))))

;;;;; calfw
     `(cfw:face-title              ((,class (:foreground ,base-dim :weight bold :height 2.0 :inherit variable-pitch))))
     `(cfw:face-header             ((,class (:foreground ,base-dim :weight bold))))
     `(cfw:face-sunday             ((,class (:foreground ,base-dim :background nil :weight bold))))
     `(cfw:face-saturday           ((,class (:foreground ,base-dim :background nil :weight bold))))
     `(cfw:face-holiday            ((,class (:background nil :foreground ,var))))
     `(cfw:face-grid               ((,class (:foreground ,border))))
     `(cfw:face-default-content    ((,class (:foreground ,base))))
     `(cfw:face-periods            ((,class (:foreground ,base-dim))))
     `(cfw:face-day-title          ((,class (:background ,comment-bg))))
     `(cfw:face-default-day        ((,class (:weight bold :inherit cfw:face-day-title))))
     `(cfw:face-annotation         ((,class (:foreground ,base-2 :inherit cfw:face-day-title))))
     `(cfw:face-disable            ((,class (:foreground ,comment :inherit cfw:face-day-title))))
     `(cfw:face-today-title        ((,class (:background ,keyword :weight bold))))
     `(cfw:face-today              ((,class (:background ,highlight :weight bold))))
     `(cfw:face-select             ((,class (:background ,highlight))))
     `(cfw:face-toolbar            ((,class (:foreground ,comment :background nil))))
     `(cfw:face-toolbar-button-off ((,class (:foreground ,highlight :weight bold))))
     `(cfw:face-toolbar-button-on  ((,class (:foreground ,highlight :weight bold))))
 
;;;;; cider
     `(cider-enlightened         ((,class (:background nil :box (:color ,yellow-1 :line-width -1 :style nil) :foreground ,yellow-1))))
     `(cider-enlightened-local   ((,class (:foreground ,yellow-1))))
     `(cider-instrumented-face   ((,class (:background nil :box (:color ,red-2 :line-width -1 :style nil) :foreground ,red-2))))
     `(cider-result-overlay-face ((,class (:background nil :box (:color ,blue-1 :line-width -1 :style nil) :foreground ,blue-1))))
     `(cider-test-error-face     ((,class (:background ,war :foreground ,bg1))))
     `(cider-test-failure-face   ((,class (:background ,err :foreground ,bg1))))
     `(cider-test-success-face   ((,class (:background ,suc :foreground ,bg1))))
     `(cider-traced-face         ((,class :box (:color ,yellow-1 :line-width -1 :style nil))))

;;;;; company
     `(company-echo-common              ((,class (:background ,bg1 :foreground ,base))))
     `(company-preview                  ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-preview-common           ((,class (:background ,ttip-bg :foreground ,base-dim))))
     `(company-preview-search           ((,class (:inherit match))))
     `(company-scrollbar-bg             ((,class (:background ,bg2))))
     `(company-scrollbar-fg             ((,class (:background ,act2))))
     `(company-template-field           ((,class (:inherit region))))
     `(company-tooltip                  ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-tooltip-annotation       ((,class (:foreground ,comment))))
     `(company-tooltip-common           ((,class (:background ,ttip-bg :foreground ,base-dim))))
     `(company-tooltip-common-selection ((,class (:foreground ,func))))
     `(company-tooltip-mouse            ((,class (:inherit highlight))))
     `(company-tooltip-search           ((,class (:inherit match))))
     `(company-tooltip-selection        ((,class (:background ,ttip-sl :foreground ,base))))

;;;;; counsel
     `(counsel-outline-1 ((,class (:inherit nil))))
     `(counsel-outline-2 ((,class (:inherit nil))))
     `(counsel-outline-3 ((,class (:inherit nil))))
     `(counsel-outline-4 ((,class (:inherit nil))))
     `(counsel-outline-5 ((,class (:inherit nil))))
     `(counsel-outline-6 ((,class (:inherit nil))))
     `(counsel-outline-7 ((,class (:inherit nil))))
     `(counsel-outline-8 ((,class (:inherit nil))))
     
;;;;; dashboard
     `(dashboard-banner-logo-title-face ((,class :family ,sans-font :weight bold)))
     ;; `(dashboard-text-banner-face ((,class (:inherit nil))))
     `(dashboard-heading-face ((,class :foreground ,func :family ,sans-font :weight light :height 2.9)))
     `(widget-button ((,class (:weight normal))))
     

     
;;;;; diff
     `(diff-added             ((,class :background nil :foreground ,green-1)))
     `(diff-changed           ((,class :background nil :foreground ,keyword)))
     `(diff-header            ((,class :background ,cblk-bg :foreground ,func)))
     `(diff-file-header       ((,class :background ,cblk-bg :foreground ,cblk)))
     `(diff-indicator-added   ((,class :background nil :foreground ,green-1)))
     `(diff-indicator-changed ((,class :background nil :foreground ,keyword)))
     `(diff-indicator-removed ((,class :background nil :foreground ,red-2)))
     `(diff-refine-added      ((,class :background ,green-1 :foreground ,bg2)))
     `(diff-refine-changed    ((,class :background ,keyword :foreground ,bg2)))
     `(diff-refine-removed    ((,class :background ,red-2 :foreground ,bg2)))
     `(diff-removed           ((,class :background nil :foreground ,red-2)))

;;;;; diff-hl
     `(diff-hl-change ((,class :background ,blue-2 :foreground ,blue-1)))
     `(diff-hl-delete ((,class :background ,magenta-2 :foreground ,red-2)))
     `(diff-hl-insert ((,class :background ,green-2 :foreground ,green-1)))

;;;;; dired-2
     `(dired-directory ((,class (:foreground ,keyword :background ,bg1 :inherit bold))))
     `(dired-flagged ((,class (:foreground ,red-2))))
     `(dired-header ((,class (:foreground ,comp :inherit bold))))
     `(dired-ignored ((,class (:inherit shadow))))
     `(dired-mark ((,class (:foreground ,comp :inherit bold))))
     `(dired-marked ((,class (:foreground ,red-1 :inherit bold))))
     `(dired-perm-write ((,class (:foreground ,base :underline t))))
     `(dired-symlink ((,class (:foreground ,yellow-1 :background ,bg1 :inherit bold))))
     `(dired-warning ((,class (:foreground ,war))))

;;;;; display-line-numbers-mode
     `(line-number ((,class (:foreground ,lnum :background nil :height 0.8 :slant italic))))
     `(line-number-current-line ((,class (:foreground ,lnum :background ,bg2 :height 0.8 :slant italic))))
     
;;;;;; doom-neotree
     `(doom-neotree-data-file-face ((,class(:foreground ,keyword :height 0.9))))
     `(doom-neotree-dir-face ((,class(:family ,sans-font :weight normal :height 0.9))))
     `(doom-neotree-file-face ((,class(:height 0.9))))
     `(doom-neotree-hidden-file-face ((,class(:foreground ,act2 :height 0.9))))
     `(doom-neotree-media-file-face ((,class(:foreground ,highlight-dim :height 0.9))))
     `(doom-neotree-text-file-face ((,class(::height 0.9))))

;;;;; ediff
     `(ediff-current-diff-A ((,class(:background ,base-2 :foreground ,red-2))))
     `(ediff-current-diff-Ancestor ((,class(:background ,magenta-2 :foreground ,magenta-1))))
     `(ediff-current-diff-B ((,class(:background ,green-2 :foreground ,green-1))))
     `(ediff-current-diff-C ((,class(:background ,blue-2 :foreground ,blue-1))))
     `(ediff-even-diff-A ((,class(:background ,bg2))))
     `(ediff-even-diff-Ancestor ((,class(:background ,bg2))))
     `(ediff-even-diff-B ((,class(:background ,bg2))))
     `(ediff-even-diff-C ((,class(:background ,bg2))))
     `(ediff-fine-diff-A ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-Ancestor ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-B ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-C ((,class(:background nil :inherit bold))))
     `(ediff-odd-diff-A ((,class(:background ,bg2))))
     `(ediff-odd-diff-Ancestor ((,class(:background ,bg2))))
     `(ediff-odd-diff-B ((,class(:background ,bg2))))
     `(ediff-odd-diff-C ((,class(:background ,bg2))))

;;;;; ein
     `(ein:cell-input-area((,class (:background ,bg2))))
     `(ein:cell-input-prompt ((,class (:foreground ,suc))))
     `(ein:cell-output-prompt ((,class (:foreground ,err))))
     `(ein:notification-tab-normal ((,class (:foreground ,keyword))))
     `(ein:notification-tab-selected ((,class (:foreground ,suc :inherit bold))))

;;;;; eldoc
     `(eldoc-highlight-function-argument ((,class (:foreground ,mat :inherit bold))))

;;;;; enh-ruby
     `(enh-ruby-op-face ((,class (:background ,bg1 :foreground ,base))))
     `(enh-ruby-string-delimiter-face ((,class (:foreground ,str))))

;;;;; erc
     `(erc-input-face ((,class (:foreground ,func))))
     `(erc-my-nick-face ((,class (:foreground ,keyword))))
     `(erc-nick-default-face ((,class (:foreground ,keyword))))
     `(erc-nick-prefix-face ((,class (:foreground ,yellow-1))))
     `(erc-notice-face ((,class (:foreground ,str))))
     `(erc-prompt-face ((,class (:foreground ,mat :inherit bold))))
     `(erc-timestamp-face ((,class (:foreground ,keyword))))

;;;;; eshell
     `(eshell-ls-archive ((,class (:foreground ,red-2 :inherit bold))))
     `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory ((,class (:foreground ,keyword :inherit bold))))
     `(eshell-ls-executable ((,class (:foreground ,suc :inherit bold))))
     `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special ((,class (:foreground ,yellow-1 :inherit bold))))
     `(eshell-ls-symlink ((,class (:foreground ,yellow-1 :inherit bold))))
     `(eshell-ls-unreadable ((,class (:foreground ,base))))
     `(eshell-prompt ((,class (:foreground ,keyword :inherit bold))))


;;;;; flycheck
     `(flycheck-error
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,err)))
        (,class (:foreground ,base :background ,err :inherit bold :underline t))))
     `(flycheck-error-list-checker-name ((,class (:foreground ,keyword))))
     `(flycheck-fringe-error ((,class (:foreground ,err :inherit bold))))
     `(flycheck-fringe-info ((,class (:foreground ,keyword :inherit bold))))
     `(flycheck-fringe-warning ((,class (:foreground ,war :inherit bold))))
     `(flycheck-info
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,keyword)))
        (,class (:foreground ,base :background ,keyword :inherit bold :underline t))))
     `(flycheck-warning
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,war)))
        (,class (:foreground ,base :background ,war :inherit bold :underline t))))

;;;;; git-gutter-fr
     `(git-gutter-fr:added ((,class (:foreground ,suc :inherit bold))))
     `(git-gutter-fr:deleted ((,class (:foreground ,war :inherit bold))))
     `(git-gutter-fr:modified ((,class (:foreground ,keyword :inherit bold))))

;;;;; git-timemachine
     `(git-timemachine-minibuffer-detail-face ((,class (:foreground ,blue-1 :inherit bold :background ,blue-2))))

;;;;; gnus
     `(gnus-emphasis-highlight-words ((,class (:background ,suc :foreground ,bg1))))
     `(gnus-header-content ((,class (:foreground ,keyword))))
     `(gnus-header-from ((,class (:foreground ,var))))
     `(gnus-header-name ((,class (:foreground ,comp))))
     `(gnus-header-subject ((,class (:foreground ,func :inherit bold))))
     `(gnus-summary-cancelled ((,class (:background ,war :foreground ,bg1))))

;;;;; guide-key
     `(guide-key/highlight-command-face ((,class (:foreground ,base))))
     `(guide-key/key-face ((,class (:foreground ,keyword))))
     `(guide-key/prefix-command-face ((,class (:foreground ,keyword :inherit bold))))

;;;;; helm
     `(helm-bookmark-directory ((,class (:inherit helm-ff-directory))))
     `(helm-bookmark-file ((,class (:foreground ,base))))
     `(helm-bookmark-gnus ((,class (:foreground ,comp))))
     `(helm-bookmark-info ((,class (:foreground ,comp))))
     `(helm-bookmark-man ((,class (:foreground ,comp))))
     `(helm-bookmark-w3m ((,class (:foreground ,comp))))
     `(helm-buffer-directory ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-file ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-not-saved ((,class (:foreground ,comp :background ,bg1))))
     `(helm-buffer-process ((,class (:foreground ,keyword :background ,bg1))))
     `(helm-buffer-saved-out ((,class (:foreground ,base :background ,bg1))))
     `(helm-buffer-size ((,class (:foreground ,base :background ,bg1))))
     `(helm-candidate-number ((,class (:background ,bg1 :foreground ,keyword :inherit bold))))
     `(helm-ff-directory ((,class (:foreground ,keyword :background ,bg1 :inherit bold))))
     `(helm-ff-dotted-directory ((,class (:foreground ,keyword :background ,bg1 :inherit bold))))
     `(helm-ff-dotted-symlink-directory ((,class (:foreground ,yellow-1 :background ,bg1 :inherit bold))))
     `(helm-ff-executable ((,class (:foreground ,suc :background ,bg1 :weight normal))))
     `(helm-ff-file ((,class (:foreground ,base :background ,bg1 :weight normal))))
     `(helm-ff-invalid-symlink ((,class (:foreground ,red-2 :background ,bg1 :inherit bold))))
     `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
     `(helm-ff-symlink ((,class (:foreground ,yellow-1 :background ,bg1 :inherit bold))))
     `(helm-grep-cmd-line ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-file ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-finish ((,class (:foreground ,base :background ,bg1))))
     `(helm-grep-lineno ((,class (:foreground ,type :background ,bg1 :inherit bold))))
     `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
     `(helm-header ((,class (:foreground ,base :background ,bg1 :underline nil :box nil))))
     `(helm-header-line-left-margin ((,class (:foreground ,keyword :background ,nil))))
     `(helm-match ((,class (:background ,bg2 :foreground ,head1))))
     `(helm-match-item ((,class (:background ,bg2 :foreground ,head1))))
     `(helm-moccur-buffer ((,class (:foreground ,var :background ,bg1))))
     `(helm-selection ((,class (:background ,highlight :foreground ,bg1))))
     `(helm-selection-line ((,class (:background ,bg2))))
     `(helm-separator ((,class (:foreground ,comp :background ,bg1))))
     `(helm-source-header ((,class (:background ,bg1 :foreground ,base-dim :inherit bold))))
     `(helm-time-zone-current ((,class (:foreground ,keyword :background ,bg1))))
     `(helm-time-zone-home ((,class (:foreground ,comp :background ,bg1))))
     `(helm-visible-mark ((,class (:foreground ,keyword :background ,bg2))))

;;;;; helm-swoop
     `(helm-swoop-target-line-block-face ((,class (:foreground ,bg1 :background ,highlight))))
     `(helm-swoop-target-line-face ((,class (:background ,highlight :foreground ,bg1))))
     `(helm-swoop-target-word-face ((,class (:background ,highlight-dim :foreground ,bg1))))

;;;;; highlights
     `(hi-green  ((,class (:foreground ,bg2 :background ,green-2))))
     `(hi-yellow ((,class (:foreground ,bg2 :background ,yellow-2))))

;;;;; highlight-indentation
     `(highlight-indentation-face ((,class (:background ,comment-bg))))

;;;;; highlight-symbol
     `(highlight-symbol-face ((,class (:background ,bg2))))

;;;;; hydra
     `(hydra-face-blue ((,class (:foreground ,blue-1))))
     `(hydra-face-red ((,class (:foreground ,red-2))))

;;;;; ibuffer
     `(ibuffer-filter-group-name-face ((,class (:inherit nil))))
     
;;;;; ido
     `(ido-first-match ((,class (:foreground ,comp :inherit bold))))
     `(ido-only-match ((,class (:foreground ,mat :inherit bold))))
     `(ido-subdir ((,class (:foreground ,keyword))))
     `(ido-vertical-match-face ((,class (:foreground ,comp :underline nil))))

;;;;; info
     `(info-header-xref ((,class (:foreground ,func :underline t))))
     `(info-menu ((,class (:foreground ,suc))))
     `(info-node ((,class (:foreground ,func :inherit bold))))
     `(info-quoted-name ((,class (:foreground ,keyword))))
     `(info-reference-item ((,class (:background nil :underline t :inherit bold))))
     `(info-string ((,class (:foreground ,str))))
     `(info-title-1 ((,class (:height 1.4 :inherit bold))))
     `(info-title-2 ((,class (:height 1.3 :inherit bold))))
     `(info-title-3 ((,class (:height 1.3))))
     `(info-title-4 ((,class (:height 1.2))))

;;;;; ivy
     `(ivy-current-match ((,class (:foreground ,bg1 :background ,highlight :inherit nil :family ,base-font :height 80))))
     `(ivy-minibuffer-match-face-1 ((,class (:inherit nil :family ,base-font :height 80))))
     `(ivy-minibuffer-match-face-2 ((,class (:foreground ,head1 :underline t :family ,base-font :height 80))))
     `(ivy-minibuffer-match-face-3 ((,class (:foreground ,head1 :underline t :family ,base-font :height 80))))
     `(ivy-minibuffer-match-face-4 ((,class (:foreground ,head1 :underline t :family ,base-font :height 80))))
     `(ivy-org ((,class (:inherit nil :family ,base-font :height 80))))
     `(ivy-remote ((,class (:foreground ,yellow-1))))

;;;;; latex
     `(font-latex-bold-face ((,class (:foreground ,comp))))
     `(font-latex-italic-face ((,class (:foreground ,keyword :italic t))))
     `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
     `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
     `(font-latex-sectioning-0-face ((,class (:inherit bold :foreground ,head1))))
     `(font-latex-sectioning-1-face ((,class (:inherit bold :foreground ,head1))))
     `(font-latex-sectioning-2-face ((,class (:inherit bold :foreground ,head1))))
     `(font-latex-sectioning-3-face ((,class (:inherit bold :foreground ,head1))))
     `(font-latex-sectioning-4-face ((,class (:bold nil :foreground ,head1))))
     `(font-latex-sectioning-5-face ((,class (:bold nil :foreground ,head1))))
     `(font-latex-string-face ((,class (:foreground ,str))))
     `(font-latex-warning-face ((,class (:foreground ,war))))

;;;;; linum-mode
     `(linum ((,class (:foreground ,lnum :background nil :height 0.8 :slant italic))))

;;;;; linum-relative
     `(linum-relative-current-face ((,class (:foreground ,comp :background nil :height 0.8 :slant italic))))

;; display line numbers

;;;;; magit
     `(magit-blame-culprit ((,class :background ,bg2 :foreground ,yellow-1)))
     `(magit-blame-date    ((,class :background ,bg2 :foreground ,green-1)))
     `(magit-blame-hash    ((,class :background ,bg2 :foreground ,func)))
     `(magit-blame-header  ((,class :background ,bg2 :foreground ,green-1)))
     `(magit-blame-heading ((,class :background ,bg2 :foreground ,green-1)))
     `(magit-blame-name    ((,class :background ,bg2 :foreground ,yellow-1)))
     `(magit-blame-sha1    ((,class :background ,bg2 :foreground ,func)))
     `(magit-blame-subject ((,class :background ,bg2 :foreground ,yellow-1)))
     `(magit-blame-summary ((,class :background ,bg2 :foreground ,yellow-1)))
     `(magit-blame-time    ((,class :background ,bg2 :foreground ,green-1)))
     `(magit-branch ((,class (:foreground ,const :inherit bold))))
     `(magit-branch-current ((,class (:background ,blue-2 :foreground ,blue-1 :inherit bold :box t))))
     `(magit-branch-local ((,class (:background ,blue-2 :foreground ,blue-1 :inherit bold))))
     `(magit-branch-remote ((,class (:background ,magenta-2 :foreground ,magenta-1 :inherit bold))))
     `(magit-diff-context-highlight ((,class (:background ,bg2 :foreground ,base))))
     `(magit-diff-file-header ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-file-heading ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-file-heading-highlight ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-hunk-header ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-diff-hunk-heading ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-diff-hunk-heading-highlight ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-hash ((,class (:foreground ,var))))
     `(magit-header-line ((,class (:background nil :foreground ,bg1 :box nil))))
     `(magit-hunk-heading           ((,class (:background ,bg2))))
     `(magit-hunk-heading-highlight ((,class (:background ,bg2))))
     `(magit-item-highlight ((,class :background ,bg2)))
     `(magit-log-author ((,class (:foreground ,func))))
     `(magit-log-head-label-head ((,class (:background ,yellow-1 :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-local ((,class (:background ,keyword :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-remote ((,class (:background ,suc :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-tags ((,class (:background ,red-1 :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-wip ((,class (:background ,yellow-1 :foreground ,bg1 :inherit bold))))
     `(magit-log-sha1 ((,class (:foreground ,str))))
     `(magit-process-ng ((,class (:foreground ,war :inherit bold))))
     `(magit-process-ok ((,class (:foreground ,func :inherit bold))))
     `(magit-reflog-amend ((,class (:foreground ,red-1))))
     `(magit-reflog-checkout ((,class (:foreground ,blue-1))))
     `(magit-reflog-cherry-pick ((,class (:foreground ,green-1))))
     `(magit-reflog-commit ((,class (:foreground ,green-1))))
     `(magit-reflog-merge ((,class (:foreground ,green-1))))
     `(magit-reflog-other ((,class (:foreground ,yellow-1))))
     `(magit-reflog-rebase ((,class (:foreground ,red-1))))
     `(magit-reflog-remote ((,class (:foreground ,yellow-1))))
     `(magit-reflog-reset ((,class (:foreground ,red-2))))
     `(magit-section-heading        ((,class (:foreground ,keyword :inherit bold))))
     `(magit-section-highlight      ((,class (:background ,bg2))))
     `(magit-section-title ((,class (:background ,bg1 :foreground ,keyword :inherit bold))))

;;;;; man
     `(Man-overstrike ((,class (:foreground ,head1 :inherit bold))))
     `(Man-reverse ((,class (:foreground ,highlight))))
     `(Man-underline ((,class (:foreground ,comp :underline t))))

;;;;; markdown
     `(markdown-blockquote-face       ((,class (:inherit org-quote :foreground nil))))
     `(markdown-bold-face             ((,class (:inherit bold :foreground nil))))
     `(markdown-code-face             ((,class (:inhert org-code :foreground nil))))
     `(markdown-header-delimiter-face ((,class (:inherit org-level-1 :foreground nil))))
     `(markdown-header-face           ((,class (:inherit org-level-1 :foreground nil))))
     `(markdown-header-face-1         ((,class (:inherit org-level-1 :foreground nil))))
     `(markdown-header-face-2         ((,class (:inherit org-level-2 :foreground nil))))
     `(markdown-header-face-3         ((,class (:inherit org-level-3 :foreground nil))))
     `(markdown-header-face-4         ((,class (:inherit org-level-4 :foreground nil))))
     `(markdown-header-face-5         ((,class (:inherit org-level-5 :foreground nil))))
     `(markdown-header-face-6         ((,class (:inherit org-level-6 :foreground nil))))
     `(markdown-inline-code-face      ((,class (:inherit org-code))))
     `(markdown-italic-face           ((,class (:inherit italic :foreground nil))))
     `(markdown-link-face             ((,class (:inherit org-link :foreground nil))))
     `(markdown-list-face             ((,class (:inherit org-list-dt :foreground nil))))
     `(markdown-metadata-key-face     ((,class (:inherit font-lock-keyword-face :foreground nil))))
     `(markdown-pre-face              ((,class (:inherit org-block :foreground nil))))
     `(markdown-url-face              ((,class (:inherit org-link :foreground nil))))


;;;;; mode-line
     `(mode-line ((,class (:foreground ,comment :family ,sans-font :background ,bg2 :box nil :height 80))))
     `(mode-line-buffer-id ((,class (:inherit bold :foreground ,comment :height 80))))
     `(mode-line-emphasis ((,class (:foreground ,highlight :height 80))))
     `(mode-line-highlight ((,class (:style nil :foreground ,highlight-dim :height 80))))
     `(mode-line-inactive  ((,class (:foreground ,comment :family ,sans-font :background ,bg1 :box nil :height 80))))

;;;;; mu4e
     `(mu4e-cited-1-face ((,class (:foreground ,base))))
     `(mu4e-cited-7-face ((,class (:foreground ,base))))
     `(mu4e-header-key-face ((,class (:foreground ,head1 :inherit bold))))
     `(mu4e-header-marks-face ((,class (:foreground ,comp))))
     `(mu4e-unread-face ((,class (:foreground ,yellow-1 :inherit bold))))
     `(mu4e-view-url-number-face ((,class (:foreground ,comp))))

;;;;; notmuch
     `(notmuch-search-date ((,class (:foreground ,func))))
     `(notmuch-search-flagged-face ((,class (:weight extra-bold))))
     `(notmuch-search-non-matching-authors ((,class (:foreground ,base-dim))))
     `(notmuch-search-unread-face ((,class (:background ,highlight-dim :box ,border))))
     `(notmuch-tag-face ((,class (:foreground ,keyword))))
     `(notmuch-tag-flagged ((,class (:foreground ,war))))

;;;;; neotree
     `(neo-dir-link-face ((,class (:foreground ,base :inherit nil :height 80))))
     `(neo-expand-btn-face ((,class (:foreground ,magenta-2 :height 80))))
     `(neo-file-link-face ((,class (:foreground ,base :height 80))))
     `(neo-root-dir-face ((,class (:foreground ,comment :height 80))))

;;;;; org
     `(org-agenda-clocking ((,class (:background ,highlight :foreground ,bg1))))
     `(org-agenda-date ((,class (:foreground ,var))))
     `(org-agenda-date-today ((,class (:foreground ,keyword :weight bold))))
     `(org-agenda-date-weekend ((,class (:foreground ,var))))
     `(org-agenda-diary ((,class (:foreground ,keyword))))
     `(org-agenda-done ((,class (:foreground ,comment :strike-through t))))
     `(org-agenda-structure ((,class (:foreground ,func :family ,sans-font :weight light :height 2.9))))
     `(org-block ((,class (:background ,cblk-bg :foreground ,cblk))))
     `(org-block-begin-line ((,class (:background ,cblk-bg :foreground ,cblk-ln :height 90))))
     `(org-block-end-line ((,class (:background ,cblk-bg :foreground ,cblk-ln :height 90))))
     `(org-clock-overlay ((,class (:foreground ,comp))))
     `(org-code ((,class (:inherit nil :foreground ,base-dim :height 100))))
     `(org-column ((,class (:background ,bg2))))
     `(org-column-title ((,class (:weight bold :foreground ,green-2))))
     `(org-date ((,class (:underline t :foreground ,const :height 90))))
     `(org-date-selected ((,class (:background ,highlight-dim :foreground ,bg1))))
     `(org-document-info ((,class (:slant italic))))
     `(org-document-info-keyword ((,class (:foreground ,meta :height 90))))
     `(org-document-title ((,class (:underline nil :height 230))))
     `(org-done ((,class (:foreground ,highlight-dim :background nil :strike-through nil ))))
     `(org-drawer ((,class (:foreground ,meta :height 80))))
     `(org-ellipsis ((,class (:foreground ,comment :underline nil))))
     `(org-footnote  ((,class (:slant italic :foreground ,base-dim))))
     `(org-headline-done ((,class (:strike-through nil :foreground ,base-dim))))
     `(org-hide ((,class (:foreground ,bg1))))
     `(org-indent ((,class (:inherit org-hide))))
     `(org-kbd ((,class (:inherit region :foreground ,base :box (:line-width 1 :style released-button)))))
     `(org-level-1 ((,class (:slant italic :height 180 :foreground ,base))))
     `(org-level-2 ((,class (:slant italic :height 170 :foreground ,base))))
     `(org-level-3 ((,class (:height 140 :foreground ,base))))
     `(org-level-4 ((,class (:inherit org-level-3))))
     `(org-level-5 ((,class (:inherit org-level-3))))
     `(org-level-6 ((,class (:inherit org-level-3))))
     `(org-level-7 ((,class (:inherit org-level-3))))
     `(org-level-8 ((,class (:inherit org-level-3))))
     `(org-link ((,class (:underline t :foreground ,mat))))
     `(org-meta-line ((,class (:foreground ,meta :height 70))))
     `(org-mode-line-clock-overrun ((,class (:foreground ,err :height 80))))
     `(org-priority ((,class (:foreground ,war :weight bold))))
     `(org-property-value ((,class (:foreground ,base-dim :height 80 :family ,base-font))))
     `(org-quote ((,class (:background ,cblk-bg :foreground ,cblk))))
     `(org-ref-cite-face ((,class (:foreground ,type))))
     `(org-scheduled ((,class (:foreground ,comp))))
     `(org-scheduled-today ((,class (:foreground ,func))))
     `(org-sexp-date ((,class (:foreground ,base))))
     `(org-special-keyword ((,class (:foreground ,meta :height 80))))
     `(org-tag ((,class (:foreground ,comment :height 80 :family ,base-font))))
     `(org-table ((,class (:foreground ,base :background nil :height 80))))
     `(org-time-grid ((,class (:foreground ,comment))))
     `(org-todo ((,class (:foreground ,highlight :weight bold :background nil :family ,et-font))))
     `(org-verbatim ((,class (:foreground ,keyword :height 100))))
     `(org-verse ((,class (:inherit org-quote :slant italic))))
     `(org-warning ((,class (:foreground ,err))))

;;;;; perspective
     `(persp-selected-face ((,class (:inherit bold :foreground ,func))))

;;;;; popup
     `(popup-enu-selection-face ((,class (:background ,ttip-sl :foreground ,base))))
     `(popup-face ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(popup-isearch-match ((,class (:inherit match))))
     `(popup-menu-face ((,class (:background ,ttip-bg :foreground ,base))))
     `(popup-menu-mouse-face ((,class (:inherit highlight))))
     `(popup-scroll-bar-background-face ((,class (:background ,bg2))))
     `(popup-scroll-bar-foreground-face ((,class (:background ,act2))))
     `(popup-tip-face ((,class (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))

;;;;; powerline
     `(powerline-active1 ((,class (:background ,bg1 :foreground ,base-dim))))
     `(powerline-active2 ((,class (:background ,bg1 :foreground ,base-dim))))
     `(powerline-inactive1 ((,class (:background ,bg1 :foreground ,comment))))
     `(powerline-inactive2 ((,class (:background ,bg1 :foreground ,comment))))

;;;;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class :foreground ,keyword)))
     `(rainbow-delimiters-depth-2-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-3-face ((,class :foreground ,str)))
     `(rainbow-delimiters-depth-4-face ((,class :foreground ,green-1)))
     `(rainbow-delimiters-depth-5-face ((,class :foreground ,yellow-1)))
     `(rainbow-delimiters-depth-6-face ((,class :foreground ,keyword)))
     `(rainbow-delimiters-depth-7-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-8-face ((,class :foreground ,str)))
     `(rainbow-delimiters-mismatched-face ((,class :foreground ,err :overline t)))
     `(rainbow-delimiters-unmatched-face ((,class :foreground ,err :overline t)))

;;;;; rcirc
     `(rcirc-bright-nick ((,class (:background ,magenta-2 :foreground ,yellow-1))))
     `(rcirc-dim-nick ((,class (:foreground ,base-dim))))
     `(rcirc-keyword ((,class (:background ,green-2 :foreground ,green-1))))
     `(rcirc-timestamp ((,class (:foreground ,keyword))))
     `(rcirc-track-keyword ((,class (:background ,green-1 :foreground ,bg1))))
     `(rcirc-url ((,class (:inherit link))))

;;;;; shm
     `(shm-current-face ((,class (:background ,green-2))))
     `(shm-quarantine-face ((,class (:background ,base-2))))

;;;;; show-paren
     `(show-paren-match ((,class (:background ,green-2))))
     `(show-paren-mismatch ((,class (:background ,base-2))))

;;;;; smartparens
     `(sp-pair-overlay-face ((,class (:background ,bg2 :foreground ,suc))))
     `(sp-show-pair-match-face ((,class (:background ,bg2 :inherit bold :underline t))))

;;;;; spaceline
     `(spaceline-flycheck-error  ((,class (:foreground ,err))))
     `(spaceline-flycheck-info   ((,class (:foreground ,keyword))))
     `(spaceline-flycheck-warning((,class (:foreground ,war))))
     `(spaceline-python-venv ((,class (:foreground ,comp))))

;;;;; swiper
     `(swiper-line-face ((,class (:background ,highlight :inherit bold))))
     `(swiper-match-face-1 ((,class (:inherit bold))))
     `(swiper-match-face-2 ((,class (:foreground ,head1 :underline t))))
     `(swiper-match-face-3 ((,class (:foreground ,head1 :underline t))))
     `(swiper-match-face-4 ((,class (:foreground ,head1 :underline t))))

;;;;; tabbar
     `(tabbar-button ((,class (:inherit tabbar-default ))))
     `(tabbar-button-highlight ((,class (:inherit tabbar-default))))
     `(tabbar-default ((,class (:background ,bg1 :foreground ,head1 :height 0.9))))
     `(tabbar-highlight ((,class (:underline t))))
     `(tabbar-selected ((,class (:inherit tabbar-default :foreground ,red-1 :weight bold))))
     `(tabbar-separator ((,class (:inherit tabbar-default))))
     `(tabbar-unselected ((,class (:inherit tabbar-default :background ,bg1 :slant italic :weight light))))

;;;;; term
     `(term ((,class (:foreground ,base :background ,bg1))))
     `(term-color-black ((,class (:foreground ,bg2))))
     `(term-color-blue ((,class (:foreground ,keyword))))
     `(term-color-cyan ((,class (:foreground ,cyan-1))))
     `(term-color-green ((,class (:foreground ,green-1))))
     `(term-color-red-1 ((,class (:foreground ,red-1))))
     `(term-color-red ((,class (:foreground ,red-2))))
     `(term-color-white ((,class (:foreground ,base))))
     `(term-color-yellow ((,class (:foreground ,yellow-1))))

;;;;; web-mode
     `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
     `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
     `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
     `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
     `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
     `(web-mode-html-tag-face ((,class (:foreground ,keyword))))
     `(web-mode-keyword-face ((,class (:foreground ,keyword))))
     `(web-mode-string-face ((,class (:foreground ,str))))
     `(web-mode-symbol-face ((,class (:foreground ,type))))
     `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
     `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))

;;;;; which-key
     `(which-key-command-description-face ((,class (:foreground ,base))))
     `(which-key-group-description-face ((,class (:foreground ,keyword))))
     `(which-key-key-face ((,class (:foreground ,func :inherit bold))))
     `(which-key-note-face ((,class (:foreground ,comment :slant italic))))
     `(which-key-separator-face ((,class (:background nil :foreground ,str))))
     `(which-key-special-key-face ((,class (:background ,func :foreground ,bg1))))

;;;;; which-function-mode
     `(which-func ((,class (:foreground ,func))))

;;;;; whitespace-mode
     `(whitespace-empty ((,class (:background nil :foreground ,yellow-1))))
     `(whitespace-indentation ((,class (:background nil :foreground ,war))))
     `(whitespace-line ((,class (:background nil :foreground ,comp))))
     `(whitespace-newline ((,class (:background nil :foreground ,comp))))
     `(whitespace-space ((,class (:background nil :foreground ,act2))))
     `(whitespace-space-after-tab ((,class (:background nil :foreground ,yellow-1))))
     `(whitespace-space-before-tab ((,class (:background nil :foreground ,yellow-1))))
     `(whitespace-tab ((,class (:background nil))))
     `(whitespace-trailing ((,class (:background ,err :foreground ,war))))

;;;;; other, need more work
     `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
     `(ffap ((,class (:foreground ,base))))
     `(flx-highlight-face ((,class (:foreground ,bg1 :underline nil))))
     `(icompletep-determined ((,class :foreground ,keyword)))
     `(js2-external-variable ((,class (:foreground ,comp))))
     `(js2-function-param ((,class (:foreground ,const))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
     `(js2-jsdoc-html-tag-name ((,class (:foreground ,keyword))))
     `(js2-jsdoc-value ((,class (:foreground ,str))))
     `(js2-private-function-call ((,class (:foreground ,const))))
     `(js2-private-member ((,class (:foreground ,base))))
     `(js3-error-face ((,class (:underline ,war))))
     `(js3-external-variable-face ((,class (:foreground ,var))))
     `(js3-function-param-face ((,class (:foreground ,keyword))))
     `(js3-instance-member-face ((,class (:foreground ,const))))
     `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
     `(js3-warning-face ((,class (:underline ,keyword))))
     `(slime-repl-inputed-output-face ((,class (:foreground ,comp))))
     `(trailing-whitespace ((,class :foreground nil :background ,err)))
     `(undo-tree-visualizer-current-face ((,class :foreground ,keyword)))
     `(undo-tree-visualizer-default-face ((,class :foreground ,base)))
     `(undo-tree-visualizer-register-face ((,class :foreground ,comp)))
     `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var))))

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
