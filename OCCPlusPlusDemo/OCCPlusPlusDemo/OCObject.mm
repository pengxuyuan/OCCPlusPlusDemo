//
//  OCObject.m
//  OCCPlusPlusDemo
//
//  Created by Pengxuyuan on 2020/10/13.
//

#import "OCObject.h"
#import "CppObject.hpp"

@interface OCObject () {
    CppObject* wrapped;
}
@end

@implementation OCObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        wrapped = new CppObject();
    }
    return self;
}

- (void)dealloc {
    delete wrapped;
}

- (void)exampleMethodWithString:(NSString*)str
{
    // NOTE: if str is nil this will produce an empty C++ string
    // instead of dereferencing the NULL pointer from UTF8String.
    std::string cpp_str([str UTF8String], [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
    wrapped->ExampleMethod(cpp_str);
}

@end
