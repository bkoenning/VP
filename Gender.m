//
//  Gender.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Gender.h"

@implementation Gender

@synthesize gender;

-(id)initWithChar:(char)g
{
    self = [super init];
    if (self){
        [self setGender:g];
    }
    return  self;
}

-(id)init
{
    self = [self initWithChar:'m'];
    return  self;
}


@end
