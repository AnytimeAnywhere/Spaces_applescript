
property numberOfSpaces : 13

property mymailLink : "https://www.google.com/gmail"

property space5_Link1 : "https://discord.onl/download/"
property space5_Link2 : "https://discord.onl/download/"
property space5_Link3 : "https://discord.onl/download/"
property space5_Link4 : "https://discord.onl/download/"
property space5_Link5 : "https://discord.onl/download/"

property space7_Link1 : "https://discord.onl/download/"
property space7_Link2 : "https://discord.onl/download/"
property space7_Link3 : "https://discord.onl/download/"
property space7_Link4 : "https://discord.onl/download/"
property space7_Link5 : "https://discord.onl/download/"

property space8_Link1 : "https://discord.onl/download/"
property space8_Link2 : "https://discord.onl/download/"
property space8_Link3 : "https://discord.onl/download/"
property space8_Link4 : "https://discord.onl/download/"
property space8_Link5 : "https://discord.onl/download/"

property space9_Link1 : "https://discord.onl/download/"
property space9_Link2 : "https://discord.onl/download/"
property space9_Link3 : "https://discord.onl/download/"
property space9_Link4 : "https://discord.onl/download/"
property space9_Link5 : "https://discord.onl/download/"

property space11_Link1 : "https://discord.onl/download/"
property space11_Link2 : "https://discord.onl/download/"


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
		else
			tell application "System Events"
				set minusSpaces to numberOfSpaces - countSpaces
				repeat minusSpaces times
					click (every button whose value of Â
						attribute "AXDescription" is "add desktop") of Â
						group 2 of group 1 of group 1 of process "Dock"
					delay 0.5
				end repeat
			end tell
		end if
	end tell
	
	delay 0.25
	key code 53 --  # Esc key on US English Keyboard
	
	-- Space 0
	key code 123 using {control down}
	delay 1
	-- Space 1
	key code 124 using {control down}
	delay 1
	
	tell application "Finder"
		activate
		
		set screenBounds to bounds of window of desktop
		set screenWidth to item 3 of screenBounds
		set screenHeight to item 4 of screenBounds
		set centerX to screenWidth / 2
		set centerY to screenHeight / 2
		set finderWidth to screenWidth / 2
		set finderHeight to screenHeight
		activate
		--set visible of (every process whose visible is true and frontmost is false) to false
		set finder1 to make new Finder window
		set the bounds of finder1 to {centerX - finderWidth div 1, centerY - (finderHeight / 2) div 1, centerX - 2 div 1, centerY + (finderHeight / 2) div 1}
		set the current view of finder1 to column view
		set finder2 to make new Finder window
		set the bounds of finder2 to {centerX + 2, centerY - (finderHeight / 2) div 1, centerX + finderWidth, centerY + (finderHeight / 2) div 1}
		set the current view of finder2 to column view
	end tell
	
	
	-- Space 2
	key code 124 using {control down}
	delay 2
	
	tell application "Calendar" to activate
	delay 3
	
	-- Space 3
	key code 124 using {control down}
	delay 2
	
	tell application "Discord" to activate
	delay 3
	tell application "Slack" to activate
	delay 3
	tell application "Messages" to activate
	delay 3
	
	-- Space 4
	key code 124 using {control down}
	delay 2
	
	tell application "Google Chrome"
		activate
		open location mymailLink
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:mymailLink}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:mymailLink}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:mymailLink}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:mymailLink}
		delay 5
	end tell
	
	-- Space 5
	key code 124 using {control down}
	delay 2
	
	tell application "Google Chrome"
		activate
		tell application "System Events" to keystroke "n" using {command down}
		open location space5_Link1
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space5_Link2}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space5_Link3}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space5_Link4}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space5_Link5}
		delay 5
	end tell
	
	-- Space 6
	key code 124 using {control down}
	delay 2
	
	tell application "Evernote" to activate
	
	delay 3
	
	-- Space 7
	key code 124 using {control down}
	delay 3
	
	tell application "Google Chrome"
		activate
		tell application "System Events" to keystroke "n" using {command down}
		open location space7_Link1
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space7_Link2}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space7_Link3}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space7_Link4}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space7_Link5}
		delay 5
	end tell
	
	-- Space 8
	key code 124 using {control down}
	delay 2
	
	tell application "Google Chrome"
		activate
		tell application "System Events" to keystroke "n" using {command down}
		open location space8_Link1
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space8_Link2}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space8_Link3}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space8_Link4}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space8_Link5}
		delay 5
	end tell
	
	-- Space 9
	key code 124 using {control down}
	delay 2
	
	tell application "Google Chrome"
		activate
		tell application "System Events" to keystroke "n" using {command down}
		open location space9_Link1
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space9_Link2}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space9_Link3}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space9_Link4}
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space9_Link5}
		delay 5
	end tell
	
	-- Space 10
	key code 124 using {control down}
	delay 5
	
	-- Space 11
	key code 124 using {control down}
	delay 2
	
	tell application "Google Chrome"
		activate
		tell application "System Events" to keystroke "n" using {command down}
		open location space11_Link1
		delay 1
		tell front window to make new tab at after (get active tab) with properties {URL:space11_Link2}
		delay 5
	end tell
	
	-- Space 12
	key code 124 using {control down}
	delay 2
	
	tell application "Parallels Desktop" to activate
	--tell application "TextEdit" to activate
	
end tell