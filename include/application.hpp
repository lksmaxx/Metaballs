#include <iostream>
#include <cstdlib>

#include <string>

#include <glad/glad.h>

#if defined(_WIN32) || defined(_WIN64)
#define GLFW_DLL
#endif
#include <GLFW/glfw3.h>

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
};
