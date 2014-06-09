//
//  GroupTableDataViewController.m
//  GroupTableData
//
//  Created by Ty Votey on 5/6/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "GroupTableDataViewController.h"

@interface GroupTableDataViewController ()

@end

@implementation GroupTableDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *paths = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    NSLog(@"%@",paths);
    
    NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:paths];
    
    self.tableData = dict;
    
    self.arrays = [[_tableData allKeys]sortedArrayUsingSelector:@selector(compare:)];
    
   // self.keys = _arrays;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.tableData objectForKey:[self.arrays objectAtIndex:section]];
    //return @"Hi";
    
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //NSLog(@"hello");
        if (section==0) return 5;
        else if (section==1) return 5;
        else if (section==2) return 5;
        else return 3;
    //return 1;

    return [[self.tableData objectForKey:[self.arrays objectAtIndex:section]] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"%i", [self.arrays count]);
    return [self.arrays count];
    //return 4;
}



-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
    
    
    NSArray *tmp = [self.tableData objectForKey:[self.arrays objectAtIndex:indexPath.section]];
    
    cell.textLabel.text = [tmp objectAtIndex:indexPath.row];
   // cell.textLabel.text = @"it works.";
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
