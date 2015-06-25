//
//  BasicInformation.m
//  Vanc2
//
//  Created by Rebecca Koenning on 5/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "BasicInformation.h"
#import "Amputations.h"

@implementation BasicInformation

@synthesize weight, height,gender, age,amputations, isSet, tableHeader;

-(id)init
{
    self = [super init];
    [self setTableHeader:@"Basic Information"];
    [self setGender:[[Gender alloc]init]];
    [self setWeight:[[Weight alloc]init]];
    [self setHeight:[[Height alloc]init]];
    [self setAge:[[Age alloc]init]];
    [self setAmputations:[[Amputations alloc]init]];
    [self setIsSet:NO];
    return self;
}

-(NSString*) description
{
    NSString* string = [NSString stringWithFormat:@"%@",[weight description]];
    return string;
}

@end
