#include <gtest/gtest.h>

#include "ejemplo.h"

// Test de humo: si esto compila y pasa, el entorno (g++, googletest, el
// Makefile) está andando bien. Borralo cuando empieces la actividad real.
TEST(Ejemplo, Suma) { EXPECT_EQ(suma(2, 3), 5); }
