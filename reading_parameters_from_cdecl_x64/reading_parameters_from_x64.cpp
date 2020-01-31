#include <iostream>

extern "C" int AddFiveNumbers(int first, int second, int third, int fourth, int fifth);

int main()
{
	int ret = AddFiveNumbers(10, 20, 30, 40, 50);

    std::cout << ret;
}