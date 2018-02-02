#version 330 core
varying vec3 vertexNormal;
varying vec3 eyePosition;

void main()
{
	gl_Position = ftransform();

	vertexNormal = vec3(gl_NormalMatrix * gl_Normal);
	vec4 ecPosition = gl_ModelViewMatrix * gl_Vertex;
	eyePosition = vec3(ecPosition) / ecPosition.w;
}

