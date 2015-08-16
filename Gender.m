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

-(instancetype)initWithChar:(char)g
{
    self = [super init];
    if (self){
        [self setGender:g];
    }
    return  self;
}

-(instancetype)initWithInt:(int)i
{
    if (i == 0){
        self = [self initWithChar:'m'];
    }
    else
        self = [self initWithChar:'f'];
    
    return self;
}

-(instancetype)init
{
    self = [self initWithChar:'m'];
    return  self;
}

-(NSString*) description
{
    if ([self gender] == 'm') return @"male";
    else return @"female";
}

-(float) getIdealBodyWeightStartInKg
{
    if ([self gender] == 'f')
        return 45.5;
    else return 50;
}






@end
