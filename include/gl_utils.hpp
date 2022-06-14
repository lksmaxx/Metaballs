#pragma once

#include <glad/glad.h>
#include <string>
#include <iostream>

#define GLCALL(x)\
{\
	gl_utils::clearErrors();\
	x;\
	if(gl_utils::check_errors())\
	{\
		std::cout << "GLCALL:" << #x << "	FILE:" <<__FILE__ << " LINE: " << __LINE__ << "\n";\
	}\
}

namespace gl_utils
{
	bool check_errors();
	void clearErrors();
	//simple wrapper to the original gl funcion
	 void bind_vertex_buffer(uint32_t buffer);
	//simple wrapper to the original gl funcion
	void bind_element_buffer(uint32_t buffer);
	//simple wrapper to the original gl funcion
	void bind_vertex_array(uint32_t buffer);

	uint32_t generate_buffer();
	uint32_t generate_vertex_array();
	void vertex_layout(uint32_t id,GLenum type,
			uint32_t count,GLboolean normallize,
			uint32_t stride,size_t offset);

	void buffer_data(GLenum target,size_t size,
			const void* data,GLenum usage);
	void buffer_subdata(GLenum target,size_t size,
			size_t offset,const void* data);
	void draw_elements(GLenum primitive,uint32_t count,
				GLenum type,const void* indices = NULL);
};
