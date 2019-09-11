void main()
{
	vec2 uv = TexCoord.st;
	vec2 p = vec2(0.5)-uv;
	vec2 sz = textureSize(InputTexture,0);
	if ( sz.x > sz.y ) p.x *= sz.x/sz.y;
	else p.y *= sz.y/sz.x;
	vec3 col = texture(InputTexture,uv+p*pow(length(p),8.)*40.).rgb;
	col = max(col.r,max(col.g,col.b))*vec3(1.,0.2,.1);
	col *= 1.-clamp(pow(length(p)*2.,16.),0.,1.);
	FragColor = vec4(col,1.0);
}
