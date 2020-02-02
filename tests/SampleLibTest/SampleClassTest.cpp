#include "SampleClass.hpp"
#include <gtest/gtest.h>

TEST(SampleClassTest, verifySum)
{
    auto sample = SampleClass();
    auto sum = sample.sum();
	auto expectedSum = 0;
    EXPECT_EQ(sum, expectedSum) << "Initial sum: " << sum << ", expected: " << expectedSum;
}