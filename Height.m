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

@synthesize height, units;


-(instancetype) initWithFloat:(float)value unit:(HeightUnit)u
{
    self = [super init];
    if (self){
        self.height = [NSNumber numberWithFloat:value];
        self.units = u;
    }
    return self;
}

-(instancetype) init
{
    self = [self initWithFloat:0.0 unit:CM];
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %@", [ self valueAsString], [self unitString]];
}

-(NSString *) unitString
{
    if ([ self units] == CM) return @"cm";
    else return @"in";
}

-(NSString*) valueAsString
{
    NSNumberFormatter *format = [[NSNumberFormatter alloc] init];
    [format setMaximumFractionDigits:2];
    return [NSString stringWithFormat:@"%@", [ format stringFromNumber:[self height]]];
}

-(void) convertTo:(HeightUnit)hu
{
    if (hu == CM && [self units] == IN){
        [self setHeight:[ NSNumber numberWithFloat:[[self height]floatValue] * centimeters_per_inch]];
        [self setUnits:hu];
    }
    else if (hu == IN && [self units] == CM){
        [self setHeight:[NSNumber numberWithFloat:[[self height] floatValue] / centimeters_per_inch]];
        [self setUnits:hu];
    }
}

-(NSNumber*) getValueAs:(HeightUnit)hu
{
    if (hu == CM && [self units] == IN){
        return  [NSNumber numberWithFloat:[[self height]floatValue] * centimeters_per_inch];
    }
    else if (hu == IN && [self units ] == CM){
        return [NSNumber numberWithFloat:[[self height] floatValue ] / centimeters_per_inch];
    }
    else
        return [self height];
    
}

-(void)dealloc
{
    height = nil;
}

-(instancetype)copyWithZone:(NSZone *)zone
{
    Height *heightCopy = [[Height allocWithZone:zone]init];
    [heightCopy setHeight:[NSNumber numberWithFloat:[[self height]floatValue]]];
    [heightCopy setUnits:[self units]];
    return heightCopy;
}

@end
