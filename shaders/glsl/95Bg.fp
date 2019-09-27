vec4 ProcessTexel()
{
	const vec3 fadecol = vec3(.9,.1,.2);
	vec2 coord = vTexCoord.st+vec2(timer*0.02,0.);
	coord = fract(coord);
	vec3 base = getTexel(coord).rgb;
	float dist = abs(vTexCoord.s-.5)*2.;
	vec3 col = mix(vec3(1.),fadecol,vec3(min(1.,dist*1.3)));
	col = mix(col,vec3(0.),vec3(min(1.,dist)));
	return vec4(base*col,1.);
}
