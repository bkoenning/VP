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
#import "IdealBodyWeight.h"




@interface BasicInformation : TableItem

@property (nonatomic) Weight *weight;
@property (nonatomic) Height *height;
@property (nonatomic) Gender *gender;
@property (nonatomic) Amputations *amputations;
@property (nonatomic) Age *age;
//@property (nonatomic) IdealBodyWeight *ibw;

//-(instancetype) initWithTitle:(NSString *)title weight:(Weight*)w height: (Height*)h gender:(Gender*)g amputations:(Amputations*)amp age: (Age*)a;

-(instancetype)initWithWeight:(Weight*)w height:(Height*)h gender:(Gender*)g amputations:(Amputations*)amp age:(Age*)a;

-(Weight*) idealBodyWeight;

@end
