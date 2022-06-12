#include "application.hpp"


Application::Application() : m_window_width(1280),m_window_height(720),m_window_name(" Metaballs")
{
	glfwInit();
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
	//glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);

	m_window = glfwCreateWindow(m_window_width,m_window_height,m_window_name.c_str(),NULL,NULL);

	if(m_window == nullptr)
	{
		std::cout << "Failed to load glfw window\n";
		glfwTerminate();
		exit(EXIT_FAILURE);
	}

	glfwMakeContextCurrent(m_window);

	if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout << "Failed to get glad function pointers\n";
		glfwTerminate();
		exit(EXIT_FAILURE);
	}
}

Application::~Application()
{
	glfwTerminate();
}

int Application::run()
{
	while(!glfwWindowShouldClose(m_window))
	{
		glfwPollEvents();
		glClear(GL_COLOR_BUFFER_BIT);

		glfwSwapBuffers(m_window);
	}

	return 0;
}
