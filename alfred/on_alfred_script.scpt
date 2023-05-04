-- Executes command in a iTerm new window in the current space
on alfred_script(q)
    tell application "iTerm"
        set newWindow to (create window with default profile)
        tell newWindow
            select
            tell current session
                write text q
            end tell
        end tell
        activate
    end tell

    -- Move new iTerm window to the current space
    tell application "System Events" to tell application "iTerm"
      set frontmost to true
    end tell
end alfred_script

