//
//  FloatValueWithUnits.h
//  Vanc2
//
//  Created by Rebecca Koenning on 4/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    KG = 0,
    LB = 1,
    CM = 2,
    IN = 3
}UnitType;

typedef enum
{
    ZERO = 0,
    ONE = 1,
    TWO = 2,
    THREE = 3,
    FOUR = 4,
    FIVE = 5
}Precision;



@interface FloatValueWithUnits : NSObject

@property (nonatomic) float value;
@property (nonatomic) UnitType unit;
@property (nonatomic) Precision precision;

-(id)initWithValue:(float)v units:(UnitType)u precision:(Precision)p;
-(NSString*)shortUnitDescription;
-(NSString*)longUnitDescription;
-(NSString*)valueDescription;

@end
