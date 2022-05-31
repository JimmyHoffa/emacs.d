(require 'package)


;; ;; (package-initialize)

;; ;; ;; Install use-package if not already installed
;; ;; (unless (package-installed-p 'use-package)
;; ;;   (package-refresh-contents)
;; ;;   (package-install 'use-package))

;; ;; (require 'use-package)

;; ;; Enable defer and ensure by default for use-package
;; ;; Keep auto-save/backup files separate from source code:  https://github.com/scalameta/metals/issues/1027

;; (setq use-package-always-demand t
;; ;;(setq use-package-always-ensure t
;; ;;      use-package-always-defer t
;; ;;      use-package-expand-minimally t
;;       backup-directory-alist `((".*" . ,temporary-file-directory))
;;       auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; ;; ;; Add melpa to your packages repositories
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; ;; Install straight.el
;; (defvar bootstrap-version)
;; (let ((bootstrap-file
;;        (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
;;       (bootstrap-version 5))
;;   (unless (file-exists-p bootstrap-file)
;;     (with-current-buffer
;;         (url-retrieve-synchronously
;;          "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
;;          'silent 'inhibit-cookies)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp)))
;;   (load bootstrap-file nil 'nomessage))


(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)

(provide 'pkg-mgt)
;;; pkg-mgt ends here
