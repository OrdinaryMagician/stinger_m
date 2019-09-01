vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st;
	uv.x += 1.;
	float ang = timer*0.05;
	vec2 uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.3;
	vec3 col = getTexel(fract(uv2)).rgb;
	uv.y -= 2.;
	ang = timer*0.03;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.5;
	col += getTexel(fract(uv2)).rgb;
	uv.x -= 3.;
	ang = timer*0.04;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.6;
	col += getTexel(fract(uv2)).rgb;
	uv.y += 4.;
	ang = timer*0.02;
	uv2 = vec2(uv.x*cos(ang)-uv.y*sin(ang),uv.y*cos(ang)+uv.x*sin(ang))*1.2;
	col += getTexel(fract(uv2)).rgb;
	col *= 0.25;
	return vec4(col,1.);
}
