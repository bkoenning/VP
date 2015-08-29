//
//  GFRInformation.h
//  VP
//
//  Created by Brandon Koenning on 8/16/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SerumCreatinine;
@class BUN;

@interface GFRInformation : NSObject

@property (nonatomic) SerumCreatinine *scr;
@property (nonatomic) BUN *bun;
@property (nonatomic) BOOL africanRace;
@property (nonatomic) BOOL isCockcroftGault;
@property (nonatomic) BOOL isMDRD;


@end
