#version 430 core

layout(location = 0) in vec2 v_pos;
layout(location = 1) in vec3 v_color;

out vec3 f_color;


void main()
{
	gl_Position = vec4(v_pos,0,1);
	f_color = v_color;
}
