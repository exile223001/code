#include "test.h"
#include <vector>
#include <algorithm>

class Node
{
public:
    Node() {}
    virtual ~Node() { }

};

int main(int argc, char** argv)
{
    //C<int> c;
    //C<int*> d;
    //C<Node> e;
    //C<Node*> f;
    
    std::vector<int> vec;
    vec.push_back(1);
    vec.push_back(3);
    vec.push_back(2);
    vec.push_back(5);

    std::vector<int>::iterator it = std::find(vec.begin(), vec.end(), 2);
    printf("%d\n", *it);

    int a[3] = {0, 1, 3};
    int* iter = std::find(&a[0], &a[2], 1);
    printf("%d\n", *iter);

    //int** p = new int*();
    //MyIter<int*> it(p);
    //printf("%d\n", func(it));

    return 0;
}
