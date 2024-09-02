// simple_interpreter.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Função que interpreta uma expressão e retorna o resultado como double
double interpret_expression(const char* expression) {
    double result = 0.0;
    // Aqui, estamos apenas usando a função `atof` para simplificação.
    // Em um cenário real, você poderia usar um parser ou uma linguagem de script embutida.
    result = atof(expression);
    return result;
}