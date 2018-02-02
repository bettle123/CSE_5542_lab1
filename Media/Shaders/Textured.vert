
layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 vertexColor;

uniform mat4 ModelView;
uniform mat4 Projection;

out vec3 fragmentColor;
void main()
{
	gl_Position = gl_ModelViewProjectionMatrix* vec4(pos, 1.0);
	if(gl_Position <0.1){
		fragmentColor = vec3(0.1f, 0.1f, 0.1f);
	};
	fragmentColor = vertexColor;
	
}

