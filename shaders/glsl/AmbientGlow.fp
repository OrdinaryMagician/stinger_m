// imitation of the Unreal Engine 1.x ambient glow effect, timing may be off
#define PI 3.14159265
vec4 ProcessLight( vec4 color )
{
	float glow = (1.0+sin(timer*2*PI))*0.25;
	return vec4(min(color.rgb+vec3(glow),1.0),color.a);
}

vec4 ProcessTexel()
{
	return getTexel(vTexCoord.st);
}
