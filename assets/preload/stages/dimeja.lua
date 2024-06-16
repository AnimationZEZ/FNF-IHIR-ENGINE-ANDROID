
function onCreate()
	makeLuaSprite('ini meja :v', 'meja', 0, -250)
  
  addLuaSprite('ini meja :v', false)
  scaleLuaSprite('ini meja :v', 1.5, 1.5)
end

function onUpdate()
	setProperty('dad.alpha', 0)
	setProperty('boyfriend.flipX', false)
end