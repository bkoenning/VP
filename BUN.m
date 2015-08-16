//
//  BUN.m
//  VP
//
//  Created by Brandon Koenning on 8/15/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import "BUN.h"

const float MILLIMOLES_PER_LITER_PER_MILLIGRAMS_PER_DECILITER = 0.3571;

@implementation BUN

@synthesize value, units;

-(instancetype)initWithFloat:(int)val andUnits:(BUNConcentrationUnit)un
{
    self = [super init];
    [self setValue:[NSNumber numberWithFloat:val]];
    [self setUnits:un];
    return self;
}

-(instancetype)init
{
    self = [self initWithFloat:0 andUnits:MILLIGRAMS_PER_DECILITER];
    return self;
}

-(void)convertTo:(BUNConcentrationUnit)u
{
    if (u == MILLIGRAMS_PER_DECILITER && [self units] == MILLIMOLES_PER_LITER){
        [self setValue:[NSNumber numberWithFloat:[[self value]floatValue] / MILLIMOLES_PER_LITER_PER_MILLIGRAMS_PER_DECILITER]];
         [self setUnits:u];
    }
    else if (u == MILLIMOLES_PER_LITER && [self units] == MILLIGRAMS_PER_DECILITER){
        [self setValue:[NSNumber numberWithFloat:[[self value] floatValue] * MILLIMOLES_PER_LITER_PER_MILLIGRAMS_PER_DECILITER]];
        [self setUnits:u];
        
    }
}

-(NSString*)valueAsString
{
    NSNumberFormatter *format = [[NSNumberFormatter alloc]init];
    [format setMaximumFractionDigits:2];
    return [NSString stringWithFormat:@"%@", [format stringFromNumber:[self value]]];
}

-(NSString*)unitString
{
    if ([self units] == MILLIGRAMS_PER_DECILITER)
        return [NSString stringWithFormat:@"%@", @"mg/dL"];
    else
        return [NSString stringWithFormat:@"%@", @"mmol/L"];
}
-(NSString*)description
{
    return [NSString stringWithFormat:@"%@ %@", [self valueAsString], [self unitString]];
}

@end
