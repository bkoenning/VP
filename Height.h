//
//  Height.h
//  Vanc2
//
//  Created by Rebecca Koenning on 4/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "FloatValueWithUnits.h"

@interface Height : FloatValueWithUnits


-(id)initWithValue:(float)v units:(UnitType)u;
-(void)convertToUnits:(UnitType)u;

@end