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
(require 'ana-capture)
(require 'ana-dokuwiki)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
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
    ("9189aac2783f81a35bd56f6ebc9fc260384aac8f8bbd1526711994ceda8c5364" "2032f81f74188f9af460cb5f5fb4e5a1764ea1fdc5e876de10146b41e9d39abd" "bfd848f74d8a328c3d6e04ebe05c4f26cd4e0295af2ed03c0ae935f2096ad7a3" "e93eae44aa87d1045d1bf40cf8fd065479f4e848f47a24665cfc203ee998f382" "3f4a8496cc252ce1d078b6633a53866e3d26af298827fd16b1664dddab86dd35" "1fa855e7f189fdb059fb9cb50cb925195b4c6c8336e8bb0062318abf519e101b" "060deafdbd9f6dfb6e79214a3ad5ed85f8d9bf2ba682c688b241a6264957656a" "35dee10c3ae4f3cc71cf0ddc34afc150244dd28dc05ca3969bd9cf86fc54f54f" "0c38ef7fdc3057c68caf9663dd8f564bdd5c3d75a8c97f67927fe041f8206408" "3d55086a2bb94fecad88b815b66f3d5040b78d9ef8f83c8fc452bf28e8a80ce8" "aba49e0f570450e6a2413b5ede406dc4ed07ac6f3bbeb75f5ca2e740f86f410d" "70378b63fff71213b6839741e8dad99a21a8bc433f089e491edaa0695be1488d" "5f700e59b1ae03cd6c3bd381962e447e4293116c6a54b32eeafcc846ba842037" "aab6e64642c61aca34e50bab8630311c523d6940f5546076c87cda46640c5a28" "c0f5f3d16af8e0fceaaf1ccea863d617ca5baa04e0816f50b1a78235fff5c405" "6d3130502a4d98b2903b27d18312c87df513a9aa09317774c81d32fb1e4eba8d" "62bc0befe1f269b0835f9d551aaca9c7541ffe520c667eedc9a452c344821d73" "6b3e83bc02a14c5984426cd4cd36296b001398993dfb871b45b6979f42b8b4d4" "25f9d347e65faeab6aa2232000ec25e639c628783b115fca2b44e32ea339e7b1" "3470d611a281b14e141a7bacf3ce2b6ac519c1c2cc5a8eed68675cba3f821e16" "2697aa49e1815dfa80002b76dc8f9ab9830ae02bd8be4579721038186a232146" "2106862f6bda4110bf0d44c679b1d2f99083fde509119e9576efa0abde5cac72" "9a6ea2852bfcca345ecc19c8228dab2ef1fe2518bddd5d25bd526031debee780" default)))
 '(org-agenda-files (quote nil))
 '(org-modules
   (quote
    (org-bibtex org-ctags org-docview org-element org-habit org-id org-info org-inlinetask)))
 '(package-selected-packages
   (quote
    (w3m fish-mode systemd symon fvwm-mode systemd-mode mu4e-alert lua-mode nix-mode company-nixos-options company-tern yasnippet-snippets yarn-mode ws-butler writegood-mode wolfram-mode wiki-summary which-key web-mode web-beautify wc-mode use-package undo-tree undo-propose twittering-mode tramp-term sudo-edit sqlformat spaceline smex smartparens shx sane-term rvm rubocop robe react-snippets rainbow-mode pyvenv pytest py-isort projectile-rails pretty-mode pony-mode pippel pip-requirements persp-projectile persp-mode pandoc-mode ox-pandoc outline-magic origami org-web-tools org-ref org-projectile org-pomodoro org-noter org-journal org-download org-cliplink org-chef org-bullets org-brain org-board olivetti ob-sql-mode npm-mode nginx-mode neotree mwim multiple-cursors mu4e-conversation mixed-pitch md4rd markdown-toc markdown-preview-mode magithub magic-latex-buffer live-py-mode latex-pretty-symbols json-mode ivy-yasnippet ivy-rich ivy-omni-org intero imenu-list hy-mode hindent graphviz-dot-mode google-translate go-projectile gnuplot gitlab gitignore-mode gitconfig-mode git-timemachine git-gutter-fringe gist general format-all foreman-mode flycheck-irony flycheck-haskell eyebrowse ess-smart-equals ess-R-data-view ereader enh-ruby-mode emms emmet-mode emamux emacsql ein ebib dokuwiki-mode dokuwiki djangonaut django-mode diminish delight define-word dashboard cython-mode csv-mode crux counsel-tramp counsel-projectile company-web company-php company-nginx company-math company-go company-emacs-eclim company-cabal company-anaconda cdlatex calfw-org calfw better-defaults auto-package-update auctex-latexmk all-the-icons-ivy activity-watch-mode)))
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
