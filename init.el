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
(require 'ana-completion)
(require 'ana-exporting)
(require 'ana-ivy)
(require 'ana-processors)
(require 'ana-snippets)
(require 'ana-web)
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
(require 'ana-lisp)
(require 'ana-lua)
(require 'ana-markdown)
(require 'ana-php)
(require 'ana-python-django)
(require 'ana-python)
(require 'ana-ruby-rails)
(require 'ana-ruby)
(require 'ana-web)
;; personal
(require 'ana-communication)
(require 'ana-dokuwiki)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
(require 'ana-capture)
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
(require 'ana-os)
(require 'ana-server)
(require 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4ea8ea07339e4c0530c02aa96d12ad1bb12872b63a18ba0543a50e6bd8937d9e" "e97fcfde7a0c38e3212a6d9282189f2b0c31b84bdd2c621e40b65d3cdc9198d2" "5379087a92ca2c9138ce812e00e0425402d8e375a8a849e5089abee8783fb1d3" "b4c55e1825d972ed4c0150371eb085a4ea55edd6d22142ead9ed98a0204978d8" "40c191bab54bce43800bb187d91a9aa1f45ecf3df675b460bdec526560aafcb3" "f68295db3e0f80280e07646accc32cece8ce10fd731dc4f556e9f1230fa663bb" "c67ac9726907653876b2b2aec0023f40c81abadd8fd356a643f3553474b9b6d9" "a6d29666c09cadc2823df56e069d7cb65aa93cb714ab5001658714d0cd44b2f3" "7172ebeef51239a5090e7ec01d1e30810acb8b37929cc6aae6c255e54cd66248" "59d2d0d793a7b50c0f29dfa164561850bb6f7085b3f5f66d9912761e514910f5" "9b01ac79cddc7a7e2ad94b0338c2f9f0618d7b590d494ac79df562ce9c86716a" "0948c29d02c37e9374e520d48f668091fbc7eb4ea9fe609c1abbcd4550ce502a" "a6d43ac50891095ed9eba3c3a3500ddcb689b9a1f2b7db906d6b86ff4ba51adf" "80829101844ca03702ef6f8cb7ca36bd11bbe45b342c089acf680822d2767ecc" "9d107ad2ab0a3785c2f9db3f86ed28ada9ea5ab607c7b3989b034eb546dcb42f")))
 '(org-agenda-files
   (quote
    ("/home/gigi/Media/documentos/org/vida/salud/entrenamientos.org" "/home/gigi/Media/documentos/org/calendario.org" "/home/gigi/Media/documentos/org/codex.org" "/home/gigi/Media/documentos/org/mobile.org")))
 '(org-modules
   (quote
    (org-bibtex org-ctags org-docview org-element org-habit org-id org-info org-inlinetask)))
 '(package-selected-packages
   (quote
    (yasnippet-snippets yarn-mode ws-butler writegood-mode wolfram-mode wiki-summary which-key wc-mode use-package undo-tree undo-propose twittering-mode tramp-term systemd symon sqlformat spaceline smex smartparens slime shx sane-term rvm rubocop robe react-snippets pyvenv pytest py-isort projectile-rails pretty-mode pony-mode pippel pip-requirements persp-projectile persp-mode pandoc-mode ox-pandoc outline-magic origami org-web-tools org-ref org-projectile org-pomodoro org-noter org-journal org-download org-cliplink org-chef org-caldav org-bullets org-brain org-board olivetti ob-sql-mode npm-mode nix-mode nginx-mode neotree mwim multiple-cursors mu4e-conversation mu4e-alert mixed-pitch md4rd matlab-mode markdown-toc markdown-preview-mode magithub magic-latex-buffer live-py-mode linguistic latex-pretty-symbols json-mode ivy-yasnippet ivy-rich ivy-omni-org intero imenu-list hy-mode hindent graphviz-dot-mode google-translate go-projectile gnuplot gitlab gitignore-mode gitconfig-mode git-timemachine git-gutter-fringe gist general fvwm-mode format-all foreman-mode flycheck-irony flycheck-haskell fish-mode eyebrowse ess-smart-equals ess-R-data-view ereader enh-ruby-mode emms-player-simple-mpv emamux emacsql ein ebib dokuwiki-mode dokuwiki djangonaut django-mode diminish delight define-word dashboard cython-mode csv-mode crux counsel-tramp counsel-projectile company-php company-nixos-options company-nginx company-math company-lua company-go company-emacs-eclim company-cabal company-anaconda cdlatex calfw-org calfw better-defaults auto-package-update auctex-latexmk all-the-icons-ivy activity-watch-mode)))
 '(safe-local-variable-values
   (quote
    ((python-shell-virtualenv-root . "/home/gigi/Code/Current/playsette/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/playsette/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=playsette.settings")
     (pony-settings
      (make-pony-project :python "/home/gigi/Code/Current/playsette/venv/bin/python" :pythonpath "/home/gigi/Code/Current/playsette/api/" :settings "local_settings_file" :appsdir "testproject/apps/"))
     (pyvenv-activate . "/home/gigi/Code/Current/playsette/venv/")
     (python-shell-virtualenv-root . "/home/gigi/Code/Current/dgar/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/dgar/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=api.settings")
     (pyvenv-activate . "/home/gigi/Code/Current/dgar/venv/"))))
 '(send-mail-function (quote smtpmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
