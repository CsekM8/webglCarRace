#version 300 es

in vec4 vertexPosition;
in vec2 vertexTexCoord;

uniform struct{
    mat4 viewProjMatrix;
    mat4 rayDirMatrix;
} camera;

out vec4 rayDir;

void main(void) {
    gl_Position = vec4(vertexPosition.x, vertexPosition.y, 0.99999f, 1.0f);
    rayDir = vertexPosition * camera.rayDirMatrix;
}
