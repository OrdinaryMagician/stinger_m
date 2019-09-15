vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st;
	uv.x += 1.;
	float ang = timer*5.;
	vec2 uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.3;
	vec4 col = getTexel(fract(uv2));
	uv.y -= 2.;
	ang = timer*3.;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.5;
	col += getTexel(fract(uv2));
	uv.x -= 3.;
	ang = timer*4.;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.6;
	col += getTexel(fract(uv2));
	uv.y += 4.;
	ang = timer*2.;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.2;
	col += getTexel(fract(uv2));
	col *= .5;
	return col;
}
