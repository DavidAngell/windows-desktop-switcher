; ====================
; === INSTRUCTIONS ===
; ====================
; 1. Any lines starting with ; are ignored
; 2. After changing this config file run script file "desktop_switcher.ahk"
; 3. Every line is in the format HOTKEY::ACTION

; === SYMBOLS ===
; !   <- Alt
; +   <- Shift
; ^   <- Ctrl
; #   <- Win
; For more, visit https://autohotkey.com/docs/Hotkeys.htm

; === EXAMPLES ===
; !n::switchDesktopToRight()             <- <Alt> + <N> will switch to the next desktop (to the right of the current one)
; #!space::switchDesktopToRight()        <- <Win> + <Alt> + <Space> will switch to next desktop
; CapsLock & n::switchDesktopToRight()   <- <CapsLock> + <N> will switch to the next desktop (& is necessary when using non-modifier key such as CapsLock)

; ===========================
; === END OF INSTRUCTIONS ===
; ===========================

createInitialDesktops(9)

#1::switchDesktopByNumber(1)
#2::switchDesktopByNumber(2)
#3::switchDesktopByNumber(3)
#4::switchDesktopByNumber(4)
#5::switchDesktopByNumber(5)
#6::switchDesktopByNumber(6)
#7::switchDesktopByNumber(7)
#8::switchDesktopByNumber(8)
#9::switchDesktopByNumber(9)
#0::switchDesktopByNumber(10)

#Numpad1::switchDesktopByNumber(1)
#Numpad2::switchDesktopByNumber(2)
#Numpad3::switchDesktopByNumber(3)
#Numpad4::switchDesktopByNumber(4)
#Numpad5::switchDesktopByNumber(5)
#Numpad6::switchDesktopByNumber(6)
#Numpad7::switchDesktopByNumber(7)
#Numpad8::switchDesktopByNumber(8)
#Numpad9::switchDesktopByNumber(9)

#n::switchDesktopToRight()
#p::switchDesktopToLeft()
#s::switchDesktopToRight()
#a::switchDesktopToLeft()
#tab::switchDesktopToLastOpened()

#c::createVirtualDesktop()
#d::deleteVirtualDesktop()

#+1::MoveCurrentWindowToDesktop(1)
#+2::MoveCurrentWindowToDesktop(2)
#+3::MoveCurrentWindowToDesktop(3)
#+4::MoveCurrentWindowToDesktop(4)
#+5::MoveCurrentWindowToDesktop(5)
#+6::MoveCurrentWindowToDesktop(6)
#+7::MoveCurrentWindowToDesktop(7)
#+8::MoveCurrentWindowToDesktop(8)
#+9::MoveCurrentWindowToDesktop(9)
#+10::MoveCurrentWindowToDesktop(10)

#Right::MoveCurrentWindowToRightDesktop()
#Left::MoveCurrentWindowToLeftDesktop()

^m::WinMaximize, A  ; Ctrl+M will maximize the active window
#q::WinClose, A     ; Win+Q will close the active window

^#+Right::MoveCurrentWindowToRightDesktop()
^#+Left::MoveCurrentWindowToLeftDesktop()
