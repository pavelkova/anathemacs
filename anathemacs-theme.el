;;; anathemacs-theme.el --- 

;;; Code:

(deftheme anathemacs)

;; (load-file (concat defaut-directory "anathemacs-theme-colors.el"))

(let ((class '((class color) (min-colors 89)))

   (bg1             "#091f2c")
   (bg2             "#203a3e")(cblk-bg "#203a3e")(ttip-bg "#203a3e")(comment-bg "#203a3e")
   (bg3             "#203a3e")(cblk-ln-bg "#203a3e")
   (bg4             "#203a3e")
   (base-dim        "#ebddd7")(head1   "#ebddd7")(ttip  "#ebddd7")(cblk "#ebddd7")
   (base            "#fefef7")
   (cyan            "#797543")(const         "#797543")
   (aqua            "#ae7583")(meta          "#ae7583")
   (aqua-bg         "#bc94a3")(war           "#bc94a3")(err "#bc94a3")
   (green           "#488776")(lnum          "#488776")(cblk-ln  "#488776")
   (green-bg        "#9CA259")(suc           "#9CA259")
   (green-bg-s      "#9CA259")(highlight     "#9CA259")(mat "#9CA259")
   (blue            "#30a490")(func          "#30a490")
   (blue-bg         "#8abeb7")(ttip-sl       "#8abeb7")(comment "#8abeb7")
   (blue-bg-s       "#ecccc2")(act2          "#ecccc2")
   (magenta         "#d07c67")(cursor        "#d07c67")(type "#d07c67")
   (red             "#e6958b")(var           "#e6958b")
   (red-bg          "#bc94a3")(comp          "#bc94a3")(highlight-dim "#bc94a3")
   (red-bg-s        "#ecccc2")(act1          "#ecccc2")(str "#ecccc2")
   (yellow          "#e6958b")(keyword       "#e6958b")(mat           "#e6958b")
   (yellow-bg       "#cac46e")(border        "#cac46e")

   ;; fonts
   (base-font    "Fira Code")
   (et-font      "ETBembo")
   (sans-font    "Lato")
   )

    (custom-theme-set-faces
     `anathemacs

;;;;; basics
     `(cursor ((,class (:background ,cursor))))
     `(custom-button ((,class :background ,bg2 :foreground ,base :box (:line-width 2 :style released-button))))
     `(default ((,class (:background ,bg1 :foreground ,base :family ,base-font))))
     `(default-italic ((,class (:italic t))))
     `(error ((,class (:foreground ,err))))
     `(eval-sexp-fu-flash ((,class (:background ,suc :foreground ,bg1))))
     `(eval-sexp-fu-flash-error ((,class (:background ,err :foreground ,bg1))))
     `(fixed-pitch ((,class (:family ,base-font :weight normal :slant normal :height 1.2))))
     `(font-lock-builtin＄-face ((,class (:foreground ,keyword))))
     `(font-lock-comment-face ((,class (:foreground ,comment :family ,sans-font :height 0.9))))
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
     `(fringe ((,class (:background ,bg1 :foreground ,base))))
     `(header-line ((,class :background nil :inherit nil)))
     `(highlight ((,class (:foreground ,bg1 :background ,highlight))))
     `(hl-line ((,class (:background ,bg2))))
     `(isearch ((,class (:foreground ,bg1 :background ,mat))))
     `(lazy-highlight ((,class (:background ,highlight-dim :weight normal))))
     `(link ((,class (:foreground ,keyword :underline t))))
     `(link-visited ((,class (:foreground ,comp :underline t))))
     `(match ((,class (:background ,highlight :foreground ,bg2))))
     `(minibuffer-prompt ((,class (:inherit bold :foreground ,const))))
     `(page-break-lines ((,class (:foreground ,border :background ,border))))
     `(region ((,class (:background ,highlight))))
     `(secondary-selection ((,class (:background ,bg3))))
     `(shadow ((,class (:foreground ,base-dim))))
     `(success ((,class (:foreground ,suc))))
     `(tooltip ((,class (:background ,ttip-sl :foreground ,base :bold nil :italic nil :underline nil))))
     `(variable-pitch ((,class (:family ,et-font :weight light :height 1.4))))
     `(vertical-border ((,class (:foreground ,border))))
     `(warning ((,class (:foreground ,war))))

;;;;; ahs
     `(ahs-face ((,class (:background ,highlight))))
     `(ahs-plugin-whole-buffer-face ((,class (:background ,mat :foreground ,bg1))))

;;;;; anzu-mode
     `(anzu-mode-line ((,class (:foreground ,yellow :inherit bold))))

;;;;; auto-complete
     `(ac-completion-face ((,class (:background ,ttip-bg :foreground ,ttip))))

;;;;; avy
     `(avy-lead-face   ((,class (:background ,blue-bg :foreground ,magenta))))
     `(avy-lead-face-0 ((,class (:background ,blue-bg :foreground ,blue))))
     `(avy-lead-face-1 ((,class (:background ,blue-bg :foreground ,magenta))))
     `(avy-lead-face-2 ((,class (:background ,blue-bg :foreground ,blue))))

;;;;; cider
     `(cider-enlightened ((,class (:background nil :box (:color ,yellow :line-width -1 :style nil) :foreground ,yellow))))
     `(cider-enlightened-local ((,class (:foreground ,yellow))))
     `(cider-instrumented-face ((,class (:background nil :box (:color ,red :line-width -1 :style nil) :foreground ,red))))
     `(cider-result-overlay-face ((,class (:background nil :box (:color ,blue :line-width -1 :style nil) :foreground ,blue))))
     `(cider-test-error-face ((,class (:background ,war :foreground ,bg1))))
     `(cider-test-failure-face ((,class (:background ,err :foreground ,bg1))))
     `(cider-test-success-face ((,class (:background ,suc :foreground ,bg1))))
     `(cider-traced-face ((,class :box (:color ,cyan :line-width -1 :style nil))))

;;;;; company
     `(company-echo-common ((,class (:background ,bg1 :foreground ,base))))
     `(company-preview ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-preview-common ((,class (:background ,ttip-bg :foreground ,base))))
     `(company-preview-search ((,class (:inherit match))))
     `(company-scrollbar-bg ((,class (:background ,bg2))))
     `(company-scrollbar-fg ((,class (:background ,act2))))
     `(company-template-field ((,class (:inherit region))))
     `(company-tooltip ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-tooltip-annotation ((,class (:foreground ,keyword))))
     `(company-tooltip-common ((,class (:background ,ttip-bg :foreground ,base))))
     `(company-tooltip-common-selection ((,class (:foreground ,base))))
     `(company-tooltip-mouse ((,class (:inherit highlight))))
     `(company-tooltip-search ((,class (:inherit match))))
     `(company-tooltip-selection ((,class (:background ,ttip-sl :foreground ,base))))

;;;;; diff
     `(diff-added             ((,class :background nil :foreground ,green)))
     `(diff-changed           ((,class :background nil :foreground ,keyword)))
     `(diff-header            ((,class :background ,cblk-ln-bg :foreground ,func)))
     `(diff-file-header       ((,class :background ,cblk-ln-bg :foreground ,cblk)))
     `(diff-indicator-added   ((,class :background nil :foreground ,green)))
     `(diff-indicator-changed ((,class :background nil :foreground ,keyword)))
     `(diff-indicator-removed ((,class :background nil :foreground ,red)))
     `(diff-refine-added      ((,class :background ,green :foreground ,bg4)))
     `(diff-refine-changed    ((,class :background ,keyword :foreground ,bg4)))
     `(diff-refine-removed    ((,class :background ,red :foreground ,bg4)))
     `(diff-removed           ((,class :background nil :foreground ,red)))

;;;;; diff-hl
     `(diff-hl-change ((,class :background ,blue-bg :foreground ,blue)))
     `(diff-hl-delete ((,class :background ,red-bg :foreground ,red)))
     `(diff-hl-insert ((,class :background ,green-bg :foreground ,green)))

;;;;; dired
     `(dired-directory ((,class (:foreground ,keyword :background ,bg1 :inherit bold))))
     `(dired-flagged ((,class (:foreground ,red))))
     `(dired-header ((,class (:foreground ,comp :inherit bold))))
     `(dired-ignored ((,class (:inherit shadow))))
     `(dired-mark ((,class (:foreground ,comp :inherit bold))))
     `(dired-marked ((,class (:foreground ,magenta :inherit bold))))
     `(dired-perm-write ((,class (:foreground ,base :underline t))))
     `(dired-symlink ((,class (:foreground ,cyan :background ,bg1 :inherit bold))))
     `(dired-warning ((,class (:foreground ,war))))

;;;;;; doom-neotree
     `(doom-neotree-data-file-face ((,class(:foreground ,keyword :height 0.9))))
     `(doom-neotree-dir-face ((,class(:family ,sans-font :weight normal :height 0.9))))
     `(doom-neotree-file-face ((,class(:height 0.9))))
     `(doom-neotree-hidden-file-face ((,class(:foreground ,act2 :height 0.9))))
     `(doom-neotree-media-file-face ((,class(:foreground ,highlight-dim :height 0.9))))
     `(doom-neotree-text-file-face ((,class(::height 0.9))))

;;;;; ediff
     `(ediff-current-diff-A ((,class(:background ,red-bg-s :foreground ,red))))
     `(ediff-current-diff-Ancestor ((,class(:background ,aqua-bg :foreground ,aqua))))
     `(ediff-current-diff-B ((,class(:background ,green-bg-s :foreground ,green))))
     `(ediff-current-diff-C ((,class(:background ,blue-bg :foreground ,blue))))
     `(ediff-even-diff-A ((,class(:background ,bg3))))
     `(ediff-even-diff-Ancestor ((,class(:background ,bg3))))
     `(ediff-even-diff-B ((,class(:background ,bg3))))
     `(ediff-even-diff-C ((,class(:background ,bg3))))
     `(ediff-fine-diff-A ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-Ancestor ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-B ((,class(:background nil :inherit bold))))
     `(ediff-fine-diff-C ((,class(:background nil :inherit bold))))
     `(ediff-odd-diff-A ((,class(:background ,bg4))))
     `(ediff-odd-diff-Ancestor ((,class(:background ,bg4))))
     `(ediff-odd-diff-B ((,class(:background ,bg4))))
     `(ediff-odd-diff-C ((,class(:background ,bg4))))

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
     `(erc-nick-prefix-face ((,class (:foreground ,yellow))))
     `(erc-notice-face ((,class (:foreground ,str))))
     `(erc-prompt-face ((,class (:foreground ,mat :inherit bold))))
     `(erc-timestamp-face ((,class (:foreground ,keyword))))

;;;;; eshell
     `(eshell-ls-archive ((,class (:foreground ,red :inherit bold))))
     `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory ((,class (:foreground ,keyword :inherit bold))))
     `(eshell-ls-executable ((,class (:foreground ,suc :inherit bold))))
     `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special ((,class (:foreground ,yellow :inherit bold))))
     `(eshell-ls-symlink ((,class (:foreground ,cyan :inherit bold))))
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
     `(git-gutter-fr:added ((,class (:foreground ,green :inherit bold))))
     `(git-gutter-fr:deleted ((,class (:foreground ,war :inherit bold))))
     `(git-gutter-fr:modified ((,class (:foreground ,keyword :inherit bold))))

;;;;; git-timemachine
     `(git-timemachine-minibuffer-detail-face ((,class (:foreground ,blue :inherit bold :background ,blue-bg))))

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
     `(helm-ff-dotted-symlink-directory ((,class (:foreground ,cyan :background ,bg1 :inherit bold))))
     `(helm-ff-executable ((,class (:foreground ,suc :background ,bg1 :weight normal))))
     `(helm-ff-file ((,class (:foreground ,base :background ,bg1 :weight normal))))
     `(helm-ff-invalid-symlink ((,class (:foreground ,red :background ,bg1 :inherit bold))))
     `(helm-ff-prefix ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
     `(helm-ff-symlink ((,class (:foreground ,cyan :background ,bg1 :inherit bold))))
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
     `(helm-visible-mark ((,class (:foreground ,keyword :background ,bg3))))

;;;;; helm-swoop
     `(helm-swoop-target-line-block-face ((,class (:foreground ,bg1 :background ,highlight))))
     `(helm-swoop-target-line-face ((,class (:background ,highlight :foreground ,bg1))))
     `(helm-swoop-target-word-face ((,class (:background ,highlight-dim :foreground ,bg1))))

;;;;; highlights
     `(hi-green  ((,class (:foreground ,green :background ,green-bg))))
     `(hi-yellow ((,class (:foreground ,yellow :background ,yellow-bg))))

;;;;; highlight-indentation
     `(highlight-indentation-face ((,class (:background ,comment-bg))))

;;;;; highlight-symbol
     `(highlight-symbol-face ((,class (:background ,bg2))))

;;;;; hydra
     `(hydra-face-blue ((,class (:foreground ,blue))))
     `(hydra-face-red ((,class (:foreground ,red))))

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
     `(ivy-current-match ((,class (:background ,highlight :inherit bold))))
     `(ivy-minibuffer-match-face-1 ((,class (:inherit bold))))
     `(ivy-minibuffer-match-face-2 ((,class (:foreground ,head1 :underline t))))
     `(ivy-minibuffer-match-face-3 ((,class (:foreground ,head1 :underline t))))
     `(ivy-minibuffer-match-face-4 ((,class (:foreground ,head1 :underline t))))
     `(ivy-remote ((,class (:foreground ,cyan))))

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

;;;;; magit
     `(magit-blame-culprit ((,class :background ,yellow-bg :foreground ,yellow)))
     `(magit-blame-date    ((,class :background ,yellow-bg :foreground ,green)))
     `(magit-blame-hash    ((,class :background ,yellow-bg :foreground ,func)))
     `(magit-blame-header  ((,class :background ,yellow-bg :foreground ,green)))
     `(magit-blame-heading ((,class :background ,yellow-bg :foreground ,green)))
     `(magit-blame-name    ((,class :background ,yellow-bg :foreground ,yellow)))
     `(magit-blame-sha1    ((,class :background ,yellow-bg :foreground ,func)))
     `(magit-blame-subject ((,class :background ,yellow-bg :foreground ,yellow)))
     `(magit-blame-summary ((,class :background ,yellow-bg :foreground ,yellow)))
     `(magit-blame-time    ((,class :background ,yellow-bg :foreground ,green)))
     `(magit-branch ((,class (:foreground ,const :inherit bold))))
     `(magit-branch-current ((,class (:background ,blue-bg :foreground ,blue :inherit bold :box t))))
     `(magit-branch-local ((,class (:background ,blue-bg :foreground ,blue :inherit bold))))
     `(magit-branch-remote ((,class (:background ,aqua-bg :foreground ,aqua :inherit bold))))
     `(magit-diff-context-highlight ((,class (:background ,bg2 :foreground ,base))))
     `(magit-diff-file-header ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-file-heading ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-file-heading-highlight ((,class (:background ,comment-bg :foreground ,comment))))
     `(magit-diff-hunk-header ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-diff-hunk-heading ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-diff-hunk-heading-highlight ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(magit-hash ((,class (:foreground ,var))))
     `(magit-header-line ((,class (:background nil :foreground ,bg1 :box nil))))
     `(magit-hunk-heading           ((,class (:background ,bg3))))
     `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
     `(magit-item-highlight ((,class :background ,bg2)))
     `(magit-log-author ((,class (:foreground ,func))))
     `(magit-log-head-label-head ((,class (:background ,yellow :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-local ((,class (:background ,keyword :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-remote ((,class (:background ,suc :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-tags ((,class (:background ,magenta :foreground ,bg1 :inherit bold))))
     `(magit-log-head-label-wip ((,class (:background ,cyan :foreground ,bg1 :inherit bold))))
     `(magit-log-sha1 ((,class (:foreground ,str))))
     `(magit-process-ng ((,class (:foreground ,war :inherit bold))))
     `(magit-process-ok ((,class (:foreground ,func :inherit bold))))
     `(magit-reflog-amend ((,class (:foreground ,magenta))))
     `(magit-reflog-checkout ((,class (:foreground ,blue))))
     `(magit-reflog-cherry-pick ((,class (:foreground ,green))))
     `(magit-reflog-commit ((,class (:foreground ,green))))
     `(magit-reflog-merge ((,class (:foreground ,green))))
     `(magit-reflog-other ((,class (:foreground ,cyan))))
     `(magit-reflog-rebase ((,class (:foreground ,magenta))))
     `(magit-reflog-remote ((,class (:foreground ,cyan))))
     `(magit-reflog-reset ((,class (:foreground ,red))))
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
     `(mode-line           ((,class (:foreground ,base :background ,bg2 :box nil))))
     `(mode-line-buffer-id ((,class (:inherit bold :foreground ,func))))
     `(mode-line-inactive  ((,class (:foreground ,base :background ,bg1 :box nil))))

;;;;; mu4e
     `(mu4e-cited-1-face ((,class (:foreground ,base))))
     `(mu4e-cited-7-face ((,class (:foreground ,base))))
     `(mu4e-header-key-face ((,class (:foreground ,head1 :inherit bold))))
     `(mu4e-header-marks-face ((,class (:foreground ,comp))))
     `(mu4e-unread-face ((,class (:foreground ,yellow :inherit bold))))
     `(mu4e-view-url-number-face ((,class (:foreground ,comp))))

;;;;; notmuch
     `(notmuch-search-date ((,class (:foreground ,func))))
     `(notmuch-search-flagged-face ((,class (:weight extra-bold))))
     `(notmuch-search-non-matching-authors ((,class (:foreground ,base-dim))))
     `(notmuch-search-unread-face ((,class (:background ,highlight-dim :box ,border))))
     `(notmuch-tag-face ((,class (:foreground ,keyword))))
     `(notmuch-tag-flagged ((,class (:foreground ,war))))

;;;;; neotree
     `(neo-dir-link-face ((,class (:foreground ,base :inherit nil :height 0.8))))
     `(neo-expand-btn-face ((,class (:foreground ,red-bg :height 0.8))))
     `(neo-file-link-face ((,class (:foreground ,base :height 0.8))))
     `(neo-root-dir-face ((,class (:foreground ,comment :height 0.8))))

;;;;; org
     `(org-agenda-clocking ((,class (:background ,highlight :foreground ,bg1))))
     `(org-agenda-date ((,class (:foreground ,var :inherit nil))))
     `(org-agenda-date-today ((,class (:foreground ,keyword :inherit bold))))
     `(org-agenda-date-weekend ((,class (:inherit bold :foreground ,var))))
     `(org-agenda-diary ((,class (:family ,et-font :height 1.3))))
     `(org-agenda-done ((,class (:foreground ,comment :strike-through t :height 1.3))))
     `(org-agenda-structure ((,class (:inherit bold :foreground ,comp))))
     `(org-block ((,class (:background ,cblk-bg :foreground ,cblk))))
     `(org-block-begin-line ((,class (:background ,cblk-ln-bg :foreground ,cblk-ln :height 0.8))))
     `(org-block-end-line ((,class (:background ,cblk-ln-bg :foreground ,cblk-ln :height 0.8))))
     `(org-clock-overlay ((,class (:foreground ,comp))))
     `(org-code ((,class (:inherit nil :foreground ,base-dim))))
     `(org-column ((,class (:background ,bg3))))
     `(org-column-title ((,class (:foreground ,green-bg-s :family ,sans-font :height 0.9))))
     `(org-date ((,class (:underline t :foreground ,var :height 0.8))))
     `(org-date-selected ((,class (:background ,blue :foreground ,base-dim))))
     `(org-default ((,class (:inherit nil :family ,et-font :height 1.4))))
     `(org-document-info ((,class (:slant italic))))
     `(org-document-info-keyword ((,class (:foreground ,comment :height 0.8 :family ,sans-font))))
     `(org-document-title ((,class (:inherit nil :family ,et-font :foreground ,base-dim :underline nil :height 2.5))))
     `(org-done ((,class (:foreground ,comment :background nil :strike-through t ))))
     `(org-ellipsis ((,class (:foreground ,comment :underline nil))))
     `(org-footnote  ((,class (:family ,et-font :slant italic :foreground ,comment))))
     `(org-headline-done ((,class (:family ,et-font :strike-through t))))
     `(org-hide ((,class (:foreground ,bg1))))
     `(org-indent ((,class (:inherit org-hide))))
     `(org-kbd ((,class (:inherit region :foreground ,base :box (:line-width 1 :style released-button)))))
     `(org-level-1 ((,class (:inherit nil :family ,et-font :height 1.8))))
     `(org-level-2 ((,class (:inherit nil :family ,et-font :slant italic :height 1.6))))
     `(org-level-3 ((,class (:family ,et-font :height 1.2))))
     `(org-level-4 ((,class (:family ,et-font :height 1.2))))
     `(org-level-5 ((,class (:family ,et-font :height 1.2))))
     `(org-level-6 ((,class (:family ,et-font :height 1.2))))
     `(org-level-7 ((,class (:family ,et-font :height 1.2))))
     `(org-level-8 ((,class (:family ,et-font :height 1.2))))
     `(org-link ((,class (:underline t :foreground ,base-dim))))
     `(org-meta-line ((,class (:foreground ,meta))))
     `(org-mode-line-clock-overrun ((,class (:foreground ,err))))
     `(org-priority ((,class (:foreground ,war :inherit bold))))
     `(org-quote ((,class (:inherit org-block :family ,et-font))))
     `(org-ref-cite-face ((,class (:foreground ,type))))
     `(org-scheduled ((,class (:foreground ,comp))))
     `(org-scheduled-today ((,class (:foreground ,func))))
     `(org-sexp-date ((,class (:foreground ,base))))
     `(org-special-keyword ((,class (:foreground ,func :height 0.8))))
     `(org-table ((,class (:foreground ,base :background nil :height 0.9))))
     `(org-time-grid ((,class (:foreground ,comment))))
     `(org-todo ((,class (:foreground ,func :inherit bold :height 1.5 :background nil))))
     `(org-verbatim ((,class (:foreground ,keyword))))
     `(org-verse ((,class (:inherit org-block :family ,et-font :slant italic))))
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
     `(powerline-active1 ((,class (:background ,bg1 :foreground ,base))))
     `(powerline-active2 ((,class (:background ,bg1 :foreground ,base))))
     `(powerline-inactive1 ((,class (:background ,bg1 :foreground ,base))))
     `(powerline-inactive2 ((,class (:background ,bg1 :foreground ,base))))

;;;;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class :foreground ,keyword)))
     `(rainbow-delimiters-depth-2-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-3-face ((,class :foreground ,str)))
     `(rainbow-delimiters-depth-4-face ((,class :foreground ,green)))
     `(rainbow-delimiters-depth-5-face ((,class :foreground ,yellow)))
     `(rainbow-delimiters-depth-6-face ((,class :foreground ,keyword)))
     `(rainbow-delimiters-depth-7-face ((,class :foreground ,func)))
     `(rainbow-delimiters-depth-8-face ((,class :foreground ,str)))
     `(rainbow-delimiters-mismatched-face ((,class :foreground ,err :overline t)))
     `(rainbow-delimiters-unmatched-face ((,class :foreground ,err :overline t)))

;;;;; rcirc
     `(rcirc-bright-nick ((,class (:background ,aqua-bg :foreground ,cyan))))
     `(rcirc-dim-nick ((,class (:foreground ,base-dim))))
     `(rcirc-keyword ((,class (:background ,green-bg-s :foreground ,green))))
     `(rcirc-timestamp ((,class (:foreground ,keyword))))
     `(rcirc-track-keyword ((,class (:background ,green :foreground ,bg1))))
     `(rcirc-url ((,class (:inherit link))))

;;;;; shm
     `(shm-current-face ((,class (:background ,green-bg-s))))
     `(shm-quarantine-face ((,class (:background ,red-bg-s))))

;;;;; show-paren
     `(show-paren-match ((,class (:background ,green-bg-s))))
     `(show-paren-mismatch ((,class (:background ,red-bg-s))))

;;;;; smartparens
     `(sp-pair-overlay-face ((,class (:background ,highlight :foreground nil))))
     `(sp-show-pair-match-face ((,class (:background ,bg3 :inherit bold :underline t))))

;;;;; spaceline
     `(spaceline-flycheck-error  ((,class (:foreground ,err))))
     `(spaceline-flycheck-info   ((,class (:foreground ,keyword))))
     `(spaceline-flycheck-warning((,class (:foreground ,war))))
     `(spaceline-python-venv ((,class (:foreground ,comp))))

;;;;; spacemacs-specific
     `(spacemacs-transient-state-title-face ((,class (:background nil :foreground ,comp :box nil :inherit bold))))

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
     `(tabbar-selected ((,class (:inherit tabbar-default :foreground ,magenta :weight bold))))
     `(tabbar-separator ((,class (:inherit tabbar-default))))
     `(tabbar-unselected ((,class (:inherit tabbar-default :background ,bg1 :slant italic :weight light))))

;;;;; term
     `(term ((,class (:foreground ,base :background ,bg1))))
     `(term-color-black ((,class (:foreground ,bg4))))
     `(term-color-blue ((,class (:foreground ,keyword))))
     `(term-color-cyan ((,class (:foreground ,cyan))))
     `(term-color-green ((,class (:foreground ,green))))
     `(term-color-magenta ((,class (:foreground ,magenta))))
     `(term-color-red ((,class (:foreground ,red))))
     `(term-color-white ((,class (:foreground ,base))))
     `(term-color-yellow ((,class (:foreground ,yellow))))

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
     `(which-key-separator-face ((,class (:background nil :foreground ,str))))
     `(which-key-special-key-face ((,class (:background ,func :foreground ,bg1))))

;;;;; which-function-mode
     `(which-func ((,class (:foreground ,func))))

;;;;; whitespace-mode
     `(whitespace-empty ((,class (:background nil :foreground ,yellow))))
     `(whitespace-indentation ((,class (:background nil :foreground ,war))))
     `(whitespace-line ((,class (:background nil :foreground ,comp))))
     `(whitespace-newline ((,class (:background nil :foreground ,comp))))
     `(whitespace-space ((,class (:background nil :foreground ,act2))))
     `(whitespace-space-after-tab ((,class (:background nil :foreground ,yellow))))
     `(whitespace-space-before-tab ((,class (:background nil :foreground ,yellow))))
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
