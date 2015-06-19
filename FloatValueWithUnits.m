//
//  FloatValueWithUnits.m
//  Vanc2
//
//  Created by Rebecca Koenning on 4/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "FloatValueWithUnits.h"

@interface FloatValueWithUnits()

@end

@implementation FloatValueWithUnits

@synthesize unit,value,precision;

-(id)initWithValue:(float)v units:(UnitType)u precision:(Precision)p
{
    self = [super init];
    if (self){
        [self setValue:v];
        [self setUnit:u];
        [self setPrecision:p];
    }
    return self;
}
-(id)init
{
    // self = [super init];
    //if (self){
    //  [self setValue:0];
    // [self setUnit:KG];
    //[self setPrecision:ZERO];
    // }
    self = [self initWithValue:0 units:KG precision:TWO];
    return  self;
}
-(NSString*)shortUnitDescription
{
    if ([self unit] == KG)return @"kg";
    else if ([self unit] == LB) return @"lb";
    else if ([self unit] == CM)return @"cm";
    else if ([self unit] == IN)return @"in";
    else return @"This unit was not found";
}
-(NSString*)longUnitDescription
{
    if ([self unit] == KG)return @"kilograms";
    else if ([self unit] == LB) return @"pounds";
    else if ([self unit] == CM)return @"centimeters";
    else if ([self unit] == IN)return @"inches";
    else return @"This unit was not found";
}
-(NSString*)description
{
    if ([self precision]==ZERO){
        return [NSString stringWithFormat:@"%.0f %@", [self value],[self shortUnitDescription]];
    }
    else if ([self precision]==ONE){
        return [NSString stringWithFormat:@"%.1f %@", [self value],[self shortUnitDescription]];
    }
    else if ([self precision]==TWO){
        return [NSString stringWithFormat:@"%.2f %@", [self value],[self shortUnitDescription]];
    }
    else if ([self precision]==THREE){
        return [NSString stringWithFormat:@"%.3f %@", [self value],[self shortUnitDescription]];
    }
    else if ([self precision]==FOUR){
        return [NSString stringWithFormat:@"%.4f %@", [self value],[self shortUnitDescription]];
    }
    else if ([self precision]==FIVE){
        return [NSString stringWithFormat:@"%.5f %@", [self value],[self shortUnitDescription]];
    }
    else{
        return @"There was a problem processing the FloatValueWithUnit description";
    }
}
-(NSString*)valueDescription
{
    if ([self precision]==ZERO){
        return [NSString stringWithFormat:@"%.0f", [self value]];
    }
    else if ([self precision]==ONE){
        return [NSString stringWithFormat:@"%.1f", [self value]];
    }
    else if ([self precision]==TWO){
        return [NSString stringWithFormat:@"%.2f", [self value]];
    }
    else if ([self precision]==THREE){
        return [NSString stringWithFormat:@"%.3f", [self value]];
    }
    else if ([self precision]==FOUR){
        return [NSString stringWithFormat:@"%.4f", [self value]];
    }
    else if ([self precision]==FIVE){
        return [NSString stringWithFormat:@"%.5f", [self value]];
    }
    else{
        return @"There was a problem processing the FloatValueWithUnit description";
    }
}

@end
