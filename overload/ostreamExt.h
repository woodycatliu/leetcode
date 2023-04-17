#ifndef OSTREAMEXT_H
#define OSTREAMEXT_H

#include <iostream>
#include <vector>

using namespace std;

template <typename T>
std::ostream &operator<<(std::ostream &out, const std::vector<T> &v);

template <typename T>
std::ostream &operator<<(std::ostream &out, const std::vector<std::vector<T>> &v);

#endif