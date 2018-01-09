#include    <map>
#include    <string>
#include    <iostream>

int main()
{
    std::multimap<float, std::string>  ds;
    ds.emplace(2.2f, std::string("a"));
    ds.emplace(2.1f, std::string("b"));
    ds.emplace(3.0f, std::string("d"));
//    auto r = ds.equal_range(2.0f);
//    for ( auto it = r.first; it != r.second; ++it )
    for (auto it = ds.begin(); it != ds.end(); ++it)
        std::cout << it->second << std::endl;
}
