//
//  Age.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Age.h"

@implementation Age

-(id)initWithInteger:(int)a
{
    self = [super init];
    if (self){
        [self setAge:a];
    }
    return self;
}

-(id)init
{
    self = [self initWithInteger:0];
    return  self;
}

@end
