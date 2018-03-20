
-- Title: MovingImages
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays a beetleship moving across the screen as well as another
--object moving in a different direction.

print ("***Testing beetleship!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3
scrollSpeed2 = 5
scrollSpeed3 = 1

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 150, 150)

-- character image with width and height
local putin = display.newImageRect("Images/putin.png", 150, 150)

-- character image with width and height
local kim = display.newImageRect("Images/kim.png", 150, 150)

--set the image to be transparent
beetleship.alpha = 0

--set the initial x and y position of the beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--set the initial x and y position of putin
putin.x = 400
putin.y = display.contentHeight*2/3

--set the initial x and y position of kim
kim.x = 50
kim.y = display.contentHeight*3/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed

	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.1

	--made beetleship grow
	beetleship:scale(1 + 0.005, 1 + 0.005)
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--Function: MovePutin
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of putin
local function MovePutin(event)
	--add the scroll speed to the x-value of putin
	putin.x = putin.x - scrollSpeed2

	-- change the transparency of putin every time putin moves so that it fades out
	putin.alpha = putin.alpha - 0.005
	-- putin shrinks
	putin:scale(1 - 0.01, 1 - 0.01)
end

-- MovePutin will be called over and over again
Runtime:addEventListener("enterFrame", MovePutin)

--Function: MoveKim
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of kim
local function MoveKim(event)
	--add the scroll speed to the x-value of kim
	kim.x = kim.x + scrollSpeed3
	--add the scroll speed to the y-value of kim
	kim.y = kim.y - scrollSpeed3

	--kim shall spin
	kim:rotate(20)

end

-- MoveKim will be called over and over again
Runtime:addEventListener("enterFrame", MoveKim)

--add sounds

local correctSound = audio.loadSound("Sounds/epic.mp3")
local correctSoundChannel
correctSoundChannel = audio.play(correctSound)