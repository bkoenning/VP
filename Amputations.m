//
//  Amputations.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

/*
#import "Amputations.h"

@implementation Amputations

@synthesize amps;

-(id)init
{
    self = [super init];
    [self setAmps:[NSMutableDictionary dictionary]];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg_checked_first"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg_checked_first"];
    return self;
}

-(void)dealloc
{
    [self setAmps:nil];

}



@end
*/

#import "Amputations.h"

@interface Amputations()


@end

@implementation Amputations

@synthesize amps, percentages, checkOrder;

-(instancetype)init
{
    self = [super init];
    
    [self setAmps:[NSMutableDictionary dictionary]];
    
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg"];
    
    [self setCheckOrder:[NSMutableDictionary dictionary]];
    
    [[self checkOrder]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm_checked_first"];
    [[self checkOrder]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm_checked_first"];
    [[self checkOrder]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg_checked_first"];
    [[self checkOrder]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg_checked_first"];
    
    
    [self setPercentages:[NSMutableDictionary dictionary]];
    
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"left_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"right_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"right_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"left_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"right_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"left_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"right_upper_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"left_upper_arm_percent"];
    return self;
}

/*
-(instancetype)initWithBools_left_lower_leg:(BOOL)LLL left_upper_leg:(BOOL)LUL left_lower_arm:(BOOL)LLA left_upper_arm:(BOOL)LUA right_lower_leg:(BOOL)RLL right_upper_leg:(BOOL)RUL right_lower_arm:(BOOL)RLA right_upper_arm:(BOOL)RUA
{
    self = [super init];
    [self setAmps:[NSMutableDictionary dictionary]];
    [[self amps]setObject:[NSNumber numberWithBool: LLA] forKey:@"left_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool: LUA] forKey:@"left_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool: RLA] forKey:@"right_lower_arm"];
    [[self amps]setObject:[NSNumber numberWithBool: RUA] forKey:@"right_upper_arm"];
    [[self amps]setObject:[NSNumber numberWithBool: RLL] forKey:@"right_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool: RUL] forKey:@"right_upper_leg"];
    [[self amps]setObject:[NSNumber numberWithBool: LLL] forKey:@"left_lower_leg"];
    [[self amps]setObject:[NSNumber numberWithBool: LUL] forKey:@"left_upper_leg"];
    //[[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm_checked_first"];
    //[[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm_checked_first"];
    //[[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg_checked_first"];
    //[[self amps]setObject:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg_checked_first"];
    [self setPercentages:[NSMutableDictionary dictionary]];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"left_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.3] forKey:@"right_lower_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"right_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 5.9] forKey:@"left_lower_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"right_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 10.1] forKey:@"left_upper_leg_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"right_upper_arm_percent"];
    [[self percentages]setObject:[NSNumber numberWithFloat: 2.7] forKey:@"left_upper_arm_percent"];
    return self;
}
 */

-(void)dealloc
{
    [self setAmps:nil];
    [self setPercentages:nil];
    
}

-(BOOL)hasAmputations
{
   NSArray *array = [[self amps]allValues];
    
    for (NSObject *obj in array){
        if (obj == [NSNumber numberWithBool:YES]){
          return true;
        }
    }
    return false;
}

-(float)percentLoss
{
    NSArray *keys = [[self amps]allKeys];
    float lost = 0;
    
    for (NSString *str in keys){
        if ([[self amps]valueForKey:str] == [NSNumber numberWithBool:YES]){
            lost += [[[self percentages] valueForKey:[NSString stringWithFormat:@"%@%@", str, @"_percent"]]floatValue];
        }
        
    }
    return lost;
}

-(NSString*)description
{
    BOOL firstAmpuation = NO;
    if (![self hasAmputations]){
        return @"None";
    }
    else{
        NSMutableString *str = [[NSMutableString alloc]init];
        if ([[self amps]valueForKey:@"left_upper_arm"] == [NSNumber numberWithBool:YES]){
            [str appendString:@"Left arm"];
            float val = [[[self percentages]valueForKey:@"left_lower_arm_percent"]floatValue];
            val += [[[self percentages]valueForKey:@"left_upper_arm_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        else if ([[self amps]valueForKey:@"left_lower_arm"] == [NSNumber numberWithBool:YES]){
            [str appendString:@"Left lower arm"];
            float val = [[[self percentages]valueForKey:@"left_lower_arm_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        if ([[self amps]valueForKey:@"right_upper_arm"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Right arm"];
            float val = [[[self percentages]valueForKey:@"right_lower_arm_percent"]floatValue];
            val += [[[self percentages]valueForKey:@"right_upper_arm_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        else if ([[self amps]valueForKey:@"right_lower_arm"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Right lower arm"];
            float val = [[[self percentages]valueForKey:@"right_lower_arm_percent"]floatValue];
            [str appendString:@"("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        if ([[self amps]valueForKey:@"right_upper_leg"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Right leg"];
            float val = [[[self percentages]valueForKey:@"right_upper_leg_percent"]floatValue];
            val += [[[self percentages]valueForKey:@"right_lower_leg_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        else if ([[self amps]valueForKey:@"right_lower_leg"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Right lower leg"];
            float val = [[[self percentages]valueForKey:@"right_lower_leg_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        if ([[self amps]valueForKey:@"left_upper_leg"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Left leg"];
            float val = [[[self percentages]valueForKey:@"left_lower_leg_percent"]floatValue];
            val += [[[self percentages]valueForKey:@"left_upper_leg_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        else if ([[self amps]valueForKey:@"left_lower_leg"] == [NSNumber numberWithBool:YES]){
            if (firstAmpuation){
                [str appendString:@", "];
            }
            [str appendString:@"Left lower leg"];
            float val = [[[self percentages]valueForKey:@"left_lower_leg_percent"]floatValue];
            [str appendString:@" ("];
            [str appendString:[NSString stringWithFormat:@"%g", val]];
            [str appendString:@"%)"];
            firstAmpuation = YES;
        }
        return  str;
    }
}

@end