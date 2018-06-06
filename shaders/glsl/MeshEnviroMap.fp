// imitation of the Unreal Engine 1.x bMeshEnviroMap effect, not 1:1 but gets close
vec4 ProcessTexel()
{
	vec3 eyedir = normalize(uCameraPos.xyz-pixelpos.xyz);
	vec3 norm = reflect(eyedir,normalize(vWorldNormal.xyz));
	return getTexel(norm.xz*0.5);
}
