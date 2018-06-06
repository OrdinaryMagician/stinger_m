// imitation of the Unreal Engine 1.x ambient glow effect, timing may be off
// combining with brightmaps requires the brightmap to be embedded into the
// alpha channel of the diffuse texture
#define PI 3.14159265
vec4 ProcessLight( vec4 color )
{
	float bright = getTexel(vTexCoord.st).a;
	float glow = (1.0+sin(timer*2*PI))*0.25;
	return vec4(min(color.rgb+vec3(bright)+vec3(glow),1.0),color.a);
}

vec4 ProcessTexel()
{
	return vec4(getTexel(vTexCoord.st).rgb,1.0);
}
