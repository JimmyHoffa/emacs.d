(add-hook 'projectile-after-switch-project-hook (lambda ()
      (projectile-invalidate-cache nil)))


;; (add-hook 'after-init-hook (lambda ()
;;     (mapc (lambda (project-root)
;;         (remhash project-root projectile-project-type-cache)
;;         (remhash project-root projectile-projects-cache)
;;         (remhash project-root projectile-projects-cache-time)
;;         (when projectile-verbose
;;             (message "Invalidated Projectile cache for %s."
;;                 (propertize project-root 'face 'font-lock-keyword-face)))
;;         (when (fboundp 'recentf-cleanup)
;;             (recentf-cleanup)))
;;         (projectile-hash-keys projectile-projects-cache))
;;     (projectile-serialize-cache)))

(provide 'my-projectile)
