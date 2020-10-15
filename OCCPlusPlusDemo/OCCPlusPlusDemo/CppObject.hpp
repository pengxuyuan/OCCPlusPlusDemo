//
//  CppObject.hpp
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/13.
//

#ifndef CppObject_hpp
#define CppObject_hpp

#include <stdio.h>
#include <string>

#include "OCCPlusPlusBridge.h"

class CppObject
{
public:
    void ExampleMethod(const std::string& str);
    void ExampleMethod1(const std::string& str);
    void ExampleMethod2(const std::string& str);
    
    void ConfigOCCommunicationObject(void *ocObject, CPlusPlusCallOCFunction callFunction);
    // constructor, destructor, other members, etc.
    
private:
    void *targetOCObject;
    CPlusPlusCallOCFunction targetCallFunction;
};

#endif /* CppObject_hpp */
