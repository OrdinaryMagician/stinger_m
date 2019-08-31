vec3 bolt( in vec2 uv, in float speed, in float freq )
{
	vec3 col = vec3(0.0);
	for ( float i=0.0; i<0.05; i+=0.01 )
	{
		vec2 nuv = uv;
		nuv.x += 1.2*(0.5-texture(warptex,vec2((timer-i)*speed,nuv.y*freq)).x)*max(0.0,pow(0.5-abs(0.5-uv.y),0.5)-0.2);
		col += 0.2*getTexel(nuv).rgb;
	}
	return col;
}

vec4 ProcessTexel()
{
	vec3 col = bolt(vTexCoord.st,1.53534,0.51);
	col += bolt(vTexCoord.st,1.64563,0.62);
	col += bolt(vTexCoord.st,1.73425,0.73);
	return vec4(col,1.);
}
