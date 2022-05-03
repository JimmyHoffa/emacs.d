;;; package --- Configure term to do what I want
;;; Commentary:
;;; Code:
(defun expose-global-binding-in-term (binding)
   (define-key term-raw-map binding
     (lookup-key (current-global-map) binding)))

(add-hook 'term-mode-hook
	  (lambda ()
	    (expose-global-binding-in-term (kbd "M-m")) ;; normal menu things
	    (expose-global-binding-in-term (kbd "M-x"))
	    (expose-global-binding-in-term (kbd "C-x"))
   	    (expose-global-binding-in-term (kbd "C-y")) ;; paste
   	    (expose-global-binding-in-term (kbd "C-w")) ;; cut
   	    (expose-global-binding-in-term (kbd "M-w")) ;; copy
	    ))


(defun term-dont-ask (orig-fun &rest args)
  (message "term called with args %S" args)
  (interactive)
  (apply orig-fun '("/bin/bash")))

(advice-add 'term :around #'term-dont-ask)

(provide 'my-term)
;;; my-term.el ends here
