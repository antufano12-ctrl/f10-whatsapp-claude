# F10 WhatsApp + Claude

An AutoHotkey v2 script for Windows that opens WhatsApp Web together with Claude in Chrome, so you can dictate the messages you want to send by voice.

## Hotkeys

| Key | What it does |
|---|---|
| **F10** | Opens WhatsApp Web in Chrome, opens the Claude side panel (Alt+K) and clicks into its text box |
| **F8** (hold) | Push-to-talk: starts Windows voice typing; when you release it, the text is sent to Claude |

## Requirements

- Windows 10/11
- Google Chrome with the [Claude in Chrome](https://claude.ai/chrome) extension
- [AutoHotkey v2](https://www.autohotkey.com/) (installed automatically by `install.bat`)

## Installation

1. Download the project and run `install.bat` (installs AutoHotkey v2 and puts `wa.ahk` in the Startup folder).
2. In `chrome://extensions/shortcuts`, assign **Alt+K** to the Claude extension.
3. In Claude in Chrome, create a shortcut (e.g. `/wa`) with the text from `prompt.txt`.

## Usage

Press **F10**, type `/wa`, then hold **F8** and say for example: "to Mark: I'll be there in ten minutes".

## Notes

- The click position on Claude's text box (`ClickClaude()` in `wa.ahk`) assumes a maximized Chrome window with the side panel open: adjust the offsets if your screen differs.
- After editing the script, run `install.bat` again to update it.

## See also

- [claude-voice-f9](../../../claude-voice-f9): F9 opens the Claude desktop app in voice mode.

## License

[MIT](LICENSE)
