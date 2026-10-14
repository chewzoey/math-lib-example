# delete existing binaries
rm ./program
rm ./libmath.dylib

# compile the library
clang++ -shared -fPIC -o libmath.dylib math_lib.cpp

# compile the program
clang++ main.cpp -L. -lmath -o program

