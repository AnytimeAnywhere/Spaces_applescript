
property numberOfSpaces : 1


tell application "System Events"
	key code 160 -- Launch Mission Control
	delay 0.5
	
	tell list 1 of group 2 of group 1 of group 1 of process "Dock"
		set countSpaces to count of buttons
		if countSpaces is greater than numberOfSpaces then
			set plusSpaces to countSpaces - numberOfSpaces
			repeat plusSpaces times
				perform action "AXRemoveDesktop" of button countSpaces
				set countSpaces to countSpaces - 1
				delay 0.5
			end repeat
		end if
	end tell
	
	delay 0.25
	key code 53 --  # Esc key on US English Keyboard
end tell

set white_list to {"Script Editor"}

try
	tell application "Finder"
		set process_list to the name of every process whose visible is true
	end tell
	repeat with i from 1 to (number of items in process_list)
		set this_process to item i of the process_list
		if this_process is not in white_list then
			if this_process is "Messages" then
				tell application this_process
					close window 1
					do shell script "killall Messages"
				end tell
			else if this_process is "Finder" then
				tell application this_process
					close windows
				end tell
			else
				tell application this_process
					quit
				end tell
			end if
		end if
	end repeat
on error errormessage
	display dialog errormessage
	--tell the current application to display dialog "An error has occurred!" & return & "This script will now quit" buttons {"Quit"} default button 1 with icon 0
end try