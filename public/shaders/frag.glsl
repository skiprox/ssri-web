precision highp float;

uniform vec2 u_resolution;
uniform float u_time;

varying vec2 v_texcoord;

vec3 colorOne = vec3(0.2, 0.8, 0.8);
vec3 colorTwo = vec3(0.15, 0.1, 0.5);

#define TAU 6.28318530718
#define THREE_PI 9.42477796077
#define MAX_ITER 5

// Largely from https://www.shadertoy.com/view/MdlXz8
void main() {
	float time = u_time * .5+23.0;
    // uv should be the 0-1 uv of texture...
	vec2 uv = v_texcoord.xy;
    
    vec2 p = mod(uv*THREE_PI, THREE_PI)-250.0;

	vec2 i = vec2(p);
	float c = 1.0;
	float inten = .005;

	for (int n = 0; n < MAX_ITER; n++) {
		float t = time * (1.0 - (3.5 / float(n+1)));
		i = p + vec2(cos(t - i.x) + sin(t + i.y), sin(t - i.y) + cos(t + i.x));
		c += 1.0/length(vec2(p.x / (sin(i.x+t)/inten),p.y / (cos(i.y+t)/inten)));
	}
	c /= float(MAX_ITER);
	c = 1.17-pow(c, 1.4);
	vec3 colour = vec3(pow(abs(c), 8.0)) * colorOne;
    colour = clamp(colour + colorTwo, 0.0, 1.0);
    
	gl_FragColor = vec4(colour * 0.5, 1.0);
	// gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
}

