/**
 * Drill.hpp - v0.0.0
 * Copyright (C) 2021 Robert Coffey
 */

#ifndef DRILL_HPP_
#define DRILL_HPP_

#include <string>

class Drill {
private:
    std::string expr; // Mathematical expression
    double res;       // Expression result

public:
    /**
     * Generate a mathematical expression.
     * @param difficulty Difficulty level of the expression.
     */
    void genExpr(unsigned int difficulty);

    /**
     * Get the result of the mathematical expression.
     * @return Expression result
     */
    double getRes();
};

#endif //DRILL_HPP_
