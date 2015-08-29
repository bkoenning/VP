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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat cellHeight = 50;
    TableItem *i = objects[indexPath.row];
    if (![i isSet])
        return cellHeight;
    else{
        CGFloat buffer = 50;
        NSString *text = [i description];
        UIFont *font = [ UIFont systemFontOfSize:15.0f];
        CGFloat height = [text boundingRectWithSize:CGSizeMake(self.tableView.frame.size.width, cellHeight) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName: font} context:nil].size.height;
        return height + buffer;
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    TableItem *thing = objects[indexPath.row];
    if ([thing isKindOfClass:[BasicInformation class]]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"basicInformationCell" forIndexPath:indexPath];
    }
    else if ([thing isKindOfClass:[RenalInformation class]]){
        cell = [tableView dequeueReusableCellWithIdentifier:@"renalInformationCell" forIndexPath:indexPath];
    }
    [[cell detailTextLabel]setNumberOfLines:0];
    [[cell detailTextLabel] setLineBreakMode:NSLineBreakByWordWrapping];
    NSMutableAttributedString *atr = [[NSMutableAttributedString alloc]initWithString:[thing tableHeader]];
    [atr addAttributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)} range:NSMakeRange(0, [atr length])];
    [[cell textLabel]setFont:[UIFont boldSystemFontOfSize:20.0]];
    [[cell textLabel]setAttributedText:atr];
    
    if ([thing isSet]){
        [[cell detailTextLabel]setText:[thing tableDescription]];
    }
    else{
        [[cell detailTextLabel]setText:@""];
    }
    
    

     return cell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

#pragma mark - Navigaton
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier]isEqualToString:@"toBasicInformation"]){
        [[segue destinationViewController]setDetailItem: basicInformation];
    }
    else if ([[segue identifier] isEqualToString:@"toRenalInformation"]){
        [[segue destinationViewController]setDetailItem:renalInformation];
    }
}


-(void)tableItemDidChangeNotification:(NSNotification *)notification
{
    NSUInteger index = [objects indexOfObject:notification.object];
    if (index!=NSNotFound)
    {
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
