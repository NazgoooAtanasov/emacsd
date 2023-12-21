;; general emacs UI settings
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(set-face-attribute 'default nil :height 160)
(setq inhibit-startup-screen -1)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative) 

;; Packages and setups for elpaca
(load-file "~/.config/emacs/elpaca.el")

(use-package doom-themes
  :demand t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-one t))

(use-package evil :demand t)
(elpaca-wait)
(require 'evil)
(evil-mode 1)

(use-package ivy :demand t)
(elpaca-wait)
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(use-package projectile :demand t)
(elpaca-wait)
(setq projectile-completion-system 'ivy)
(setq projectile-project-search-path '("~/_Projects/" "~/_Forkpoint"))
(projectile-mode +1)

(use-package company :demand t)
(elpaca-wait)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; adding all the modes i would ever neeeeed.
(load-file "~/.config/emacs/modes.el")

(use-package flycheck :demand t)
(elpaca-wait)
(global-flycheck-mode)

(use-package lsp-mode :demand t)
(elpaca-wait)
(require 'lsp-mode)

;; add keybind for workspace symbols
(use-package lsp-ivy :demand t)
(elpaca-wait)

(use-package lsp-ui :demand t)
(elpaca-wait)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-show-with-cursor nil)

(use-package general :demand t)
(elpaca-wait)
(load-file "~/.config/emacs/keybinds.el")
