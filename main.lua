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

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

--set the image to be transparent


--set the initial x and y position of the beetleship
beetleship.x = 100
beetleship.y = display.contentHeight/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	  --add the scroll speed to the x-value of the ship
	  beetleship.x = beetleship.x + scrollSpeed
	  -- change the transparency of the ship every time it moves so that it fades out
	  beetleship.alpha = beetleship.alpha + 0.01
	end

    -- MoveShip will be called over and over again
    Runtime:addEventListener("eventFrame", MoveShip)