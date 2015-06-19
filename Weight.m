//
//  Weight.m
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Weight.h"

const float pounds_per_kilogram = 2.20462;

@implementation Weight

-(id)initWithValue:(float)v units:(UnitType)u
{
    self = [super initWithValue:v units:u precision:TWO];
    return self;
}
-(void)convertToUnits:(UnitType)u
{
    if ([self unit] == KG && u == LB){
        [self setValue:[self value] * pounds_per_kilogram];
        [self setUnit:LB];
    }
    else if ([self unit] == LB && u == KG){
        [self setValue:[self value] / pounds_per_kilogram];
        [self setUnit:KG];
    }
}

-(id)init
{
    self = [self initWithValue:0 units:KG];
    return  self;
}

//-(void)dealloc
//{
//  NSString *s = [NSString stringWithFormat:@"%@",[self description]];
//NSLog(@"%@",s);
//}

@end