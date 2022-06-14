#include <gl_utils.hpp>

bool gl_utils::check_errors()
{
	GLenum result_error = glGetError();
	bool result = false;
	while(result_error != GL_NO_ERROR)
	{
		std::string error_type;
		switch(result_error)
		{
			case GL_INVALID_ENUM:
				error_type = "GL_INVALID_ENUM";
				break;
			case GL_INVALID_VALUE:
				error_type = "GL_INVALID_VALUE";
				break;
			case GL_INVALID_OPERATION:
				error_type = "GL_INVALID_OPERATION";
				break;
			case GL_INVALID_FRAMEBUFFER_OPERATION:
				error_type = "GL_INVALID_FRAMEBUFFER_OPERATION";
				break;
			case GL_OUT_OF_MEMORY:
				error_type = "GL_OUT_OF_MEMORY";
				break;
			case GL_STACK_UNDERFLOW:
				error_type = "GL_STACK_UNDERFLOW";
				break;
			case GL_STACK_OVERFLOW:
				error_type = "GL_STACK_OVERFLOW";
				break;
			default:
				error_type = "UNDEFINED";
				break;
		}
		result = true;
		result_error = glGetError();

		std::cout << "GL_ERROR::" << error_type << "\n";
	}	
	return result;
}

void gl_utils::clearErrors()
{
	while(glGetError() != GL_NO_ERROR)
	{
		//pass
		std::cout << "opa\n";
	}
}

void gl_utils::bind_vertex_buffer(uint32_t buffer)
{
	GLCALL(	glBindBuffer(GL_ARRAY_BUFFER,buffer)	);
}

void gl_utils::bind_element_buffer(uint32_t buffer)
{
	GLCALL( glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffer)	);
}

void gl_utils::bind_vertex_array(uint32_t buffer)
{
	GLCALL(	glBindVertexArray(buffer)	);
}

uint32_t gl_utils::generate_buffer()
{
	uint32_t buffer;
	GLCALL(	glGenBuffers(1,&buffer)	);
	return buffer;
}
uint32_t gl_utils::generate_vertex_array()
{
	uint32_t vao;
	GLCALL(	glGenVertexArrays(1,&vao)	);
	return vao;
}

void gl_utils::vertex_layout(uint32_t id,GLenum type,uint32_t count,GLboolean normalized,uint32_t stride,size_t offset)
{
	GLCALL(	glEnableVertexAttribArray(id)	);
	GLCALL(	glVertexAttribPointer(id,count,type,normalized,stride,reinterpret_cast<const void *>( offset))	);
}

void gl_utils::buffer_data(GLenum target,size_t size,const void* data,GLenum usage)
{
	GLCALL(glBufferData(target,size,data,usage)	);
}

void gl_utils::buffer_subdata(GLenum target,size_t size,size_t offset,const void *data)
{
	GLCALL(	glBufferSubData(target,offset,size,data)	);
}

void gl_utils::draw_elements(GLenum primitive,uint32_t count,GLenum type,const void* indices)
{
	GLCALL( glDrawElements(primitive,count,type,indices)	);
}
