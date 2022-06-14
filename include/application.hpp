#pragma once

#include <iostream>
#include <cstdlib>

#include <string>

#include <glad/glad.h>

#if defined(_WIN32) || defined(_WIN64)
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

#include <vector>
#include <memory>

#include <gl_utils.hpp>
#include <shader.hpp>

#define DEBUG
#ifdef DEBUG
#define PRINT(x) std::cout << x << "\n";
#else
#define PRINT(x)
#endif


class Application
{
	public:
	Application();
	~Application();

	int run();

	private:
	GLFWwindow *m_window;
	uint32_t m_window_width,m_window_height;
	std::string m_window_name;


	//test
	uint32_t m_vao,m_vbo,m_ebo;
	Shader m_triangle_shader;
};
