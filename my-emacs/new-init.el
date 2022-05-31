;;; package --- My init
;;; Commentary:
;;; Made by hand and parsed some from old spacemacs junk
;;;

;;; Code:

(require '~/.emacs.d/my-emacs/my-load-path.el)

(require 'pkg-mgt)
(require 'my-packages)

(require 'my-emacs-async)
(require 'my-flycheck)
(require 'my-company)
(require 'my-projectile)
(require 'my-cursors)
(require 'my-scala)
(require 'my-typescript)
(require 'my-term)
(require 'old-init)
(require 'my-keys)

(setq indent-tabs-mode nil)

(provide '~/.emacs.d/my-emacs/new-init.el)
;;; new-init ends here
