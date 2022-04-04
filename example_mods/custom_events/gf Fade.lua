-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Opponent Fade' then
		duration = tonumber(value1);
		if duration < 0 then
			duration = 0;
		end

		targetAlpha = tonumber(value2);
		if duration == 0 then
			setProperty('gf.alpha', 1);
			setProperty('iconP2.alpha', 1);
		else
			doTweenAlpha('dadFadeEventTween', 'gf', 0, 4, 'linear');
			doTweenAlpha('iconDadFadeEventTween', 'iconP2', 0, 4, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end