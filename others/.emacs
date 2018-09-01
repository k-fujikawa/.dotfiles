; no-backup
(defun no-backup()
   (interactive)
   (setq make-backup-files nil)
   (setq auto-save-default nil))

