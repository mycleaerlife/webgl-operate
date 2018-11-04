
precision lowp float;

@import ../shaders/facade.vert;


uniform mat4 u_viewProjection;
uniform mat4 u_model;

#if __VERSION__ == 100
    attribute vec3 a_vertex;
    attribute vec2 a_texcoord;
#else
    layout(location = 0) in vec3 a_vertex;
    layout(location = 1) in vec2 a_texcoord;
#endif

varying vec3 v_vertex;
varying vec2 v_texcoord;


void main()
{
    v_vertex = a_vertex;
    v_texcoord  = a_texcoord;

    gl_Position = u_viewProjection * u_model * vec4(a_vertex, 1.0);
}
