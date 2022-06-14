#include "application.hpp"


Application::Application() : m_window_width(1280),m_window_height(720)
{
	PRINT("Begin program");

	m_window_name = "Metaballs";

	glfwInit();
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
	//glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);

	m_window = glfwCreateWindow(m_window_width,m_window_height,m_window_name.c_str(),NULL,NULL);

	if(m_window == nullptr)
	{
		std::cout << "Failed to load glfw windowgn";
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



	//hello triangle test
	m_vao = gl_utils::generate_vertex_array();
	m_vbo = gl_utils::generate_buffer();
	m_ebo = gl_utils::generate_buffer();

	gl_utils::bind_vertex_array(m_vao);
	gl_utils::bind_vertex_buffer(m_vbo);
	gl_utils::bind_element_buffer(m_ebo);

	std::vector<float> vertex_data
	{
		-0.5,-0.5,
		 0.5,-0.5,
	 	 0.0, 0.5
	};

	std::vector<float> vertex_color
	{
		1.0,0.0,0.0,
		0.0,1.0,0.0,
		0.0,0.0,1.0
	};


	//vertex buffer data setup
	gl_utils::buffer_data(GL_ARRAY_BUFFER,
			sizeof(float) * (vertex_data.size() + vertex_color.size()),
			vertex_data.data(),GL_STATIC_DRAW);
	
	gl_utils::buffer_subdata(GL_ARRAY_BUFFER,
			sizeof(float) * vertex_color.size(),
			sizeof(float) * vertex_data.size(),
			vertex_color.data());

	gl_utils::vertex_layout(0,GL_FLOAT,2,GL_FALSE,0,0);
	gl_utils::vertex_layout(1,GL_FLOAT,3,GL_FALSE,0,sizeof(float) * vertex_data.size());

	//element buffer data setup
	
	std::vector<uint32_t> element_buffer_data
	{
		0,1,2	//trivial in this case
	};
	gl_utils::buffer_data(GL_ELEMENT_ARRAY_BUFFER,
			sizeof(uint32_t) * element_buffer_data.size(),
			element_buffer_data.data(),
			GL_STATIC_DRAW);


	m_triangle_shader.createProgram();

	int result = m_triangle_shader.add_vert_shader("res/shaders/hello_triangle_vert.glsl");
	
	if(result == -1)
	{
		std::cout << "Failed to open vertex shader file\n";
		exit(EXIT_FAILURE);
	}
	else if(result == -2)
	{
		std::cout << "Failed to compile vertex shader\n";
		exit(EXIT_FAILURE);
	}

	
	result = m_triangle_shader.add_frag_shader("res/shaders/hello_triangle_frag.glsl");
	if(result == -1)
	{
		std::cout << "Failed to open fragment shader file\n";
		exit(EXIT_FAILURE);
	}
	else if(result == -2)
	{
		std::cout << "Failed to compile fragment shader\n";
		exit(EXIT_FAILURE);
	}



	result = m_triangle_shader.linkProgram();
	if(result != 0)
	{
		std::cout << "Failed to link program\n";
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

		m_triangle_shader.use();
		gl_utils::bind_vertex_array(m_vao);
		gl_utils::draw_elements(GL_TRIANGLES,3,GL_UNSIGNED_INT,NULL);

		glfwSwapBuffers(m_window);
	}

	return 0;
}
