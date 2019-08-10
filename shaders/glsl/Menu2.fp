/* https://www.shadertoy.com/view/XslcWn */

// Maximum number of cells a ripple can cross.
#define MAX_RADIUS 1

// Set to 1 to hash twice. Slower, but less patterns.
#define DOUBLE_HASH 0

// Hash functions shamefully stolen from:
// https://www.shadertoy.com/view/4djSRW
#define HASHSCALE1 .1031
#define HASHSCALE3 vec3(.1031, .1030, .0973)

float hash12(vec2 p)
{
	vec3 p3  = fract(vec3(p.xyx) * HASHSCALE1);
	p3 += dot(p3, p3.yzx + 19.19);
	return fract((p3.x + p3.y) * p3.z);
}

vec2 hash22(vec2 p)
{
	vec3 p3 = fract(vec3(p.xyx) * HASHSCALE3);
	p3 += dot(p3, p3.yzx+19.19);
	return fract((p3.xx+p3.yz)*p3.zy);
}

vec4 ProcessTexel()
{
	vec2 resolution = vec2(3.,6.);
	vec2 uv = vTexCoord.st*resolution;
	vec2 p0 = floor(uv);
	float circles = 0.;
	for (int j = -MAX_RADIUS; j <= MAX_RADIUS; ++j)
	{
		for (int i = -MAX_RADIUS; i <= MAX_RADIUS; ++i)
		{
			vec2 pi = p0 + vec2(i, j);
			#if DOUBLE_HASH
			vec2 h = hash22(pi);
			#else
			vec2 h = pi;
			#endif
			vec2 p = pi + hash22(h);
			float t = fract(0.3*timer + hash12(h));
			float d = length(p - uv) - (float(MAX_RADIUS) + 1.)*t;
			circles += (1. - t) * (1. - t)
			* mix(sin(31.*d) * 0.5 + 0.5, 1., 0.1)
			* smoothstep(-0.6, -0.3, d)
			* smoothstep(0., -0.3, d);
		}
	}
	float intensity = 0.05;
	vec3 n = vec3(dFdx(circles), dFdy(circles), 0.);
	n.z = sqrt(1. - dot(n.xy, n.xy));
	vec3 color = getTexel(uv/resolution - intensity*n.xy).rgb + 5.*pow(clamp(dot(n, normalize(vec3(1., 0.7, 0.5))), 0., 1.), 6.);
	return vec4(color, 1.0);
}