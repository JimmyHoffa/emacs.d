;;; old-init --- previous init with basic preferences for me
;;; Commentary: Trying to cflean this up but have basic preferences around set and font and theme etc

(powerline-default-theme)
;;(scroll-bar-mode -1)
(global-linum-mode)
(helm-mode)
(which-key-mode)
(global-company-mode)
(global-flycheck-mode)
(global-undo-tree-mode)
(winum-mode)
(projectile-mode)
(load-theme `solarized-selenized-black t)
;; (load-theme `solarized-dark t)
(set-face-attribute 'default nil :font "Terminus-16" )
(set-frame-font "Terminus-16" nil t)
;; For mac:
;; (set-face-attribute 'default nil :font "Terminus (TTF) 14" )
;; (set-frame-font "Terminus (TTF) 14" nil t)
(setq backup-directory-alist `(("." . "~/.emacs.bak")))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'show-paren-mode)
(global-auto-revert-mode)

(setq indent-tabs-mode nil
      undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo"))
      auto-save-file-name-transforms `((".*" "~/.emacs.d/saves/" t))
      lock-file-name-transforms `((".*" "~/.emacs.d/locks/" t))
      typescript-indent-level 2
      solarized-high-contrast-mode-line 't
      solarized-distinct-fringe-background 't
      sh-indentation 2
      sh-basic-offset 2
      ;; haskell-indent-spaces 2
      ;; haskell-compile-cabal-build-command "cd \"%s\" && stack build"
      ;; haskell-process-type 'stack-ghci
      ;; haskell-process-args-ghci "ghci"
      ;; haskell-process-path-ghci "stack"
      redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1
      ;;projectile-indexing-method 'native
      ;;projectile-enable-caching 't
      ;;helm-ag-base-command "pt -e -i --nocolor --nogroup" ;; for windows
      ;;helm-ag-base-command "ag --ignore-case --nocolor --nogroup"
      ;;projectile-globally-ignored-directories (quote (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "bower_components"))
      )



(provide 'old-init)
;;; old-init.el ends here
