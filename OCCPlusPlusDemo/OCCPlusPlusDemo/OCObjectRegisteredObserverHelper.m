//
//  OCObjectRegisteredObserverHelper.m
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/15.
//

#import "OCObjectRegisteredObserverHelper.h"
#import "CPlusPlusCommunicationInterface.h"
#import "OCCPlusPlusBridge.h"

@interface OCObjectRegisteredObserverHelper()

@property (nonatomic, strong) NSMutableArray *observerArray;

@end

@implementation OCObjectRegisteredObserverHelper

+ (void)load {
    CPlusPlusCommunicationInterface *interface = [CPlusPlusCommunicationInterface sharedInstance];
    void *targetOCObject = (__bridge void*)interface;
    
    GlobleOCTargetObserverCPlusPlus = targetOCObject;
    NSLog(@"targetOCObject %@",targetOCObject);
    NSLog(@"GlobleOCTargetObserverCPlusPlus %@",GlobleOCTargetObserverCPlusPlus);
}

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static OCObjectRegisteredObserverHelper *instance;
    dispatch_once(&onceToken, ^{
        instance = [OCObjectRegisteredObserverHelper new];
    });
    return instance;
}

@end
