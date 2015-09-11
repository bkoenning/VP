//
//  BasicInformationViewController.m
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "BasicInformationViewController.h"
#import "BasicInformation.h"

@interface BasicInformationViewController ()
{
    BOOL lll,lul,lua,lla,rll,rul,rua,rla;
    NSString *checkboxfull;
    NSString *checkboxempty;
    BOOL lua_checked_first, rua_checked_first, lul_checked_first, rul_checked_first;
    NSMutableArray *enabledViews;
    UITapGestureRecognizer *recognizer;
}
-(void)configureView;
@end

@implementation BasicInformationViewController

@synthesize segGender,segHeightUnits,segWeightUnits,buttonLLArm,buttonLLLeg,buttonLUArm,
buttonLULeg,buttonRLArm,buttonRLLeg,buttonRUArm,buttonRULeg,textFieldAge,textFieldHeight,textFieldWeight,buttonValidate,detailItem;

-(void)dealloc
{
    segGender = nil;
    segHeightUnits = nil;
    segWeightUnits = nil;
    buttonLLArm = nil;
    buttonLLLeg = nil;
    buttonLUArm = nil;
    buttonLULeg = nil;
    buttonRLArm = nil;
    buttonRLLeg = nil;
    buttonRUArm = nil;
    buttonRULeg = nil;
    textFieldAge = nil;
    textFieldHeight = nil;
    textFieldWeight = nil;
    buttonValidate = nil;
    detailItem = nil;
    checkboxempty = nil;
    checkboxfull = nil;
    enabledViews = nil;
}

-(void)setDetailItem:(BasicInformation*)newDetailItem
{
    if (newDetailItem != nil && [self detailItem] != newDetailItem){
        detailItem = newDetailItem;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    checkboxempty = @"checkbox_empty";
    checkboxfull = @"checkbox_full";
    enabledViews = [NSMutableArray arrayWithObjects: segGender, segHeightUnits,segWeightUnits,
                    textFieldWeight, textFieldAge, textFieldHeight, buttonLLArm, buttonLLLeg,
                    buttonLUArm, buttonLULeg, buttonRLArm, buttonRLLeg, buttonRUArm, buttonRULeg, nil ];
    
    [self configureView];
    recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideKeyboard)];
    //[recognizer setEnabled:NO];
    [self.segGender addGestureRecognizer:recognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)configureView
{
    if (detailItem != nil){
        if ([[self detailItem]isSet]){
            [[self buttonValidate]setTitle:@"Unlock Information" forState:UIControlStateNormal];
            [[self textFieldHeight]setText:[[[self detailItem]height]valueAsString]];
            [[self textFieldWeight]setText:[[[self detailItem]weight]valueAsString]];
            [[self textFieldAge]setText: [[[self detailItem]age]valueAsString]];
            if ([[[self detailItem]gender]gender] =='f')
                [[self segGender]setSelectedSegmentIndex:1];
            
            else if ([[[self detailItem]gender]gender] =='m')
                [[self segGender]setSelectedSegmentIndex:0];
            
            if ([[[self detailItem]weight]units]== KG)
                [[self segWeightUnits]setSelectedSegmentIndex:0];
            
            else if ([[[self detailItem]weight]units]== LB)
                [[self segWeightUnits]setSelectedSegmentIndex:1];
            
            if ([[[self detailItem]height]units] == CM)
                [[self segHeightUnits]setSelectedSegmentIndex:0];
            
            else if ([[[self detailItem]height]units] == IN)
                [[self segHeightUnits]setSelectedSegmentIndex:1];
            
            if ([[[[self detailItem]amputations]amps]valueForKey:@"right_upper_leg"] == [NSNumber numberWithBool:YES]){
                [[self buttonRULeg]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                rul = YES;
                rul_checked_first = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"left_upper_leg"] == [NSNumber numberWithBool:YES]){
                [[self buttonLULeg]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                 lul = YES;
                lul_checked_first = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"left_lower_leg"]== [NSNumber numberWithBool:YES]){
                [[self buttonLLLeg]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                lll = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"right_lower_leg"] == [NSNumber numberWithBool:YES]){
                [[self buttonRLLeg]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                rll = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"left_upper_arm"]== [NSNumber numberWithBool:YES]){
                [[self buttonLUArm]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                lua = YES;
                lua_checked_first = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"left_lower_arm"]== [NSNumber numberWithBool:YES]){
                [[self buttonLLArm]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                lla = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"right_upper_arm"] == [NSNumber numberWithBool:YES]){
                [[self buttonRUArm]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                rua = YES;
                rua_checked_first = YES;
            }
            if ([[[[self detailItem]amputations]amps]valueForKey:@"right_lower_arm"]== [NSNumber numberWithBool:YES]){
                [[self buttonRLArm]setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
                rla = YES;
            }
            //if ([[[[self detailItem]amputations]checkOrder]valueForKey:@"right_upper_arm_checked_first"]== [NSNumber numberWithBool:YES]) rua_checked_first = YES;
            //if ([[[[self detailItem]amputations]checkOrder]valueForKey:@"left_upper_arm_checked_first"]== [NSNumber numberWithBool:YES]) lua_checked_first = YES;
            //if ([[[[self detailItem]amputations]checkOrder]valueForKey:@"left_upper_leg_checked_first"]== [NSNumber numberWithBool:YES]) lul_checked_first = YES;
            //if ([[[[self detailItem]amputations]checkOrder]valueForKey:@"right_upper_leg_checked_first"]== [NSNumber numberWithBool:YES]) rul_checked_first = YES;
            
            for (UIControl* con in enabledViews){
                [con setEnabled:NO];
            }
        }
    }
}

-(IBAction)updateLUA:(id)sender
{
    if (!lua){
        [buttonLUArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonLLArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonLLArm setEnabled:NO];
        
        if (!lla){
            lua_checked_first = YES;
            lla = YES;
        }
        else
            lua_checked_first = NO;
        lua = YES;
    }
    else if (lua){
        [buttonLUArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        [buttonLLArm setEnabled:YES];
        lua = NO;
        if (lua_checked_first){
            [buttonLLArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
            lla = NO;
            lua_checked_first = NO;
        }
    }
}
-(IBAction)updateRUA:(id)sender
{
    if (!rua){
        [buttonRUArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonRLArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonRLArm setEnabled:NO];
        if (!rla){
            rua_checked_first = YES;
            rla = YES;
        }
        else
            rua_checked_first = NO;
        rua = YES;
    }
    else if (rua){
        [buttonRUArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        [buttonRLArm setEnabled:YES];
        rua = NO;
        if (rua_checked_first){
            [buttonRLArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
            rla = NO;
            rua_checked_first = NO;
        }
    }
}
-(IBAction)updateRUL:(id)sender
{
    if (!rul){
        [buttonRULeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonRLLeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonRLLeg setEnabled:NO];
        if (!rll){
            rul_checked_first = YES;
            rll = YES;
        }
        else
            rul_checked_first = NO;
        rul = YES;
    }
    else if (rul){
        [buttonRULeg setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        [buttonRLLeg setEnabled:YES];
        rul = NO;
        if (rul_checked_first){
            [buttonRLLeg setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
            rll = NO;
            rul_checked_first = NO;
        }
    }
}
-(IBAction)updateLUL:(id)sender
{
    if (!lul){
        [buttonLULeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonLLLeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        [buttonLLLeg setEnabled:NO];
        if (!lll){
            lul_checked_first = YES;
            lll = YES;
        }
        else
            lul_checked_first = NO;
        lul = YES;
        
    }
    else if (lul){
        [buttonLULeg setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        [buttonLLLeg setEnabled: YES];
        lul = NO;
        if (lul_checked_first){
            [buttonLLLeg setImage: [UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
            lll = NO;
            lul_checked_first = NO;
        }
    }
}
-(IBAction)updateLLL:(id)sender
{
    if (!lll){
        [buttonLLLeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        lll = YES;
    }
    else if (lll){
        [buttonLLLeg setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        lll = NO;
    }
}
-(IBAction)updateRLL:(id)sender
{
    if (!rll){
        [buttonRLLeg setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        rll = YES;
    }
    else if (rll){
        [buttonRLLeg setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        rll = NO;
    }
}
-(IBAction)updateLLA:(id)sender
{
    if (!lla){
        [buttonLLArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        lla = YES;
    }
    else if (lla){
        [buttonLLArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        lla = NO;
    }
}
-(IBAction)updateRLA:(id)sender
{
    if (!rla){
        [buttonRLArm setImage:[UIImage imageNamed:checkboxfull] forState:UIControlStateNormal];
        rla = YES;
    }
    else if (rla){
        [buttonRLArm setImage:[UIImage imageNamed:checkboxempty] forState:UIControlStateNormal];
        rla = NO;
    }
}
-(IBAction)validateAndLockInformation:(id)sender{
    NSRegularExpression *decimalReg = [NSRegularExpression regularExpressionWithPattern:@"^\\d{2,3}(\\.\\d{1,5}?)?$" options:NSRegularExpressionCaseInsensitive error:nil];
    NSRegularExpression *integerReg = [NSRegularExpression regularExpressionWithPattern:@"^\\d{1,3}$" options:NSRegularExpressionCaseInsensitive error:nil];
    NSTextCheckingResult *weightMatch = [decimalReg firstMatchInString:[self.textFieldWeight text] options:0 range:NSMakeRange(0, [[self.textFieldWeight text]length])];
    NSTextCheckingResult *heightMatch = [decimalReg firstMatchInString:[self.textFieldHeight text] options:0 range:NSMakeRange(0, [[self.textFieldHeight text]length])];
    NSTextCheckingResult *ageMatch = [integerReg firstMatchInString:[self.textFieldAge text] options:0 range:NSMakeRange(0, [[self.textFieldAge text]length])];
    
    BOOL isWeightMatch = weightMatch != nil;
    BOOL isHeightMatch = heightMatch != nil;
    BOOL isAgeMatch = ageMatch != nil;
    
    if ([[[[self buttonValidate]titleLabel]text] isEqualToString:@"Unlock Information"]){
        for (UIControl* con in enabledViews){
            [con setEnabled:YES];
        }
        
        if (lul_checked_first) [[self buttonLLLeg]setEnabled:NO];
        if (rul_checked_first) [[self buttonRLLeg]setEnabled:NO];
        if (rua_checked_first) [[self buttonRLArm]setEnabled:NO];
        if (lua_checked_first) [[self buttonLLArm] setEnabled:NO];
        
        [[self buttonValidate]setTitle:@"Lock Information" forState:UIControlStateNormal];
        [[self detailItem]setIsSet:NO];
        [[self detailItem] postDidChangeNotification];
    }
    else if (!isWeightMatch){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Invalid entry for weight" message:@"Contains an invalid numerical format" delegate:self cancelButtonTitle:@"Re-enter weight" otherButtonTitles:nil];
        [alert show];
    }
    else if (!isHeightMatch){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Invalid entry for height" message:@"Contains an invalid numerical format" delegate:self cancelButtonTitle:@"Re-enter height" otherButtonTitles:nil];
        [alert show];
    }
    else if ([[self segHeightUnits]selectedSegmentIndex] == UISegmentedControlNoSegment){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No units for height selected" message:@"Select a units for height" delegate:self cancelButtonTitle:@"Try again" otherButtonTitles:nil];
        [alert show];
    }
    else if ([[ self segWeightUnits]selectedSegmentIndex] == UISegmentedControlNoSegment){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"No units for weight selected" message:@"Select a units for weight" delegate:self cancelButtonTitle:@"Try again." otherButtonTitles:nil];
        [alert show];
    }
    
    else if ([[ self segGender] selectedSegmentIndex] == UISegmentedControlNoSegment){
        UIAlertView *alert = [[ UIAlertView alloc]initWithTitle:@"Gender not selected" message:@"Select a gender" delegate:self cancelButtonTitle:@"Try again" otherButtonTitles:nil];
        [alert show];
    }
    
    else if (!isAgeMatch){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Invalid entry for age" message:@"Contains an invalid numerical format" delegate:self cancelButtonTitle:@"Re-enter age" otherButtonTitles:nil];
        [alert show];
    }
    else if (isAgeMatch && ([[self.textFieldAge text]longLongValue] < 18L || [[self.textFieldAge text] longLongValue] > 105L )){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Age must be between 18 and 105 years" message:@"Age is invalid" delegate:self cancelButtonTitle:@"Re-enter with a valid age" otherButtonTitles:nil];
        [alert show];
        
    }
    else if (isWeightMatch && [self.segWeightUnits selectedSegmentIndex] ==1 && ([[self.textFieldWeight text]floatValue] < 77 ||
                                                                                 [[self.textFieldWeight text]floatValue] > 374)){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Weight must be between 77 and 374 pounds" message:@"Weight is invalid" delegate:self cancelButtonTitle:@"Re-enter with a valid weight" otherButtonTitles:nil];
        [alert show];
    }
    else if (isWeightMatch && [self.segWeightUnits selectedSegmentIndex] == 0 && ([[self.textFieldWeight text]floatValue] < 35 ||
                                                                                  [[self.textFieldWeight text]floatValue] > 170)){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Weight must be between 35 and 170 kilograms" message:@"Weight is invalid" delegate:self cancelButtonTitle:@"Re-enter with a vailid weight" otherButtonTitles:nil];
        [alert show];
        
    }
    else if (isHeightMatch && [self.segHeightUnits selectedSegmentIndex] == 1 && ([[self.textFieldHeight text]floatValue] < 60 ||
                                                                                  [[self.textFieldHeight text]floatValue] > 90)){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Height must be between 60 and 90 inches" message:@"Height is invalid" delegate:self cancelButtonTitle:@"Re-enter with a valid height" otherButtonTitles:nil];
        [alert show];
    }
    else if (isHeightMatch && [self.segHeightUnits selectedSegmentIndex] == 0 && ([[self.textFieldHeight text]floatValue] < 152.4 ||
                                                                                  [[self.textFieldHeight text]floatValue] > 228.6)){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Height must be between 152.4 and 228.6 centimeters" message:@"Height is invalid" delegate:self cancelButtonTitle:@"Re-enter with a valid height" otherButtonTitles:nil];
        [alert show];
    }
    else if ([[[[self buttonValidate]titleLabel]text]isEqualToString:@"Lock Information"] && ![[self detailItem]isSet]){
        /*
        Weight *w = [[Weight alloc]initWithFloat:[[[self textFieldWeight]text]floatValue]
                                            unit:(int)[[self segWeightUnits]selectedSegmentIndex]];
        Height *h = [[Height alloc]initWithFloat:[[[self textFieldHeight]text]floatValue]
                                            unit:(int) [[self segHeightUnits]selectedSegmentIndex]];
        Gender *ge = [[Gender alloc]initWithInt:(int)[[self segGender]selectedSegmentIndex]];
        
        Amputations *am = [[Amputations alloc]initWithBools_left_lower_leg:lll left_upper_leg:lul left_lower_arm:lla left_upper_arm:lua right_lower_leg:rll right_upper_leg:rul right_lower_arm:rll right_upper_arm:rul];
        
        Age *age = [[Age alloc] initWithInteger:(int)[[[self textFieldAge]text]integerValue]];
        BasicInformation *ba = [[BasicInformation alloc] initWithWeight:w height:h gender:ge amputations:am age:age];
        [ba setIsSet:YES];
        [[self detailItem]postDidChangeNotification];
        [self setDetailItem:ba];
        [ba postDidChangeNotification];
        
        self.detailItem = [[BasicInformation alloc]initWithWeight:w height:h gender:ge amputations:am age:age];
        [[self detailItem] setIsSet:YES];
        */
        
        [[self detailItem]setIsSet:YES];
        [[ self detailItem]setWeight:[[Weight alloc]initWithFloat:[[[self textFieldWeight]text]floatValue] unit: (int)[[ self segWeightUnits]selectedSegmentIndex]]];
        [[ self detailItem] setHeight:[[Height alloc]initWithFloat:[[[self textFieldHeight] text] floatValue] unit: (int)[[ self segHeightUnits]selectedSegmentIndex]]];
        [[self detailItem]setAge:[[Age alloc]initWithInteger:(int)[[[self textFieldAge]text]integerValue]]];
        if ([[self segGender]selectedSegmentIndex] == 0)
            [[self detailItem]setGender:[[Gender alloc]initWithChar:'m']];
        else if ([[self segGender]selectedSegmentIndex] == 1)
            [[self detailItem]setGender:[[Gender alloc]initWithChar:'f']];
        if (lla)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"left_lower_arm"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_lower_arm"];
        if (lua)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"left_upper_arm"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm"];
        if (lll)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"left_lower_leg"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_lower_leg"];
        if (lul)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"left_upper_leg"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg"];
        
        if (rla)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"right_lower_arm"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_lower_arm"];
        if (rua)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"right_upper_arm"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm"];
        if (rll)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"right_lower_leg"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_lower_leg"];
        if (rul)
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:YES] forKey:@"right_upper_leg"];
        else
            [[[[self detailItem]amputations]amps]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg"];
        if (lua_checked_first) [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:YES] forKey:@"left_upper_arm_checked_first"];
        else [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_arm_checked_first"];
        if (rua_checked_first) [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:YES] forKey:@"right_upper_arm_checked_first"];
        else [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_arm_checked_first"];
        if (lul_checked_first) [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:YES] forKey:@"left_upper_leg_checked_first"];
        else [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:NO] forKey:@"left_upper_leg_checked_first"];
        if (rul_checked_first) [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:YES] forKey:@"right_upper_leg_checked_first"];
        else [[[[self detailItem]amputations]checkOrder]setValue:[NSNumber numberWithBool:NO] forKey:@"right_upper_leg_checked_first"];
         
         
        
        [[self buttonValidate]setTitle:@"Unlock Information" forState:UIControlStateNormal];
        for (UIControl* con in enabledViews){
            [con setEnabled:NO];
        }
        [[self detailItem]postDidChangeNotification];
        
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
   [self.view endEditing:YES];
    [recognizer setEnabled:NO];
    //[self.segGender endEditing:YES];
    //[textFieldAge resignFirstResponder];
    //[textFieldHeight resignFirstResponder];
    //[textFieldWeight resignFirstResponder];
    //[segGender resignFirstResponder];
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [recognizer setEnabled:YES];
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


-(void)hideKeyboard
{
    [textFieldWeight resignFirstResponder];
    [recognizer setEnabled:NO];
    //[textFieldWeight]
}

@end
