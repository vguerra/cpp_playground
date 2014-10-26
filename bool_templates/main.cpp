

#include <iostream>
#include <string>

template <bool B>
void Log(std::ostream& out, const std::string& str) {
  if (B) {
    out << str << "\n";
  }
}

int main() {
  Log<true>(std::cout, "This is going to be printed");
  Log<false>(std::cout, "This should not");
}
