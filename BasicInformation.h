//
//  BasicInformation.h
//  Vanc2
//
//  Created by Rebecca Koenning on 5/22/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weight.h"
#import "Height.h"
#import "Gender.h"
#import "Age.h"
#import "Amputations.h"
#import "TableItem.h"




@interface BasicInformation : TableItem

@property Weight *weight;
@property Height *height;
@property Gender *gender;
@property Amputations *amputations;
@property Age *age;
//@property BOOL isSet;
//@property NSString *tableHeader;






@end
