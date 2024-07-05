// STLport regression testsuite component.
// To compile as a separate example, please #define MAIN.

#include <algorithm>
#include <deque>
#include <iostream>
#include <queue>
#include <stack>

#ifdef MAIN
#define stack1_test main
#endif

#if !defined(STLPORT) || defined(__STL_USE_NAMESPACES)
using namespace std;
#endif
int stack1_test(int, char **) {
  cout << "Results of stack1_test:" << endl;
  stack<int, deque<int>> s;
  s.push(42);
  s.push(101);
  s.push(69);
  while (!s.empty()) {
    cout << s.top() << endl;
    s.pop();
  }
  return 0;
}
