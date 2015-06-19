//
//  Height.m
//  Vanc2
//
//  Created by Rebecca Koenning on 4/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Height.h"
const float centimeters_per_inch = 2.54;

@implementation Height


-(id)initWithValue:(float)v units:(UnitType)u
{
    self = [super initWithValue:v units:u precision:TWO];
    return self;
}
-(void)convertToUnits:(UnitType)u
{
    if ([self unit] == IN && u == CM){
        [self setValue:[self value] * centimeters_per_inch];
        [self setUnit:CM];
    }
    else if ([self unit] == CM && u == IN){
        [self setValue:[self value] / centimeters_per_inch];
        [self setUnit:IN];
    }
}

-(id)init
{
    self = [self initWithValue:20 units:IN];
    return  self;
}

@end
