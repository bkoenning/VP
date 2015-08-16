//
//  Height.h
//  Vanc2
//
//  Created by Rebecca Koenning on 4/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

/*
#import "FloatValueWithUnits.h"

@interface Height : FloatValueWithUnits


-(id)initWithValue:(float)v units:(UnitType)u;
-(void)convertToUnits:(UnitType)u;

@end
*/

#import <Foundation/Foundation.h>
#import "NumberValue.h"

typedef enum
{
    CM,
    IN
}HeightUnit;


@interface Height : NSObject <NumberValue>

@property (nonatomic) NSNumber* height;
@property (nonatomic) HeightUnit units;

-(instancetype) initWithFloat: (float)height unit: (HeightUnit) units;
-(NSString*) unitString;
-(void) convertTo: (HeightUnit) hu;
-(NSNumber*) getValueAs:(HeightUnit) hu;


@end
