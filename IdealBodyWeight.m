//
//  IdealBodyWeight.m
//  VP
//
//  Created by Brandon Koenning on 8/8/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

/*

#import "IdealBodyWeight.h"
#import "Amputations.h"
#import "Height.h"
#import "Gender.h"

@implementation IdealBodyWeight

@synthesize amputations, gender, height;

-(instancetype)initWithGender:(Gender *)g height:(Height *)h amputations:(Amputations *)a
{
    
    
    float percentLost = 0;
    
    for (NSString *str in [[a amps]allKeys]){
        if ([NSNumber numberWithBool:YES] == [[a amps]valueForKey:str]){
            percentLost += [[[a percentages] valueForKey:[NSString stringWithFormat:@"%@%@", str, @"_percent"]]floatValue];
        }
    }
    
    NSLog(@"%@%g", @"percent lost", percentLost);
    
    float value = [[h getValueAs:IN]floatValue] - 60;
    
    value = (( value * 2.3 ) + [g getIdealBodyWeightStartInKg]);
    
    value = value * ( 1 - (percentLost / 100.0));
    
    
    self = [super initWithFloat:value unit:KG];
    
    return self;
}
@end
 
 */
