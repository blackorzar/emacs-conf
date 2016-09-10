(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   (quote
    ("4cd33a3a619d1498558a06244112f1b166aed45273aadc5d828a2f308e610b7b" "aaec5b1ffdba0afc093d88cd6d4eb5af23a7a5e73da71a47bffa254617c3f767" "9f4e3df025023614ff5e210aa6a440727cca63b78daa230f0ed24bc04d067742" "2da5053e55e66b2fc0d2637063c8eeec1cf81a106b682946e5b320070a2cd2bc" "528bfe2753727433d91979ab2aa1aa3578bdec27a9a0235fff4fe4bb6a704e4e" "a4e3b92fb6262e88a252d6f1f3a1e0053080095ece8d5d9b9e368d4db83877e1" default)))
 '(save-place t nil (saveplace))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(desktop-save-mode 1)
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

;;buffer menu by paco
(global-set-key "\C-x\C-b" 'buffer-menu)

;;beginning of line
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive)
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))
(global-set-key [home] 'smart-beginning-of-line)
(global-set-key "\C-a" 'smart-beginning-of-line)

;;melpa added by paco
(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
