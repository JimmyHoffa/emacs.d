(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(helm-mode nil)
 '(ido-vertical-mode nil)
 '(package-selected-packages
   (quote
    (powerline proceed spinner helm-ag which-key rainbow-delimiters markdown-mode company undo-tree winum helm-projectile projectile tide helm-swoop swoop solarized-theme flycheck helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(package-autoremove)
(package-install-selected-packages)

;;(push "~/.spacemacs.d/lisp/" load-path)
;;(require 'company-simple-complete)
;;(require 'solarized-dark-theme)
;;(require 'add-node-modules-path)

(defun open-my-init-file ()
  "Open the init file."
  (interactive)
  (find-file user-init-file))

(powerline-default-theme)
;;(scroll-bar-mode -1)
(global-linum-mode)
(helm-mode)
(which-key-mode)
(global-company-mode)
;;(global-flycheck-mode)
(global-undo-tree-mode)
(winum-mode)
(projectile-mode)
(load-theme `solarized-dark t)
(set-face-attribute 'default nil :font "Terminus-12" )
(set-frame-font "Terminus-12" nil t)
(setq backup-directory-alist `(("." . "~/.emacs.bak")))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(global-auto-revert-mode)

(global-set-key (kbd "C-x C-f") 'helm-find-files)

(define-prefix-command 'menu-key-map-cmd)
(global-set-key (kbd "M-m") menu-key-map-cmd)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-m 1") 'winum-select-window-1)
(global-set-key (kbd "M-m 2") 'winum-select-window-2)
(global-set-key (kbd "M-m 3") 'winum-select-window-3)
(global-set-key (kbd "M-m 4") 'winum-select-window-4)
(global-set-key (kbd "M-m 5") 'winum-select-window-5)
(global-set-key (kbd "M-m b b") 'helm-buffers-list)
(global-set-key (kbd "M-m b R") 'revert-buffer)
(global-set-key (kbd "M-m s s") 'helm-swoop)
(global-set-key (kbd "M-m s h") 'highlight-symbol-at-point)
(global-set-key (kbd "M-m s g g") 'helm-grep)
(global-set-key (kbd "M-m s a g") 'helm-grep-ag)
(global-set-key (kbd "M-m s g p") 'helm-projectile-grep)
(global-set-key (kbd "M-m s a p") 'helm-projectile-ag)
(global-set-key (kbd "M-m f e d") 'open-my-init-file)
(global-set-key (kbd "M-m p p") 'helm-projectile)
(global-set-key (kbd "M-m p f") 'helm-projectile-find-file-dwim)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xh" 'help-command)
(keyboard-translate ?\C-h ?\C-?)

(add-hook 'typescript-mode-hook 'tide-mode)
(add-hook 'tide-mode-hook 'tide-setup)

(add-hook 'typescript-mode-hook
          (lambda ()
            (defun flycheck-eslint-config-exists-p () (eq 0 0))
            (flycheck-add-mode 'javascript-eslint 'typescript-mode)
            (setq typescript-backend 'tide
                  flycheck-checker 'javascript-eslint
                  company-backends '(company-tide))
            (when (projectile-project-root)
              (progn
                (setq-local project-root-bin (concat
                                   (file-name-as-directory (projectile-project-root))
                                   (file-name-as-directory "node_modules")
                                   (file-name-as-directory ".bin")))

                (setq-local local-exec-path exec-path)
                (add-to-list 'local-exec-path project-root-bin)
                (setq-local exec-path local-exec-path)
              )
              )))


(setq auto-mode-alist (rassq-delete-all 'javascript-mode auto-mode-alist))
(setq auto-mode-alist (rassq-delete-all 'js-mode auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.js\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))

(setq indent-tabs-mode nil
      typescript-indent-level 2
      solarized-high-contrast-mode-line 't
      solarized-distinct-fringe-background 't
      haskell-indent-spaces 2
      haskell-compile-cabal-build-command "cd \"%s\" && stack build"
      haskell-process-type 'stack-ghci
      haskell-process-args-ghci "ghci"
      haskell-process-path-ghci "stack"
      redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1
      ;;projectile-indexing-method 'native
      ;;projectile-enable-caching 't
      ;;helm-ag-base-command "pt -e -i --nocolor --nogroup" ;; for windows
      helm-ag-base-command "ag --ignore-case --nocolor --nogroup"
      projectile-globally-ignored-directories (quote (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "bower_components"))
      )

(provide 'init)
;;; init.el ends here
