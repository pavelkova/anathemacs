
;;; init.el
;; Author: e.g. pavelka
;; URL: https://github.com/egpavelka/anathemacs
;; Version: 0.1.0
;; Keywords: emacs

;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;

;;; Commentary:
;;

;;; Code:

(push (expand-file-name "anathemacs" user-emacs-directory) load-path)

(let ((default-directory  "~/.emacs.d/anathemacs"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(load-theme 'anathemacs t)

(eval-when-compile
  (require 'package)

  (unless (assoc-default "melpa" package-archives)
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
  (unless (assoc-default "org" package-archives)
    (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))
  (unless (assoc-default "gnu" package-archives)
    (add-to-list 'package-archives '("org" . "https://elpa.gnu.org/packages/") t))

  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t
        use-package-always-defer t
        use-package-verbose t))

;; init
(require 'ana-variables)
(require 'ana-keybindings)
(require 'ana-base)
(require 'ana-org-base)
;; tools
(require 'ana-archiving)
(require 'ana-completion)
(require 'ana-exporting)
(require 'ana-ivy)
(require 'ana-processors)
(require 'ana-snippets)
;; ui
(require 'ana-ui-base)
(require 'ana-org-ui-base)
(require 'ana-editing)
(require 'ana-layout)
(require 'ana-modeline)
(require 'ana-navigation)
(require 'ligature-support)
(require 'rogue-margins)
;; REALMS
;; data
(require 'ana-databases)
(require 'ana-jupyter)
(require 'ana-math)
(require 'ana-statistics)
(require 'ana-visualization)
;; development
(require 'ana-c)
(require 'ana-elisp)
(require 'ana-go)
(require 'ana-haskell)
(require 'ana-java)
(require 'ana-js-react)
(require 'ana-js)
(require 'ana-markdown)
(require 'ana-php)
(require 'ana-python-django)
(require 'ana-python)
(require 'ana-ruby-rails)
(require 'ana-ruby)
(require 'ana-web)
;; personal
(require 'ana-dokuwiki)
(require 'ana-filing)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
(require 'ana-custom-bullets)
(require 'ana-planning)
(require 'ana-version-control)
(require 'ana-dokuwiki)
(require 'ana-projectile)
(require 'ana-scheduling)
;; research
(require 'ana-annotation)
(require 'ana-reading)
(require 'ana-reference)
;; system
(require 'ana-server)
(require 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes '("" default))
 '(iswitchb-mode nil)
 '(org-agenda-files
   '("/home/gigi/Media/documentos/org/_aprendizaje.org" "/home/gigi/Media/documentos/org/_desarrollo.org" "/home/gigi/Media/documentos/org/_escritura.org" "/home/gigi/Media/documentos/org/_investigaciones.org" "/home/gigi/Media/documentos/org/_trabajo.org" "/home/gigi/Media/documentos/org/_vida.org" "/home/gigi/Media/documentos/org/calendario.org" "/home/gigi/Media/documentos/org/codex.org" "/home/gigi/Media/documentos/org/referencia.org"))
 '(org-index-id "0427fbd1-a5b8-4463-87e5-69901e770b6b")
 '(package-selected-packages
   '(gitlab yasnippet-snippets yarn-mode xterm-color writeroom-mode writegood-mode wolfram-mode wiki-summary which-key web-mode web-beautify wc-mode virtualenvwrapper use-package undo-tree tramp-term toc-org tagedit sudo-edit stickyfunc-enhance sqlformat sql-indent spaceline-all-the-icons smex smartparens scss-mode sass-mode sane-term rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rjsx-mode react-snippets rbenv rainbow-mode pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails pretty-mode popwin pony-mode pip-requirements pg pandoc-mode ox-twbs ox-pandoc outline-magic origami org-web-tools org-ref org-projectile org-present org-pomodoro org-noter org-mime org-journal-list org-journal org-index org-download org-context org-cliplink org-chef org-caldav org-bullets org-brain org-board ob-sql-mode nlinum-relative nginx-mode neotree mwim multi-term mmm-mode mixed-pitch minitest mingus md4rd matlab-mode markdown-toc markdown-preview-mode magithub magic-latex-buffer livid-mode live-py-mode latex-pretty-symbols json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-rich ivy-omni-org ivy-mpdel ivy-hydra intero insert-shebang hy-mode hindent helm-make graphviz-dot-mode google-translate go-projectile gnuplot gitignore-mode gitconfig-mode git-gutter-fringe gist ghc general format-all flycheck-irony flycheck-haskell flx fish-mode fish-completion eyebrowse ess-smart-equals ess-R-data-view ereader enh-ruby-mode emoji-cheat-sheet-plus emms emmet-mode emamux emacsql ein ebib dokuwiki-mode dokuwiki djangonaut django-snippets django-commands diminish delight define-word dashboard-project-status cython-mode csv-mode counsel-tramp counsel-projectile company-web company-php company-nginx company-math company-go company-emoji company-emacs-eclim company-cabal company-anaconda chruby cdlatex calfw-org calfw bundler browse-at-remote better-defaults bash-completion auto-package-update auto-dictionary auctex-latexmk all-the-icons-ivy all-the-icons-dired activity-watch-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
