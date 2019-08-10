vec4 ProcessTexel()
{
	vec2 ccoord = vTexCoord.st-vec2(.5);
	if ( ccoord.y < 0 ) ccoord.x *= -1.;
	ccoord.y = abs(ccoord.y);
	vec3 pt = vec3(ccoord.x,ccoord.y-1.,ccoord.y);
	vec2 proj = pt.xy/pt.z;
	vec2 coord;
	vec3 col = vec3(0.);
	coord = proj*.142536+vec2(-.3,-1.)*timer*.0925436;
	coord = fract(coord);
	col += getTexel(coord).rgb;
	coord = proj*.123234+vec2(0.,-1.)*timer*.092346;
	coord = fract(coord);
	col += getTexel(coord).rgb;
	coord = proj*.145463+vec2(0.3,-1.)*timer*.093242;
	coord = fract(coord);
	col += getTexel(coord).rgb;
	col *= vec3(1.2,.4,.8);
	col += vec3(.9,.7,1.6)*pow(max(1.2-abs(ccoord.y)*2.4,0.),6.);
	col = clamp(col,vec3(0.),vec3(1.));
	return vec4(col,1.);
}
