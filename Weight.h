//
//  Weight.h
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

/*
#import <Foundation/Foundation.h>
#import "FloatValueWithUnits.h"

@interface Weight : FloatValueWithUnits

-(id)initWithValue:(float)v units:(UnitType)u;
-(void)convertToUnits:(UnitType)u;


@end
*/

#import <Foundation/Foundation.h>
#import "NumberValue.h"



typedef enum
{
    KG,
    LB
}WeightUnit;


@interface Weight : NSObject <NumberValue>

@property (nonatomic) NSNumber* weight;
@property (nonatomic) WeightUnit units;

-(instancetype) initWithFloat: (float)weight unit: (WeightUnit) units;
-(NSString*) unitString;
-(void) convertTo: (WeightUnit) wu;
-(NSNumber*) getValueAs:(WeightUnit) wu;


@end
