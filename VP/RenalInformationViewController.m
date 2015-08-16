//
//  RenalInformationViewController.m
//  VP
//
//  Created by Brandon Koenning on 8/15/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import "RenalInformationViewController.h"
#import "RenalInformation.h"

@implementation RenalInformationViewController

@synthesize  detailItem;


-(void)setDetailItem:(RenalInformation*)newDetailItem
{
    if (newDetailItem != nil && [self detailItem] != newDetailItem){
        detailItem = newDetailItem;
    }
}
@end
