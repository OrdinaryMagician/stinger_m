// imitation of the Unreal Engine 1.x bMeshEnviroMap effect, not 1:1 but gets close
vec4 ProcessTexel()
{
	vec4 base = getTexel(vTexCoord.st);
	float mask = texture(masktex,vTexCoord.st).x;
	vec3 eyedir = normalize(uCameraPos.xyz-pixelpos.xyz);
	vec3 norm = reflect(eyedir,normalize(vWorldNormal.xyz));
	return vec4(base.rgb+texture(envtex,norm.xz*0.5+0.5).rgb*mask,base.a);
}
