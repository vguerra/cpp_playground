// Victor Guerra <vguerra@gmail.com>
// 2014-09-26

#include <cstdlib>

#include <iostream>
#include <algorithm>
#include <vector>
#include <numeric>
#include <iterator>
#include <chrono>
#include <random>

class timer {
  public:
  void start() { start_time = std::chrono::system_clock::now(); }
  std::chrono::microseconds microseconds() const {
    return std::chrono::microseconds(std::chrono::system_clock::now() -
                                     start_time);
  }

  private:
  std::chrono::system_clock::time_point start_time;
};

// ordered_insert using linear search
template <typename T>
typename std::vector<T>::iterator ordered_insert_linear(
    std::vector<T>& container, typename std::vector<T>::value_type v) {
  typename std::vector<T>::iterator i(container.begin());
  while (i != container.end() && !(v < *i)) ++i;
  return container.insert(i, v);
}

// ordered_insert using binary search
template <typename T>
typename std::vector<T>::iterator ordered_insert_binary(
    std::vector<T>& container, typename std::vector<T>::value_type v) {
  return container.insert(
      std::lower_bound(container.begin(), container.end(), v), v);
}

using namespace std;
using vInt = vector<uint64_t>;

static const size_t elements = 100000;

int main() {
  vInt vec(elements);
  iota(begin(vec), end(vec), 1);

  random_device rd;
  mt19937_64 gen(rd());
  uniform_int_distribution<size_t> dis(1, elements);

  auto pos = dis(gen);
  vec.erase(begin(vec) + pos - 1);

  timer t1;

  t1.start();
  ordered_insert_linear(vec, pos);
  auto enlapsed_time = t1.microseconds().count();
  cout << "Linear search insertion of " << pos << ": " << enlapsed_time << " us"
       << endl;

  pos = dis(gen);
  vec.erase(begin(vec) + pos - 1);

  t1.start();
  ordered_insert_binary(vec, pos);
  enlapsed_time = t1.microseconds().count();
  cout << "Binary search insertion of " << pos << ": " << enlapsed_time << " us"
       << endl;

  return EXIT_SUCCESS;
}
