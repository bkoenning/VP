//
//
//  Age.h
//  Vanc2
//
//  Created by Rebecca Koenning on 5/21/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberValue.h"


@interface Age : NSObject <NumberValue>

@property (nonatomic) NSNumber *age;

-(instancetype)initWithInteger:(int)a;

@end
