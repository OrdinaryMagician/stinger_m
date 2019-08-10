vec4 ProcessTexel()
{
	vec2 coord = vTexCoord.st*4.-vec2(0.,timer*0.1);
	coord = fract(coord);
	vec3 base = getTexel(coord).rgb;
	float dist = pow(distance(vec2(.5),vTexCoord.st)*1.4,.5);
	vec3 col = mix(vec3(1.,.9,.7),vec3(0.),min(1.,dist));
	col *= 1.-vTexCoord.t*.8;
	return vec4(base*col,1.);
}
