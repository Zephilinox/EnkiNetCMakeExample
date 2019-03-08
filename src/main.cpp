#include <iostream>
#include <EnkiNet/Timer.hpp>

int main()
{
	Timer timer;
	std::cout << timer.getElapsedTime() << "\n";
	return 0;	
}