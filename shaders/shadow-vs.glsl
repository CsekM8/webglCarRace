#version 300 es

in vec4 vertexPosition;
in vec2 vertexTexCoord;
uniform struct{
    mat4 modelMatrix;
} gameObject;

uniform struct{
    mat4 viewProjMatrix;
} camera;

uniform struct{
    mat4 shadowMatrix;
} scene;

out vec2 tex;

void main(void) {
    gl_Position = vertexPosition * gameObject.modelMatrix * scene.shadowMatrix * camera.viewProjMatrix;
    tex = vertexTexCoord;
}
