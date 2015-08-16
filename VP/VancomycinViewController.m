//
//  VancomycinViewController.m
//  Vanc4
//
//  Created by Rebecca Koenning on 5/29/15.
//  Copyright (c) 2015 Rebecca Koenning. All rights reserved.
//

#import "VancomycinViewController.h"
#import "BasicInformation.h"
#import "TableItem.h"
#import "BasicInformationViewController.h"
#import "RenalInformation.h"
#import "RenalInformationViewController.h"

@interface VancomycinViewController ()
{
    NSMutableArray *objects;
    BasicInformation *basicInformation;
    RenalInformation *renalInformation;
}
-(void)tableItemDidChangeNotification:(NSNotification*)notification;

@end

@implementation VancomycinViewController

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    objects = nil;
    basicInformation = nil;
}


-(void)awakeFromNib
{
    basicInformation = [[BasicInformation alloc]init];
    renalInformation = [[RenalInformation alloc] init];
    //basicInformation = nil;
    objects = [@[basicInformation, renalInformation] mutableCopy];
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(tableItemDidChangeNotification:)
                                                name:kTableItemChanged
                                              object:nil];
    [super awakeFromNib];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [objects count];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"basicInformationCell" forIndexPath:indexPath];
    UITableViewCell *cell;
    TableItem *thing = objects[indexPath.row];
    if (indexPath.row == 0){
        cell = [tableView dequeueReusableCellWithIdentifier:@"basicInformationCell" forIndexPath:indexPath];
        if ([basicInformation isSet]){
            [[cell detailTextLabel] setText:[basicInformation description]];
        }
        else{
            [[cell detailTextLabel]setText:@""];
        }
    }
    else if (indexPath.row == 1){
        cell = [tableView dequeueReusableCellWithIdentifier:@"renalInformationCell" forIndexPath:indexPath];
    }
    //if (thing == basicInformation && [basicInformation isSet]){
        //NSLog(@"%@", @"Equals basic information");
      //  [[cell detailTextLabel]setText:[basicInformation description]];
        
   // }
    //else{
      //  [[cell detailTextLabel]setText:@""];
   // }
    [[cell textLabel]setText:[thing tableHeader]];
    return cell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier]isEqualToString:@"toBasicInformation"]){
        //NSIndexPath *indexPath = [[self tableView]indexPathForSelectedRow];
        //BasicInformation *item = objects[indexPath.row];
        //NSLog(@"%@",[item description]);
        [[segue destinationViewController]setDetailItem: basicInformation];
    }
    else if ([[segue identifier] isEqualToString:@"toRenalInformation"]){
        [[segue destinationViewController]setDetailItem:renalInformation];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)tableItemDidChangeNotification:(NSNotification *)notification
{
    NSUInteger index = [objects indexOfObject:notification.object];
    if (index!=NSNotFound)
    {
        // The MyWhatsit object that changed in our table; tell the table view it has been updated
        NSIndexPath *path = [NSIndexPath indexPathForItem:index inSection:0];
        [self.tableView reloadRowsAtIndexPaths:@[path]
                              withRowAnimation:UITableViewRowAnimationNone];
    }
    
}
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        BasicInformation *object = objects[indexPath.row];
        self.detailViewController.detailItem = object;
    }
}
 */

@end
