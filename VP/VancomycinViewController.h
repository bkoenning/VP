//
//  VancomycinViewController.h
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BasicInformationViewController;
@class RenalInformationViewController;

@interface VancomycinViewController : UITableViewController

@property (strong, nonatomic) BasicInformationViewController *detailViewController;
@property (strong, nonatomic) RenalInformationViewController *renalViewController;


@end
