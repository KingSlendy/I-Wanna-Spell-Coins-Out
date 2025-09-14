//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
	vec4 color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	if (color.r == 0.0 && color.g == 1.0 && color.b == 0.0) {
		color.a = 0.0;
	}
	
    gl_FragColor = color;
}