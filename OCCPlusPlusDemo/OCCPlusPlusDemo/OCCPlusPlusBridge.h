//
//  OCCPlusPlusBridge.h
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/15.
//

#ifndef OCCPlusPlusBridge_h
#define OCCPlusPlusBridge_h

enum CPlusPlusCallOCFunctionActionType {
    ActionTypeExampleMethod,
    ActionTypeExampleMethod1,
    ActionTypeExampleMethod2
};

// C++ 代码调用 OC 方法
typedef void(*CPlusPlusCallOCFunction)(void *target, enum CPlusPlusCallOCFunctionActionType actionType, void *params);

#endif /* OCCPlusPlusBridge_h */
