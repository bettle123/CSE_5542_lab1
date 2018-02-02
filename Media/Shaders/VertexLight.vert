
layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 vertexColor;
layout(location = 2) in vec3 normal;

uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;

out vec3 fragmentColor;
void main()
{
	//gl_Position = gl_ModelViewProjectionMatrix* vec4(pos, 1.0);
	gl_Position = modelViewMatrix * projectionMatrix *vec4(pos, 1.0);
	fragmentColor = vertexColor;
	
}

