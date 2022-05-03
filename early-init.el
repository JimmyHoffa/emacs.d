(setq package-enable-at-startup nil)
;; (setq use-package-always-demand t
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-expand-minimally t
      straight-fix-flycheck t
      straight-use-package-by-default t
      backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)
(byte-recompile-directory (expand-file-name "~/my-emacs") 0)
