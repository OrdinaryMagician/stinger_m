vec3 bolt( in vec2 uv, in float speed, in float freq )
{
	vec3 col = vec3(0.0);
	for ( float i=0.0; i<0.03; i+=0.01 )
	{
		vec2 nuv = uv;
		nuv.x += 0.3*(0.5-texture(warptex,vec2((timer-i)*speed,nuv.y*freq)).x)*pow(uv.y,0.5);
		col += 0.2*getTexel(nuv).rgb;
	}
	return col;
}

vec4 ProcessTexel()
{
	vec3 col = bolt(vTexCoord.st,2.53534,0.21);
	col += bolt(vTexCoord.st,2.64563,0.32);
	col += bolt(vTexCoord.st,2.73425,0.43);
	return vec4(col,1.);
}
