function onCreate()
	makeLuaSprite('dischange', 'dischange',-200, -100);
	setLuaSpriteScrollFactor('dischange', 0.9, 0.9);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('dischange.scale.x', 0.8 / defaultCamZoom);
	setProperty('dischange.scale.y', 1 / defaultCamZoom);
	setProperty('dischange.alpha', 0.0001);
	addLuaSprite('dischange', false);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Change Stage3" then
		setProperty('dischange.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'dischange', 0, 1000, 'linear');
	end
end