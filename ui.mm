#include "bridge.h"
#include "callable.hpp"

#pragma clang diagnostic ignored "-Wobjc-root-class"

@interface UI
- (void) store_ptr:(long) ptr;
@end

@implementation UI

static Callable* m_ptr;

- (void) store_ptr: (long) ptr
{
  m_ptr = (Callable*) ptr;
}

- (void) call
{
  m_ptr->call();
}

@end

void init_cpp(long ptr)
{
  UI ui_instance = [[UI alloc] init];
  [ui_instance store_ptr : ptr ];
  [ui_instance call ];
}

