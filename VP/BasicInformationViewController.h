//
//  BasicInformationViewController.h
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BasicInformation;


@interface BasicInformationViewController : UIViewController <UITextFieldDelegate>

@property (strong,nonatomic) BasicInformation *detailItem;

@property (nonatomic) IBOutlet UISegmentedControl *segWeightUnits;
@property (nonatomic) IBOutlet UISegmentedControl *segHeightUnits;
@property (nonatomic) IBOutlet UISegmentedControl *segGender;
@property (nonatomic) IBOutlet UIButton *buttonLLLeg;
@property (nonatomic) IBOutlet UIButton *buttonLULeg;
@property (nonatomic) IBOutlet UIButton *buttonRULeg;
@property (nonatomic) IBOutlet UIButton *buttonRLLeg;
@property (nonatomic) IBOutlet UIButton *buttonRUArm;
@property (nonatomic) IBOutlet UIButton *buttonRLArm;
@property (nonatomic) IBOutlet UIButton *buttonLUArm;
@property (nonatomic) IBOutlet UIButton *buttonLLArm;
@property (nonatomic) IBOutlet UITextField *textFieldAge;
@property (nonatomic) IBOutlet UITextField *textFieldWeight;
@property (nonatomic) IBOutlet UITextField *textFieldHeight;
@property (nonatomic) IBOutlet UIButton *buttonValidate;

-(IBAction)updateLLL:(id)sender;
-(IBAction)updateLLA:(id)sender;
-(IBAction)updateLUA:(id)sender;
-(IBAction)updateLUL:(id)sender;
-(IBAction)updateRLL:(id)sender;
-(IBAction)updateRLA:(id)sender;
-(IBAction)updateRUA:(id)sender;
-(IBAction)updateRUL:(id)sender;

-(IBAction) validateAndLockInformation:(UIButton*)sender;

@end