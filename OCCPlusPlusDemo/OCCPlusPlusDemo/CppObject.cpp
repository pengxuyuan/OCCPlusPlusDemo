//
//  CppObject.cpp
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/13.
//

#include "CppObject.hpp"

void CppObject::ConfigOCCommunicationObject(void *ocObject, CPlusPlusCallOCFunction callFunction) {
    targetOCObject = ocObject;
    targetCallFunction = callFunction;
}

void CppObject::ExampleMethod(const std::string& str){
    printf("CppObject.hpp ExampleMethod Call");
    
    //C++ 即将调用 OC 代码
    std::string str1 = "ExampleMethod";
    void *param = &str1;
    enum CPlusPlusCallOCFunctionActionType actionType = ActionTypeExampleMethod;
    targetCallFunction(targetOCObject, actionType, param);
};

void CppObject::ExampleMethod1(const std::string& str){
    printf("CppObject.hpp ExampleMethod1 Call");

    //C++ 即将调用 OC 代码
    std::string str1 = "ExampleMethod1";
    void *param = &str1;
    enum CPlusPlusCallOCFunctionActionType actionType = ActionTypeExampleMethod1;
    targetCallFunction(targetOCObject, actionType, param);
};


void CppObject::ExampleMethod2(const std::string& str){
    printf("CppObject.hpp ExampleMethod2 Call");
    
    //C++ 即将调用 OC 代码
    std::string str1 = "ExampleMethod2";
    void *param = &str1;
    enum CPlusPlusCallOCFunctionActionType actionType = ActionTypeExampleMethod2;
    targetCallFunction(targetOCObject, actionType, param);
};




