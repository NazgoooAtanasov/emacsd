(use-package rust-mode :demand t)
(add-hook 'c-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)
