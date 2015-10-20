//
//  RenalInformation.h
//  VP
//
//  Created by Brandon Koenning on 8/15/15.
//  Copyright (c) 2015 Brandon. All rights reserved.
//

#import "TableItem.h"
@class DialysisTableItem;
@class CalculatedClearanceInformation;

@interface RenalInformation : TableItem

@property DialysisTableItem *dialysisItem;
@property CalculatedClearanceInformation *clearanceItem;

@end
