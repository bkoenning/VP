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

@property (nonatomic) NSString *tableHeader;
@property BOOL isSet;

-(id) initWithTitle: (NSString*) title;

-(void)postDidChangeNotification;
-(NSString*) tableDescription;

@end
