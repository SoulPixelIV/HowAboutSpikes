attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position.xyz, 1.0);
        
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform sampler2D light;

float sample(vec2 coord, float radius) {
return step(radius, texture2D(gm_BaseTexture, coord).r);
}

uniform float angle;
uniform float blur_amount;
uniform vec4 tex_color;
uniform vec4 sprite_coords;
uniform float surface_size;

void main() {
    float PI = 3.14;

    float sin_theta = sin(angle);
    float cos_theta = cos(angle);
    mat2 rotation_matrix = mat2(cos_theta,sin_theta, -sin_theta, cos_theta);
    rotation_matrix *=0.5;
    rotation_matrix +=0.5;
    rotation_matrix = rotation_matrix * 2.0 - 1.0;
    
    vec2 norm = v_vTexcoord * 2.0 - 1.0;
    float theta = atan(-norm.y, norm.x);
    float radius = length(norm);
    float coord = (theta + PI) / (2.0*PI);

    vec2 tc = vec2(coord, 0.0);

    float center = sample(tc, radius); 

    float blur = (1.0/(surface_size*blur_amount))  * smoothstep(0.0, 1.0, radius);

    float sum = 0.0;
    
    sum += sample(vec2(tc.x - 3.5*blur, tc.y), radius) * 0.14;
    sum += sample(vec2(tc.x - 1.5*blur, tc.y), radius) * 0.27;
    sum += center * 0.16;
    sum += sample(vec2(tc.x + 1.5*blur, tc.y), radius) * 0.27;
    sum += sample(vec2(tc.x + 3.5*blur, tc.y), radius) * 0.14;

    //vec4 light_color = vec4(texture2D(light,(v_vTexcoord-vec2(0.5))*rotation_matrix+vec2(0.5) )); //Old style "Used for 3D" texture pages
    vec4 light_color = texture2D(light, sprite_coords.st + v_vTexcoord * (sprite_coords.pq - sprite_coords.st)); //New single texture page
    
    gl_FragColor = vec4(vec3(sum * smoothstep(1.0, 0.0, radius)*tex_color), tex_color.a) * light_color;
}
