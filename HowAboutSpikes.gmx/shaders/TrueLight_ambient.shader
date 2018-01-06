attribute vec4 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * in_Position;

    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform vec4 ambientColor;
uniform sampler2D shadow_texture;

void main() {
    vec4 diffuseColor = texture2D(gm_BaseTexture, v_vTexcoord);
    vec4 shadowColor = texture2D(shadow_texture, v_vTexcoord);
    vec4 amb_final = ambientColor/254.0;
    gl_FragColor = vec4( shadowColor.rgb + diffuseColor.rgb * amb_final.rgb * amb_final.a, diffuseColor.a);
}
