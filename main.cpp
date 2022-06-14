#include <iostream>
#include <cstdlib>

#include <application.hpp>

int main()
{
	Application *my_app = new Application();

	my_app->run();

	delete my_app;	

	exit(EXIT_SUCCESS);	
}
