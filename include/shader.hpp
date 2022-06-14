#pragma once

#include <gl_utils.hpp>
#include <string>

#include <fstream>
#include <sstream>

class Shader
{
	public:
	Shader();
	~Shader();


	void createProgram();

	int add_vert_shader(const std::string& path);
	int add_frag_shader(const std::string& path);
	int add_comp_shader(const std::string& path);

	int linkProgram();

	void use();

	private:
	uint32_t m_id;

};
