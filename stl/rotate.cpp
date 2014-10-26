#include <cstdlib>

#include <vector>
#include <algorithm>
#include <iostream>
#include <numeric>

int main() {
  using vInt = std::vector<int>;

  vInt vec(10);
  std::iota(std::begin(vec), std::end(vec), 0);

  std::cout << "Before ROTATE:" << std::endl;
  for (auto i : vec) {std::cout << i << " ";}
  std::cout << std::endl;

  std::rotate(vec.begin() + 2, vec.begin() + 4, vec.begin() + 6);

  std::cout << "After ROTATE:" << std::endl;
  for (auto i : vec) {std::cout << i << " ";}
  std::cout << std::endl;

  return EXIT_SUCCESS;


}

