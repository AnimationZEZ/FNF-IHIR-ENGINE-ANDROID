
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('roomback', 'roomback', -600, -400);
	setScrollFactor('roomback', 0.9, 0.9);
	
	makeLuaSprite('roomfront', 'roomfront', -650, -530);
	setScrollFactor('roomfront', 0.9, 0.9);
	scaleObject('roomfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('closet', 'closet', -500, -300);
		setScrollFactor('closet', 1.3, 1.3);
		scaleObject('closet', 0.9, 0.9);
	end

	addLuaSprite('roomback', false);
	addLuaSprite('roomfront', false);
	addLuaSprite('closet', false);
end

function onUpdate()
	setProperty('countdownReady.scale.x', 0.5)
	setProperty('countdownReady.scale.y', 0.5)
	
	setProperty('countdownSet.scale.x', 0.5)
	setProperty('countdownSet.scale.y', 0.5)
	
	setProperty('countdownGo.scale.x', 0.5)
	setProperty('countdownGo.scale.y', 0.5)
end