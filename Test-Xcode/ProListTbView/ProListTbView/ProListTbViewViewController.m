//
//  ProListTbViewViewController.m
//  ProListTbView
//
//  Created by Ty Votey on 5/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ProListTbViewViewController.h"

@interface ProListTbViewViewController ()

@end

@implementation ProListTbViewViewController

@synthesize tableData;
@synthesize thumbnails;
@synthesize prepTime;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tableData = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    prepTime = [dict objectForKey:@"PrepTime"];
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.prepTime objectAtIndex:indexPath.row];
    

    
    //cell.imageView.image = [UIImage imageNamed:@"image.jpg"];
    cell.imageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    
    
    return cell;
}


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
    
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark){
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    else{
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    
    // cell.accessoryType = UITableViewCellAccessoryDetailButton;
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    // cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    // cell.accessoryType = UITableViewCellAccessoryNone;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
