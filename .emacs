(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; allow pulling and yanking to the clipboard
(setq x-select-enable-clipboard t)

;; hide the toolbar
(tool-bar-mode 0)

;; allow yanking onto a selected region to ovewrite the selected text
(delete-selection-mode 1)

;; add the rope menu
;;(require 'pymacs)
;;(pymacs-load "ropemacs" "rope-")

;; code that allows auto-complete. souce downloaded from: http://cx4a.org/software/auto-complete/
;;(add-to-list 'load-path "~/.emacs.d/")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;;(ac-config-default)
