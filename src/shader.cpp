#include <shader.hpp>

Shader::Shader()
{
}

Shader::~Shader()
{
	glDeleteProgram(m_id);
}

void Shader::createProgram()
{
	GLCALL(m_id = glCreateProgram()	);
}

int Shader::add_vert_shader(const std::string& path)
{
	//load file
	std::ifstream file;
	file.open(path);
	std::string shader_source;
	if(file.is_open())
	{
		std::stringstream buffer;	
		buffer << file.rdbuf();
		shader_source = buffer.str();
		file.close();
	}
	else
		return -1;	//failed to open file
	//create and compile shader
	uint32_t shader;
	const char* source_ptr = shader_source.c_str();
	GLCALL(	shader = glCreateShader(GL_VERTEX_SHADER)	);
	GLCALL(	glShaderSource(shader,1,&source_ptr,NULL)	);
	GLCALL(	glCompileShader(shader)	);

	//check shader compile errors

	int result;
	
	GLCALL(	glGetShaderiv(shader,GL_COMPILE_STATUS,&result)	);
	if(result == GL_FALSE)
	{
		std::cout << source_ptr << "\n";
		char buffer[1024];
		GLCALL(	 glGetShaderInfoLog(shader,1024,NULL,buffer)	);
		std::cout << "ERROR::VERTEX_SHADER(path:" << path << ")\n" << 
			std::string(buffer) << "\n";
		return -2;
	}
	
	//attach shader to shader program
	GLCALL(	glAttachShader(m_id,shader)	);
	return 0;
}

int Shader::add_frag_shader(const std::string& path)
{
	//load file
	std::ifstream file;
	file.open(path);
	std::string shader_source;
	if(file.is_open())
	{
		std::stringstream buffer;
		buffer << file.rdbuf();
		shader_source = buffer.str();
		file.close();
	}
	else
		return -1;
	//create and compile shader
	const char* source_ptr = shader_source.c_str();
	uint32_t shader;
	GLCALL(	shader = glCreateShader(GL_FRAGMENT_SHADER)	);
	GLCALL(	glShaderSource(shader,1,&source_ptr,NULL)	);
	GLCALL(	glCompileShader(shader)	);

	//check for shader compile errors
	int result;
	GLCALL(	glGetShaderiv(shader,GL_COMPILE_STATUS,&result)	);
	if(result == GL_FALSE)
	{
		char buffer[1024];
		GLCALL( glGetShaderInfoLog(shader,1024,NULL,buffer)	);
		std::cout << "ERROR::FRAGMENT_SHADER(path:"<<path<<")\n" << std::string(buffer) << "\n";
		return -2;
	}

	//attach shader to shader program
	GLCALL(	glAttachShader(m_id,shader)	);
	return 0;
}

int Shader::add_comp_shader(const std::string& path)
{	
	//open file
	std::ifstream file;
	file.open(path);
	std::string shader_source;
	if(file.is_open())
	{
		std::stringstream buffer;
		buffer << file.rdbuf();
		shader_source = buffer.str();
		file.close();
	}
	else
		return -1;

	//create and compile shader
	const char* source_ptr = shader_source.c_str();
	uint32_t shader;
	GLCALL(shader = glCreateShader(GL_COMPUTE_SHADER)	);
	GLCALL(glCompileShader(shader)	);

	//check compile errors
	int result;
	GLCALL(	glGetShaderiv(shader,GL_COMPILE_STATUS,&result)	);
	if(result == GL_FALSE)
	{
		char buffer[1024];
		GLCALL(	glGetShaderInfoLog(shader,1024,NULL,buffer)	);
		std::cout << "ERROR::COMPUTE_SHADER(path:"<<path<<")\n" <<
			std::string(buffer) << "\n";
		return -2;
	}
	//attach shader to shader program
	GLCALL(	glAttachShader(m_id,shader)	);
	return 0;
}

int Shader::linkProgram()
{
	GLCALL( glLinkProgram(m_id)	);

	int result;
	GLCALL( glGetProgramiv(m_id,GL_LINK_STATUS,&result)	);
	if(result == GL_FALSE)
	{
		char buffer[1024];
		GLCALL(glGetProgramInfoLog(m_id,1024,NULL,buffer)	);
		std::cout << "ERROR::SHADER_PROGRAM\n" << buffer << "\n";
		return -1;
	}	

	return 0;
}
void Shader::use()
{
	GLCALL( glUseProgram(m_id)	);
}
