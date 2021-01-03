/**
 * main.cpp - v0.0.0
 * Copyright (C) 2021 Robert Coffey
 */

#include <Drill.hpp>

int main()
{
    unsigned int count = 0;
    unsigned int difficulty = 1;

    Drill drill;
    double result;

    for (int i = 0; i < count; ++i) {
        drill.genExpr(difficulty);
        // Output expression
        // Get input result
        if (result == drill.getRes()) {
            // Output correct
            // Increase score
        }
        else {
            // Output incorrect
        }
    }

    return 0;
}

/**
 * Version History
 * 0.0.0 - 2021-01-02 - First commit
 */
