all: main.cpp
	clang++ -g -O0 -std=c++11 -o main main.cpp

ast: main.cpp
	clang++ -cc1 -ast-print main.cpp


clean: 
	rm -rf main *dSYM

