//
//  Amputations.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "Amputations.h"

@implementation Amputations

@synthesize  amps;

-(id)init
{
    self = [super init];
    [self setAmps:[NSMutableDictionary dictionary]];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_lower_arm"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_lower_arm"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_lower_leg"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_lower_leg"];
    [[self amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg"];
    return self;
}

-(void)dealloc
{
    [self setAmps:nil];
}



@end
