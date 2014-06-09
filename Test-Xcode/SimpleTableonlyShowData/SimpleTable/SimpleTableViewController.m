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


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
 
//    self.tableData = [[NSArray alloc] initWithObjects:@"Java",@"PHP",@"JS",@"C", nil];
    
    self.tableData= [NSMutableArray arrayWithObjects:@"Linux",@"PHP",@"JS",@"C",@"Java",@"CMS",@"JQ",@"C++",@"HTML",@"CSS", nil];
    
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
    //cell.imageView.image = [UIImage imageNamed:@"image.jpg"];
    return cell;
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{

    
    [self.tableData removeObjectAtIndex:indexPath.row];
    
   // if (editingStyle == UITableViewCellEditingStyleDelete) {
        
       // [self.tableData removeObjectAtIndex:indexPath.row];
        
        //[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    //}
    
    //    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];

    
   [tableView reloadData];
    
}

- (IBAction)btnDelete:(id)sender {
    
    NSLog(@"HI");
    
    //[tableView setAnimationDelegate:indexPath.row];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    NSString * DelMessage = [[NSString alloc] initWithFormat:@"%@", [self.tableData objectAtIndex:indexPath.row]];
//    [self.tableData removeObjectAtIndex:indexPath.row];
//    
//    UIAlertView * DelMessageAlert = [[UIAlertView alloc] initWithTitle:@"Row have been Delete" message:[NSString stringWithFormat:@"%@",DelMessage] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    
//    [DelMessageAlert show];
//    
//    [tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
