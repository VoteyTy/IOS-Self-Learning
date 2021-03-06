//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Ty Votey on 5/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

// define instance variable

@synthesize tableData = _tableData;

NSMutableArray * tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
 
//    self.tableData = [[NSArray alloc] initWithObjects:@"Java",@"PHP",@"JS",@"C", nil];
    
    self.tableData= [NSMutableArray arrayWithObjects:@"",@"MINE",@"JS",@"C",@"Java",@"CMS",@"JQ",@"C++",@"HTML",@"CSS", nil];
    
    // method for count item of array How many rows in section
    
       
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%i", [self.tableData count]);
    return [self.tableData count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"image.jpg"];
    return cell;
}



//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"row=%i",indexPath.row);
//    NSLog(@"data: %@", [self.tableData objectAtIndex:indexPath.row]);
//    
//    
//    // Remove the row from data model
//    //[self.tableData removeObjectAtIndex:indexPath.row];
//    [self.tableData removeAllObjects];
//    
//    // Request table view to reload
//    [tableView reloadData];
//}


// select UIAlertView of option

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    NSLog(@"row=%i", indexPath.row); // show index tableData on output of Xcode interface

    NSLog(@"data: %@", [self.tableData objectAtIndex:indexPath.row]); // show value of tableData on output of Xcode interface

    NSString * callSelect = [[NSString alloc] initWithFormat:@"%@", [self.tableData objectAtIndex:indexPath.row]];

    
    UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"Row Selected" message:[NSString stringWithFormat:@"You've selected a row %@", callSelect] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];

    
    
    [tableData objectAtIndex:indexPath.row];

    
    // Display Alert Message
    [messageAlert show];

    
    
    // end UIAlertView of option

    
    
    // mark select option

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];

    if (cell.accessoryType == UITableViewCellAccessoryCheckmark)

    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    
// cell.accessoryType = UITableViewCellAccessoryDetailButton;
//
////cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//// cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    
//// cell.accessoryType = UITableViewCellAccessoryNone;

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
