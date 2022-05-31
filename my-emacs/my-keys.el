;;; package --- setup my keyboard
;;; Commentary:
;;; Code:
(defun open-my-init-file ()
  "Open the init file."
  (interactive)
  (find-file user-init-file))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (newline)
  (yank))

;;; For TTY consoles -- This makes no sense of working
;; (define-key input-decode-map "\e[A" [C-up])
;; (define-key input-decode-map "\e[B" [C-down])
;; (define-key input-decode-map "\e\e[C" [C-right])
;; (define-key input-decode-map "\e[D" [C-left])

;;; For terminal
(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;2A" [S-up])
(define-key input-decode-map "\e[1;6A" [C-S-up])

(define-key input-decode-map "\e[1;5B" [C-down])
(define-key input-decode-map "\e[1;2B" [S-down])
(define-key input-decode-map "\e[1;6B" [C-S-down])

(define-key input-decode-map "\e[1;5C" [C-right])
(define-key input-decode-map "\e[1;6C" [C-S-right])

(define-key input-decode-map "\e[1;5D" [C-left])
(define-key input-decode-map "\e[1;6D" [C-S-left])

(define-key input-decode-map "\e[1;5F" [C-end])
(define-key input-decode-map "\e[1;6F" [C-S-end])

(define-key input-decode-map "\e[1;5H" [C-home])
(define-key input-decode-map "\e[1;6H" [C-S-home])

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
(global-set-key (kbd "M-m s e s") 'mc/mark-all-like-this)
(global-set-key (kbd "M-m s e r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c C-<down>") 'mc/mmlte--down)
(global-set-key (kbd "C-c C-<up>") 'mc/mmlte--up)
(global-set-key (kbd "C-c M-<down>") 'mc/mmlte--down)
(global-set-key (kbd "C-c M-<up>") 'mc/mmlte--up)
(global-set-key (kbd "C-c M-S-<down>") 'duplicate-line)
(global-set-key (kbd "C-c M-S-<up>") 'duplicate-line)
(global-set-key (kbd "C-c S-<down>") 'duplicate-line)
(global-set-key (kbd "C-c S-<up>") 'duplicate-line)
(global-set-key (kbd "M-m s g g") 'helm-grep)
(global-set-key (kbd "M-m s a g") 'helm-grep-ag)
(global-set-key (kbd "M-m s g p") 'helm-projectile-grep)
(global-set-key (kbd "M-m s a p") 'helm-projectile-ag)
(global-set-key (kbd "M-m s p f") 'helm-multi-swoop-projectile)
(global-set-key (kbd "M-m f r") 'helm-recentf)
(global-set-key (kbd "M-m f e d") 'open-my-init-file)
(global-set-key (kbd "M-m p p") 'helm-projectile)
(global-set-key (kbd "M-m p i") 'projectile-invalidate-cache)
(global-set-key (kbd "M-m p f") 'helm-projectile-find-file-dwim)
(global-set-key (kbd "<home>") 'beginning-of-line)
(global-set-key (kbd "<end>") 'end-of-line)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xh" 'help-command)
(keyboard-translate ?\C-h ?\C-?)

(provide 'my-keys)
;;; my-keys.el ends here
