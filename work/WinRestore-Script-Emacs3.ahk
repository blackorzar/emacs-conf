;Msgbox, Start.
;DetectHiddenWindows, on
^F2::
  IfWinExist, ahk_class Emacs
  {
    ;Msgbox, Window exists.
    WinRestore , PendingsJan2016.txt
    WinActivate, PendingsJan2016.txt
    WinRestore , Ligas2016.org
    WinActivate, Ligas2016.org
    WinRestore , quicknotes.org
    WinActivate, quicknotes.org
  }
  ;MsgBox, Finish.
Return
