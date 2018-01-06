attribute vec4 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;
    v_vTexcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform float numRays;
uniform float THRESHOLD;

const float PI = 3.14;

const int max_iterations = 254;

void main() {
    float dist = 1.0;
   
    for (int i=0; i<max_iterations; i++) {
        
     if (float(i) < float(max_iterations)) {
        vec2 norm = vec2(v_vTexcoord.x, float(i)/numRays) * 2.0 - 1.0;
        float theta = PI*1.5 + norm.x * PI; 
        float radius = (1.0 + norm.y) * 0.5;

        vec2 coord = vec2(-radius * sin(theta), -radius * cos(theta))/2.0 + 0.5;

        vec4 data = texture2D(gm_BaseTexture, coord);

        float dst = float(i)/numRays;

        float caster = data.r;
        if (caster > THRESHOLD) { dist = min(dist, dst); }      
     }
    else { break; }
    }
  gl_FragColor = vec4(vec3(dist), 1.0);
}
