#include "SampleLib/SampleClass.hpp"
#include <iostream>

int main()
{
    auto sample = SampleClass();
    sample.itemA(4);
    auto sum = sample.sum();
    std::cout << sum << std::endl;
}