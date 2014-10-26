// Victor Guerra <vguerra@gmail.com>
// 2014-09-08

#include <cstdlib>
#include <iostream>
#include <vector>
#include <numeric>
#include <algorithm>

using vInt = std::vector<int>;

struct count_swaps {
  uint32_t counter = 0;
  template <typename T>
  void swap(T& a, T& b) {
    ++counter;
    std::swap(a, b);
  }
  void reset() { counter = 0; }
};

inline void printv(const vInt& v) {
  for (auto i : v) {
    std::cout << i << " ";
  }
  std::cout << std::endl;
}

void gen_backtrack_perm(count_swaps& f, std::size_t n, vInt& v) {
  if (n == 1) {
    printv(v);
  } else {
    for (std::size_t c = 1; c <= n; ++c) {
      f.swap(v[c - 1], v[n - 1]);
      gen_backtrack_perm(f, n - 1, v);
      f.swap(v[c - 1], v[n - 1]);
    }
  }
}

void gen_perm(count_swaps& f, std::size_t n, vInt& v) {
  if (n == 1) {
    for (auto num : v) {
      std::cout << num << " ";
    }
    std::cout << std::endl;
  } else {
    for (std::size_t i = 1; i <= n; ++i) {
      gen_perm(f, n - 1, v);
      std::size_t j = (n & 1 ? 1 : i);
      f.swap(v[j - 1], v[n - 1]);
    }
  }
}

int main() {
  // vInt vperm = {10, 20 , 30, 40, 50};
  std::size_t elements;
  std::cin >> elements;
  vInt vperm(elements);
  std::iota(vperm.begin(), vperm.end(), 1);
  // for (auto i : vperm) {
  // std::cout << "num: " << i << std::endl;
  //}
  count_swaps c;
  gen_perm(c, vperm.size(), vperm);
  std::cout << "gen_perm swaps: " << c.counter << std::endl;
  c.reset();
  gen_backtrack_perm(c, vperm.size(), vperm);
  std::cout << "gen_backtrack swaps: " << c.counter << std::endl;
  return EXIT_SUCCESS;
}
