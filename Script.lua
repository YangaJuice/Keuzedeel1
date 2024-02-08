--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


entered = false;

function story(aName)
	if(aName == "start") then
		playMusic("SneakySnitch.wav")
		setBackground("Background1.png")
		createTextfield("It is 4 A.M. Ahead of you is a McDonalds. What should I do?")	
		createButton("entrance", "Go inside the McDonalds.")
		createButton("exit", "Get back home, you fat piece of shit.")
	end
	if(aName == "entrance") then
		if(entered == false) then
			playSound("door.wav")
			entered = true;
		else
			playSound("footstep.wav")
		end
		CLS();
		setBackground("Background2.png");
		createTextfield("You walked inside the McDonalds. Where do you want to go?")
		createButton("playground", "Go to the Playground.")
		createButton("cashier", "Go to the Cashier.")
		createButton("toilet", "Go up the Toilet.");
	end
	if(aName == "playground") then
		playSound("footstep.wav")
		CLS();
		setBackground("Background3.png")
		createTextfield("There are two tunnels ahead of you, which one will you pick?")
		createButton("righttunnel", "Go right.")
		createButton("lefttunnel", "Go left.")
		createButton("entrance", "Go back.");
	end
	if(aName == "righttunnel") then
		playSound("footstep.wav")
		CLS();
		setBackground("Background4.png")
		createTextfield(" Epstein: Hey girlie, let me touch you.")
		createButton("dead", "Let him touch you.")
		createButton("playground", "Go Back!!!");
	end
	if(aName == "lefttunnel") then
		playSound("footstep.wav")
		CLS();
		setBackground("Background4.png")
		createTextfield(" Epstein: Hey girlie, let me touch you.")
		createButton("exit", "Let him touch you.")
		createButton("playground", "Go Back!!!");
	end	if(aName == "dead") then
		playMusic("Prowler.wav")
		CLS();
		setBackground("Death.png")
	end

	if(aName == "exit") then
		exitGame();
	end
end

