;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    (quote
;;     ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
;;  '(helm-mode nil)
;;  '(ido-vertical-mode nil)
;;  '(package-selected-packages
;;    (quote
;;     (powerline proceed spinner helm-ag which-key rainbow-delimiters markdown-mode company undo-tree winum helm-projectile projectile tide helm-swoop swoop solarized-theme flycheck helm))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; (package-initialize)
;; (unless package-archive-contents
;;   (package-refresh-contents))
;; (package-autoremove)
;; (package-install-selected-packages)

;;(push "~/.spacemacs.d/lisp/" load-path)
;;(require 'company-simple-complete)
;;(require 'solarized-dark-theme)
;;(require 'add-node-modules-path)

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
(load-theme `solarized-dark t)
(set-face-attribute 'default nil :font "Terminus-14" )
(set-frame-font "Terminus-14" nil t)
(setq backup-directory-alist `(("." . "~/.emacs.bak")))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'show-paren-mode)
(global-auto-revert-mode)

(setq indent-tabs-mode nil
      typescript-indent-level 2
      solarized-high-contrast-mode-line 't
      solarized-distinct-fringe-background 't
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
