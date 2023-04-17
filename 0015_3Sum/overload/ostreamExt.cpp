#include "../overload/ostreamExt.h"
#include <iostream>
#include <algorithm>
#include <iterator>

using namespace std;

template <typename T>
std::ostream &operator<<(std::ostream &out, const vector<T> &v)
{
    if (!v.empty())
    {
        out << '[';
        std::copy(v.begin(), v.end(), std::ostream_iterator<T>(out, ","));
        out << v.back();
        out << "]";
    }
    else
    {
        out << "[]" << endl;
    }

    return out;
}

template <typename T>
std::ostream &operator<<(std::ostream &out, const vector<vector<T>> &v)
{
    if (!v.empty())
    {
        out << '[';

        for (auto i = v.begin(); i != v.end(); ++i)
        {
            out << *i;
            if (i != v.end() - 1)
            {
                out << ",";
            }
        }
        out << "]" << endl;
    }
    else
    {
        out << "[]" << endl;
    }

    return out;
}