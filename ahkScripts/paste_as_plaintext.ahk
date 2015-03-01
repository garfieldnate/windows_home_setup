; downloaded from: http://plaintext-productivity.net/assets/paste-as-plaintext.ahk
; derived from: http://www.autohotkey.com/board/topic/10412-paste-plain-text-and-copycut/

#v::                             ; Text–only paste from ClipBoard
   Clip0 = %ClipBoardAll%
   ClipBoard = %ClipBoard%       ; Convert to text
   Send ^v                       ; For best compatibility: SendPlay
   Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
   ClipBoard = %Clip0%           ; Restore original ClipBoard
   VarSetCapacity(Clip0, 0)      ; Free memory
Return

