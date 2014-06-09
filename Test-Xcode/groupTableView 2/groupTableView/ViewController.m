//
//  ViewController.m
//  groupTableView
//
//  Created by Chanratha LY on 5/7/14.
//  Copyright (c) 2014 Chanratha LY. All rights reserved.
//

#import "ViewController.h"
#import "RadioButton.h"

@interface ViewController ()

@end

@implementation ViewController

bool agree;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    agree = NO;
    
    [self.view setBackgroundColor:[UIColor colorWithRed:244.0/255.0 green:239.0/255.0 blue:234.0/255.0 alpha:1.0]];
    
    NSString *paths = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    
    NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:paths];
    
    self.tableData = dict;
    
    self.arrays = [[_tableData allKeys]sortedArrayUsingSelector:@selector(compare:)];

    RadioButton *rb1 = [[RadioButton alloc] initWithGroupId:@"agreement" index:0];
    RadioButton *rb2 = [[RadioButton alloc] initWithGroupId:@"agreement" index:1];
    
    
    
    
    rb1.frame = CGRectMake(50, 370, 20, 50);
    rb2.frame = CGRectMake(50, 400, 20,20);
    
    
    [self.view addSubview:rb1];
    [self.view addSubview:rb2];
    rb1 = nil;
    rb2 = nil;
    [RadioButton addObserverForGroupId:@"agreement" observer:self];


}

-(void)radioButtonSelectedAtIndex:(NSUInteger)index inGroup:(NSString *)groupId{
    NSLog(@"changed to %d in %@",index,groupId);
    switch (index) {
        case 0:
            agree = NO;
            break;
            
        default:
            agree = YES;
            break;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 2;
//}
//
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    if (section==0) return @"AA";
//    return @"BB";
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    if (section==0) return 1;
//    return 2;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
//    
//    if (indexPath.section==0)
//    {
//        cell.textLabel.text = @"aa row";
//    }
//    else
//    {
//        cell.textLabel.text = [NSString stringWithFormat:@"bb row %i", indexPath.row];
//    }
//    
//    return cell;
//}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.arrays objectAtIndex:section];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [[self.tableData objectForKey:[self.arrays objectAtIndex:section]] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"%i", [self.arrays count]);
    return [self.arrays count];

}



-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
    
    
    NSArray *tmp = [self.tableData objectForKey:[self.arrays objectAtIndex:indexPath.section]];
    
    cell.textLabel.text = [tmp objectAtIndex:indexPath.row];
    // cell.textLabel.text = @"it works.";
    
    return cell;
}


@end
