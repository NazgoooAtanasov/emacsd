(require 'general)
(general-evil-setup)
(general-nmap :prefix "SPC"
  "SPC" 'projectile-find-file
  "/" 'projectile-grep
  ;; "," 'projectile-buffers
  "op" 'projectile-dired
  "bk" 'kill-buffer
  "vs" 'split-window-right
  "s" 'split-window-below
  "pv" 'projectile-switch-project
  "k" 'lsp-ui-doc-focus-frame)

;; adding those coz they golden
(general-define-key
 "C-=" 'text-scale-increase
 "C--" 'text-scale-decrease)

(define-key evil-normal-state-map (kbd "K") 'lsp-ui-doc-show)

;; changing the completion keybindings so we are all sane.
(define-key company-active-map (kbd "<tab>") 'company-select-next)
(define-key company-active-map (kbd "<backtab>") 'company-select-previous)
(define-key company-search-map (kbd "<tab>") 'company-select-next)
(define-key company-search-map (kbd "<backtab>") 'company-select-previous)
