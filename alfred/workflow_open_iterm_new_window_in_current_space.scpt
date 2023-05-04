-- Opens iTerm new window with default profile in current desktop space
on run argv
  tell application "iTerm"
        set newWindow to (create window with default profile)
        tell newWindow
            select
        end tell
        activate
    end tell

    -- Move new iTerm window to the current space
    tell application "System Events" to tell application "iTerm"
      set frontmost to true
    end tell
end run
