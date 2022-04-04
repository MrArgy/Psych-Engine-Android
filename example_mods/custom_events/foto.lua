function onCreate()
	makeLuaSprite('foto', 'foto', 0, 0);
	setLuaSpriteScrollFactor('foto', 0, 0);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('foto.scale.x', 1 / defaultCamZoom);
	setProperty('foto.scale.y', 1 / defaultCamZoom);
	setProperty('foto.alpha', 0.01);
	addLuaSprite('foto', true);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "foto" then
		setProperty('foto.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'foto', 0, 0.5, 'linear');
	end
end