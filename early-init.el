(setq package-enable-at-startup nil
;;    use-package-always-demand t
      use-package-always-ensure t
      use-package-always-defer t
      use-package-expand-minimally t
      straight-fix-flycheck t
      straight-use-package-by-default t
      backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; (byte-recompile-file (expand-file-name "~/.emacs.d/early-init.el") 0)
(byte-recompile-directory (expand-file-name "~/.emacs.d"))
(byte-recompile-directory (expand-file-name "~/.emacs.d/my-emacs"))
