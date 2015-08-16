//
//  BUN.h
//  VP
//
//  Created by Brandon Koenning on 8/15/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberValue.h"

typedef enum
{
    MILLIGRAMS_PER_DECILITER,
    MILLIMOLES_PER_LITER
}BUNConcentrationUnit;


@interface BUN : NSObject <NumberValue>

@property NSNumber *value;
@property BUNConcentrationUnit units;

-(void) convertTo: (BUNConcentrationUnit) u;
-(instancetype) initWithFloat: (int) val andUnits: (BUNConcentrationUnit)un;


@end
