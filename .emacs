(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode2")

(setq show-paren-style 'expression)
(show-paren-mode 2)

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
  (cons `("\\.markdown" . markdown-mode) auto-mode-alist))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; 4 spaces instead of one tab
(setq tab-width 4)
(setq-default indent-tabs-mode nil)

;; y and n instead of yes and no
(fset 'yes-or-no-p 'y-or-n-p)

;; auto focus on popup buffers
(defadvice split-window (after move-point-to-new-window activate)
  "Moves the point to the newly created window after splitting."
  (other-window 1))

(defadvice list-buffers (after move-point-to-new-window activate)
  "Moves the point to the newly created buffer list"
  (other-window 1))

;; custom modes
;; iswitchb
(iswitchb-mode 1)
(setq iswitchb-buffer-ignore 
          `("^ " "*scratch*" "*Messages*" "*Completions*"))
;; whitespace
(global-whitespace-mode 1)
(setq whitespace-line '(0))
;; other
(global-linum-mode 1)
(setq linum-format "%d ")
(recentf-mode 1)

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

(require 'scala-mode2)
(setq auto-mode-alist
  (cons `("\\.scala" . scala-mode) auto-mode-alist))

;; custom hot keys
(global-set-key [?\C-x ?\C-g] 'goto-line)
(global-set-key [?\C-x ?\M-f] 'recentf-open-files)
