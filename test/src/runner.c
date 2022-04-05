#include <unity/unity.h>

#include "../../inc/autumn_sandcastle.h"

#include "../inc/test_autumn_sandcastle.h"

void setUp(void) {
    // set stuff up here
}

void tearDown(void) {
    // clean stuff up here
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_hello);
    return UNITY_END();
}
