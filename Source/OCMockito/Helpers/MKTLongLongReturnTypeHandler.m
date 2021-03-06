//
//  OCMockito - MKTLongLongReturnTypeHandler.m
//  Copyright 2014 Jonathan M. Reid. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Source: https://github.com/jonreid/OCMockito
//

#import "MKTLongLongReturnTypeHandler.h"


@implementation MKTLongLongReturnTypeHandler

- (instancetype)init
{
    self = [super initWithType:@encode(long long)];
    return self;
}

- (void)setReturnValue:(id)returnValue onInvocation:(NSInvocation *)invocation
{
    long long value = [returnValue longLongValue];
    [invocation setReturnValue:&value];
}

@end
