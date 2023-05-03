function Approach(_a, _b, _amount)
{
	if (_a < _b)
	{
		_a += _amount;
		if (_a > _b)
			return _b;
	}
	else
	{
		_a -= _amount;
		if (_a < _b)
			return _b;
	}
	return _a;
}

function QuickDrawText(_font, _halign, _valign, _color, _alpha, _posX, _posY, _text)
{
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	draw_set_color(_color);
	draw_set_alpha(_alpha);
	
	draw_text(_posX, _posY, _text);
	
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_color(c_white);
	draw_set_alpha(1);
}