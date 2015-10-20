//
//  RenalInformation.m
//  VP
//
//  Created by Brandon Koenning on 8/15/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import "RenalInformation.h"
#import "CalculatedClearanceInformation.h"
#import "DialysisTableItem.h"

@implementation RenalInformation

@synthesize clearanceItem, dialysisItem;

-(instancetype)init
{
    self = [self initWithTitle:@"Renal Information"];
    [self setClearanceItem:[[CalculatedClearanceInformation alloc]init]];
    [self setDialysisItem:[[DialysisTableItem alloc]init]];
    [self setIsSet:NO];
    return  self;
}

@end
