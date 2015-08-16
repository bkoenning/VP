//
//  Gender.h
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gender : NSObject

@property char gender;

-(instancetype)initWithChar:(char) g;
-(instancetype)initWithInt:(int) i;
-(float) getIdealBodyWeightStartInKg;


@end
