;;; package --- My typescript package
;;; Commentary:
;;; Code:
(straight-use-package 'tide)
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

(provide 'my-typescript)
;;; my-typescript.el ends here
