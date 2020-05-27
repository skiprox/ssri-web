precision highp float;

uniform vec2 u_resolution;
uniform float u_time;

varying vec2 v_texcoord;

#define PI_HALF 1.5707963267949

void main() {
	vec2 uv = gl_FragCoord.xy;
	vec4 color = vec4((v_texcoord.x + 0.5) * (sin(u_time/(PI_HALF/2.0)) * 0.5 + 0.5), (v_texcoord.y + 0.5) * (sin(u_time/PI_HALF) * 0.5 + 0.5), 1.0, 1.0);
	gl_FragColor = color;
}

