//
//  BasicInformation.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "BasicInformation.h"
//#import "Amputations.h"
//@class Weight;

@interface BasicInformation()
@end


@implementation BasicInformation

@synthesize weight, height,gender, age,amputations, isSet;

-(instancetype)init
{
    self = [super initWithTitle:@"Basic Information"];
    //[self setTableHeader:@"Basic Information"];
    [self setGender:[[Gender alloc]init]];
    [self setWeight:[[Weight alloc]init]];
    [self setHeight:[[Height alloc]init]];
    [self setAge:[[Age alloc]init]];
    [self setAmputations:[[Amputations alloc]init]];
    [self setIsSet:NO];
    //[self setIbw:[[IdealBodyWeight alloc]initWithGender:[self gender] height:[self height] amputations:[self amputations]]];
    return self;
}


-(instancetype)initWithWeight:(Weight *)w height:(Height *)h gender:(Gender *)g amputations:(Amputations *)amp age:(Age *)a
{
    self = [ super initWithTitle:@"Basic Information"];
    [self setWeight:w];
    [self setHeight:h];
    [self setGender:g];
    [self setAmputations:amp];
    [self setAge:a];
    [self setIsSet:NO];
    //[self setIbw:[[IdealBodyWeight alloc] initWithGender:g height:h amputations:amp]];
    return self;
}

//-(instancetype) initWithTitle:(NSString *)title weight:(Weight *)w height:(Height *)h gender:(Gender *)g amputations:(Amputations *)amp age:(Age *)a
//{
  //  self = [super initWithTitle: title];
    
    
    
    
    
    //return  self;
//}

-(NSString*) description
{
    //NSString* string = [NSString stringWithFormat:@"%@",[weight description]];
    NSString *string  = [NSString stringWithFormat:@"%@-%@", [weight description], [[self idealBodyWeight]description]];
    return string;
}

-(void)dealloc
{
    weight = nil;
    height = nil;
    gender = nil;
    age = nil;
    amputations = nil;
    //ibw = nil;
}

-(Weight*)idealBodyWeight
{
    float percentLost = 0;
    
    for (NSString *str in [[[self amputations]amps]allKeys]){
        if ([NSNumber numberWithBool:YES] == [[[self amputations]amps]valueForKey:str]){
            percentLost += [[[[self amputations]percentages] valueForKey:[NSString stringWithFormat:@"%@%@", str, @"_percent"]]floatValue];
        }
    }
    
    NSLog(@"%@%g", @"percent lost", percentLost);
    
    float value = [[[self height] getValueAs:IN]floatValue] - 60;
    
    value = (( value * 2.3 ) + [[self gender]getIdealBodyWeightStartInKg]);
    
    value = value * ( 1 - (percentLost / 100.0));
    
    return [[Weight alloc]initWithFloat:value unit:KG];
    
    
    //self = [super initWithFloat:value unit:KG];
    
    //return self;
}

@end
