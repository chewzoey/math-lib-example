# math-lib-example
Create a C++ program that uses a Dynamic Library (Shared Library)

## The header file
```math_lib.hpp``` is a header file that gets included by ```main.cpp``` so it knows about the functions from the library

## Compile The Library
creates a dynamic shared library named ```libmath.dylib``` 
```libmath.dylib``` is a macOS thing, on windows it would be ```libmath.dll``` on linux ```libmath.so```  
  
```clang++ -shared -fPIC -o libmath.dylib math_lib.cpp```

## Compile The Program
```-L.``` tells the compiler to to look in the current directory for libraries
```-lmath``` tells the compiler to link in the ```libmath.dylib``` library  
  
```clang++ main.cpp -L. -lmath -o program```

## Compile everything  with a bash script (instead of manual running each command)
```./compile.sh```

## Run The Program using a bash script
```./run.sh```


## TODO
Add a multiply method to the math library that multiplies two numbers
