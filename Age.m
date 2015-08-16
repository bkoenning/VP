//
//  Age.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Age.h"

@interface Age()

@end

@implementation Age

@synthesize age;

-(instancetype)initWithInteger:(int)a
{
    self = [super init];
    if (self){
        [self setAge:[NSNumber numberWithInt:a]];
    }
    return self;
}


-(instancetype)init
{
    self = [self initWithInteger:0];
    return  self;
}

-(NSString*)valueAsString
{
    return [NSString stringWithFormat:@"%ld", (long)[[self age]integerValue]];
}

-(NSString*) unitString
{
    return @"years";
}

-(void)dealloc
{
    age = nil;
}

@end
