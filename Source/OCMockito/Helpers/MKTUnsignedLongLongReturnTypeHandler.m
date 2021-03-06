//
//  OCMockito - MKTUnsignedLongLongReturnTypeHandler.m
//  Copyright 2014 Jonathan M. Reid. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Source: https://github.com/jonreid/OCMockito
//

#import "MKTUnsignedLongLongReturnTypeHandler.h"


@implementation MKTUnsignedLongLongReturnTypeHandler

- (instancetype)init
{
    self = [super initWithType:@encode(unsigned long long)];
    return self;
}

- (void)setReturnValue:(id)returnValue onInvocation:(NSInvocation *)invocation
{
    unsigned long long value = [returnValue unsignedLongLongValue];
    [invocation setReturnValue:&value];
}

@end
