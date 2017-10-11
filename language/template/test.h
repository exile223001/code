#include <stdio.h>

template<typename T>
class C
{
public:
   C(){ printf("this is C\n"); }
   virtual ~C(){ }

};

template<typename T>
class C<T*>
{
public:
   C(){ printf("this is C pointer\n"); }
   virtual ~C(){ }

};

template<class T>
struct MyIter{
    typedef T value_type;
    MyIter(T* temp)
    {
        ptr = temp;
    }
    T& operator*() const { return *ptr; }
    T* ptr;
};

template<class I> 
typename I::value_type func(I iter)
{
    return *iter;
}

//template <class T>
//struct MyIter // 里面加入一个类型定义value_type
//{
//    typedef T value_type;  // 内嵌型别声明
//    T* ptr;
//    MyIter(T* p) { ptr = p; }
//    T& operator*() const {return *ptr;}
//};
//
//template <class I>
//typename I::value_type func(I ite) // 通过I::value_type返回I的类型，注意typename不能省略
//{
//    return *ite;
//}




