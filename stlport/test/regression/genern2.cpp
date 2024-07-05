// STLport regression testsuite component.
// To compile as a separate example, please #define MAIN.

#include "fib.h"
#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <iterator>
#include <vector>

#ifdef MAIN
#define genern2_test main
#endif

#if !defined(STLPORT) || defined(__STL_USE_NAMESPACES)
using namespace std;
#endif
int genern2_test(int, char **) {
  cout << "Results of genern2_test:" << endl;

  vector<int> v1(10);
  Fibonacci generator;
  generate_n(v1.begin(), v1.size(), generator);
  ostream_iterator<int> iter(cout, " ");
  copy(v1.begin(), v1.end(), iter);
  cout << endl;
  return 0;
}
