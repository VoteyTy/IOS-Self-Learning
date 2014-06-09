//
//  ViewController.h
//  groupTableView
//
//  Created by Chanratha LY on 5/7/14.
//  Copyright (c) 2014 Chanratha LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,strong) NSDictionary * tableData;
@property (nonatomic,strong) NSString * keys;
@property(nonatomic,strong) NSArray * arrays;

@property (strong, nonatomic) IBOutlet UIView *lblConfirmDeactivateAgree;
@property (strong, nonatomic) IBOutlet UILabel *lblConfirmDeactivateDisagree;
@property (strong, nonatomic) IBOutlet UITableView *tblTest;

@end
