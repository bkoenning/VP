//
//  SerumCreatinine.h
//  VP
//
//  Created by Brandon Koenning on 8/14/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberValue.h"



typedef enum
{
    MG_PER_DECILITER,
    MICRO_MOL_PER_LITER
    
}SerumCreatinineConcentrationUnit;

@interface SerumCreatinine : NSObject <NumberValue>

@property (nonatomic) NSNumber *value;
@property (nonatomic) SerumCreatinineConcentrationUnit units;

-(instancetype) initWithFloat: (float)val andUnits: (SerumCreatinineConcentrationUnit) un;
-(void)convertTo: (SerumCreatinineConcentrationUnit) un;


@end
