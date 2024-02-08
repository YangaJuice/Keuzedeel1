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
		createButton("dead", "Get back home, you fat piece of shit.")
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
		createButton("toilet", "Go up the Toilet (Don't do it please).");
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
		setBackground("Background5.png")
		createTextfield(" Smiley: Hey, come here often?.")
		createButton("touch", "Touch him.")
		createButton("playground", "Go Back.");
	end	
	if(aName == "touch") then
		playMusic("Goku.wav")
		playSound("Fire.wav")
		CLS();
		setBackground("Background6.png")
		createTextfield(" Smiley: WHAT ARE YOU TOUCHING ME FOR?!")
		createButton("run", "Run away!")
		createButton("shooting", "Shoot him!");
	end	
	if(aName == "run") then
		playSound("Shoot.wav")
		CLS();
		setBackground("Background10.png")
		createTextfield("As you try and run away, the smiley shot you to your death.")
		createButton("dead", "Bleed to death.");
	end	
	if(aName == "shooting") then
		playMusic("finalvictory.wav")
		playSound("Shoot.wav")
		CLS();
		setBackground("Background11.png")
		createTextfield("(Ending 2/3) You killed the smiley as he's bleeding to death.")
		createButton("exit", "Leave.")
	end	
	if(aName == "cashier") then
		playSound("footstep.wav")
		CLS();
		setBackground("Background7.png")
		createTextfield("Cashier: Can I help you with something?")
		createButton("shoot", "Shoot the Cashier.")
		createButton("burger", "Order a barbeque bacon burger.")
		createButton("entrance", "Go back.");
	end
		if(aName == "shoot") then
			playMusic("shocking.wav")
			playSound("Shoot.wav")
			CLS();
			setBackground("Background8.png")
			createTextfield("Crowd: OHHHHH HE HAS A GUN!")
			createButton("dead", "Shoot yourself.");
	end
	if(aName == "burger") then
		playMusic("finalvictory.wav")
		playSound("bbq.wav")
		CLS();
		setBackground("Background9.png")
		createTextfield("(Ending 1/3) - Enjoy the meal")
		createButton("exit", "Take your burger and leave")
	end
	if(aName == "toilet") then
		playMusic("skibidi.wav")
		CLS();
		setBackground("Background12.png")
		createTextfield("(Ending 3/3) - Skibidi toilet")
		createButton("exit", "skibidi toilet")
	end
	
	if(aName == "dead") then
		playMusic("Prowler.wav")
		CLS();
		setBackground("Death.png")
	end
	if(aName == "exit") then
		exitGame();
	end
end

