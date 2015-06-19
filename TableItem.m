//
//  TableItem.m
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "TableItem.h"

@implementation TableItem

@synthesize tableHeader;

-(id)init
{
    self = [super init];
    [self setTableHeader:@""];
    return self;
}

- (void)postDidChangeNotification
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kTableItemChanged
                                                        object:self];
}

@end
