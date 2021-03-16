#include <iostream>
#include "bridge.h"

class Callable
{
public:
Callable()
{
  init_cpp(reinterpret_cast<long>(this));
}
void call()
{
  std::cout << "Hello, old bean" << std::endl;
}
};
