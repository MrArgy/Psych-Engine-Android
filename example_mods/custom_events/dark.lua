function onCreate()
	makeLuaSprite('dark', 'dark', -650, -310);
	setLuaSpriteScrollFactor('dark', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('dark.scale.x', 0.52 / defaultCamZoom);
	setProperty('dark.scale.y', 0.56 / defaultCamZoom);
	setProperty('dark.alpha', 0.0001);
	addLuaSprite('dark', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "dark" then
		setProperty('dark.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'dark', 0, 2, 'linear');
	end
end