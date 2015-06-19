//
//  TableItem.h
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kTableItemChanged    @"TableItemChange"
@interface TableItem : NSObject

@property NSString *tableHeader;
@property BOOL isSet;

- (void)postDidChangeNotification;

@end
