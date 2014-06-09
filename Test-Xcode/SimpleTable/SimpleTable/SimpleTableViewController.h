//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by Ty Votey on 5/2/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,retain) NSMutableArray *tableData;

@property(nonatomic,strong) NSArray *searchResults;


@end
