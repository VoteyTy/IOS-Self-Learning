//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Ty Votey on 5/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SearchSimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
 NSArray *sortedArray;

// define instance variable
@synthesize tableData = _tableData;
@synthesize tableView;
@synthesize searchResults;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
 
// self.tableData = [[NSArray alloc] initWithObjects:@"Java",@"PHP",@"JS",@"C", nil];
    
    self.tableData= [NSMutableArray arrayWithObjects:@"IOS",@"PHP",@"JS",@"C",@"Java",@"CMS",@"JQ",@"C++",@"HTML",@"CSS",@"JS",@"C",@"Java",@"CMS",@"JQ",@"C++", nil];
    
   // sorted Array object
    sortedArray = [self.tableData sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];

    NSLog(@"Array: %@",sortedArray);
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        
        NSLog(@"%i", [self.tableData count]);
        return [searchResults count];
        
    }else{
        return [self.tableData count];
    
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        
        cell.textLabel.text = [searchResults objectAtIndex:indexPath.row];
        
    }else{
        
        cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:@"image.jpg"];
    
    }
    

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

    
    
    [self.tableData objectAtIndex:indexPath.row];

    
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



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        SearchSimpleTableViewController *destViewController = segue.destinationViewController;
        
        NSIndexPath *indexPath = nil;
        if ([self.searchDisplayController isActive]) {
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            destViewController.recipeName = [searchResults objectAtIndex:indexPath.row];
            
        } else {
            indexPath = [tableView indexPathForSelectedRow];
            destViewController.recipeName = [self.tableData objectAtIndex:indexPath.row];
        }
    }
    
}

// search beginning coding


-(void)fileterContenForSearchText:(NSString*)searchText scope:(NSString*)scope{
    NSPredicate *resultPredicate = [NSPredicate
                                    predicateWithFormat:@"SELF contains[cd] %@",
                                    searchText];
    
    self.searchResults = [self.tableData filteredArrayUsingPredicate:resultPredicate];


}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller
shouldReloadTableForSearchString:(NSString *)searchString
{
    NSLog(@"%@",searchString);
    
    //[self fileterContenForSearchText:searchString scope:(NSString *)];
    
    [self fileterContenForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
