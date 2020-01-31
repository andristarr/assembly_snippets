#include <iostream>

extern "C" int CallCdecl();

extern "C" int CallMeByCdecl(int first, int second, int third, int fourth, int fifth)
{
	return fifth - (fourth + third + second + first);
}

int main()
{
    std::cout << CallCdecl();
}
