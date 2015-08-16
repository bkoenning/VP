//
//  Amputations.h
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

/*
#import <Foundation/Foundation.h>

@interface Amputations : NSObject


@property NSMutableDictionary *amps;


@end
*/

#import <Foundation/Foundation.h>

@interface Amputations : NSObject


-(instancetype)initWithBools_left_lower_leg:  (BOOL)LLL
                             left_upper_leg: (BOOL)LUL
                             left_lower_arm: (BOOL)LLA
                             left_upper_arm: (BOOL)LUA
                            right_lower_leg: (BOOL)RLL
                            right_upper_leg: (BOOL)RUL
                            right_lower_arm: (BOOL)RLA
                            right_upper_arm: (BOOL)RUA;

@property (nonatomic) NSMutableDictionary *amps;
@property (nonatomic) NSMutableDictionary *percentages;




@end
