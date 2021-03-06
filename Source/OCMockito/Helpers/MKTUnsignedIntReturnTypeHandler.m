//
//  OCMockito - MKTUnsignedIntReturnTypeHandler.m
//  Copyright 2014 Jonathan M. Reid. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Source: https://github.com/jonreid/OCMockito
//

#import "MKTUnsignedIntReturnTypeHandler.h"


@implementation MKTUnsignedIntReturnTypeHandler

- (instancetype)init
{
    self = [super initWithType:@encode(unsigned int)];
    return self;
}

- (void)setReturnValue:(id)returnValue onInvocation:(NSInvocation *)invocation
{
    unsigned int value = [returnValue unsignedIntValue];
    [invocation setReturnValue:&value];
}

@end
