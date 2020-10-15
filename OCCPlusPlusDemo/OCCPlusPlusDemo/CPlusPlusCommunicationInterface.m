//
//  CPlusPlusCommunicationInterface.m
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/15.
//

#import "CPlusPlusCommunicationInterface.h"

void HandleCPlusPlusEvent(void *target, enum CPlusPlusCallOCFunctionActionType actionType, void *params)
{
//    [(__bridge id)target dosomthing:params];
    [(__bridge id)target handleCPlusPlusEvent:actionType params:params];
}

@interface CPlusPlusCommunicationInterface()

@end

@implementation CPlusPlusCommunicationInterface

- (instancetype)init
{
    self = [super init];
    if (self) {
        _call = HandleCPlusPlusEvent;
    }
    return self;
}


- (void)handleCPlusPlusEvent:(enum CPlusPlusCallOCFunctionActionType)actionType params:(void *)params {
    if (actionType == ActionTypeExampleMethod) {
        NSLog(@"C++ 调用 OC 方法成功 ActionTypeExampleMethod");
    } else if (actionType == ActionTypeExampleMethod1) {
        NSLog(@"C++ 调用 OC 方法成功 ActionTypeExampleMethod1");
    } else if (actionType == ActionTypeExampleMethod2) {
        NSLog(@"C++ 调用 OC 方法成功 ActionTypeExampleMethod2");
    }
}

@end
