//
//  Weight.m
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

/*
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

*/

#import "Weight.h"

const float pounds_per_kg = 2.20462;


@interface Weight()

@end

@implementation Weight

@synthesize weight, units;


-(instancetype) initWithFloat:(float)value unit:(WeightUnit)u
{
    self = [super init];
    if (self){
        self.weight = [NSNumber numberWithFloat:value];
        self.units = u;
    }
    return self;
}

-(instancetype) init
{
    self = [self initWithFloat:0.0 unit:KG];
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %@", [ self valueAsString], [self unitString]];
}

-(NSString *) unitString
{
    if ([ self units] == KG) return @"kg";
    else return @"lb";
}

-(NSString*) valueAsString
{
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    [format setMaximumFractionDigits:2];
    return [NSString stringWithFormat:@"%@", [ format stringFromNumber:[self weight]]];
}

-(void) convertTo:(WeightUnit)wu
{
    if (wu == KG && [self units] == LB){
        [self setWeight:[ NSNumber numberWithFloat:[[self weight]floatValue] / pounds_per_kg]];
        [self setUnits:wu];
    }
    else if (wu == LB && [self units] == KG){
        [self setWeight:[NSNumber numberWithFloat:[[self weight] floatValue] * pounds_per_kg]];
        [self setUnits:wu];
    }
}

-(NSNumber*) getValueAs:(WeightUnit)wu
{
    if (wu == KG && [self units] == LB){
        return  [NSNumber numberWithFloat:[[self weight]floatValue] / pounds_per_kg];
    }
    else if (wu == LB && [self units ] == KG){
        return [NSNumber numberWithFloat:[[self weight] floatValue ] * pounds_per_kg];
    }
    else
        return [self weight];
    
}

-(void) dealloc
{
    weight = nil;
}

@end
