#include <stdio.h>
#include <iostream>

#ifdef __cplusplus
extern "C"{
#endif
#include "testlib2.h"
#ifdef __cplusplus
}
#endif
using namespace std;

int main(int argc, char *argv[])
{
  cout << "hello\n";
  test2();
  return 0;
}
