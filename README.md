# math-lib-example
Create a C++ program that uses a Dynamic Library (Shared Library)

# Compile The Library
clang++ -shared -fPIC -o libmath.dylib math_lib.cpp

# Compile The Program
clang++ main.cpp -L. -lmath -o program

# Compile The Program with a bash script
./compile.sh

# Run The Program using a bash script
./run.sh
