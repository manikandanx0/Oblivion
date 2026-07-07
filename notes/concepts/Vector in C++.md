

#　しょう
https://www.w3schools.com/cpp/cpp_vectors.asp
Vectors are resizable array in C++
Vectors can grow dynamically

Header file: `#include <vector>`

Sytnax: `vector<dataType> name;`


Example:
```c++
vector<string> cars = {"Volvo", "Skoda", "BMW". "Chevy"}

for(string car: cars) {
    count << car << endl;
}
```

## Accessing

can use array indexing, 0-indexed

1. Accessing first element: `cars[0]`

`cars.front()` method gets the first element
`cars.back()` method gets the last element
`cars.at()` method is used for index access

`.at()` method is prefered over `[]` because of StdErr support

## Modifying Elements

position = newElement

```
 // Change the value of the first element
cars[0] = "Opel";
cars.at(0) = "Opel";
```

## Adding elements

`cars.push_back("atmoic element")` method adds to the end of the vector

## Remoove Vector
`cars.pop_back()` method removes at the end of the vector

## Size
`cars.size()` => number of elements

## Empty
`cars.empty()` 
returns 1 if vector is empty (true)
returns 0 if vector is not empty (false)


## Looping. 
For and Foreach method

### Foreach
```c++
vector<string> cars = {"Volvo", "BMW", "Ford", "Mazda"};

for (string car : cars) {
  cout << car << "\n";
}
```