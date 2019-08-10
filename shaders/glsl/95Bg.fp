vec4 ProcessTexel()
{
	const vec3 col0 = vec3(.0625,.5,1.);
	const vec3 col1 = vec3(.5,.0625,.375);
	vec2 coord = vTexCoord.st+vec2(timer*0.02,0.);
	coord = fract(coord);
	float base = getTexel(coord).x;
	double dist = abs(vTexCoord.s-.5)*2.;
	vec3 col = mix(col0,col1,vec3(min(1.,dist*1.3)));
	col = mix(col,vec3(0.),vec3(min(1.,dist)));
	return vec4(base*col,1.);
}
