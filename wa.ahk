#SingleInstance Force
CoordMode "Mouse", "Screen"
; F10         = opens WhatsApp Web + the Claude in Chrome side panel
; F8 (hold)   = push-to-talk: speak while holding, release to send the dictated text to Claude

F10::{
  Run "chrome.exe https://web.whatsapp.com"
  WinWaitActive "ahk_exe chrome.exe",, 5
  WinMaximize "A"
  Sleep 3000
  Send "!k"            ; Alt+K = opens Claude in Chrome (set it in chrome://extensions/shortcuts)
  Sleep 8000           ; wait for Claude to finish loading
  ClickClaude()
}

F8::{
  ClickClaude()
  Sleep 300
  Send "#h"            ; start Windows voice typing
  KeyWait "F8"         ; wait until F8 is released
  Sleep 600
  Send "#h"            ; stop voice typing
  Sleep 1200
  Send "{Enter}"       ; send to Claude
}

ClickClaude() {
  WinGetPos &x, &y, &w, &h, "ahk_exe chrome.exe"
  Click x + w - 250, y + h - 130   ; Claude's text box ("How can I help you today?")
}
