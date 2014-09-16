//
//  ViewController.h
//  groupTableView
//
//  Created by Chanratha LY on 5/7/14.
//  Copyright (c) 2014 Chanratha LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *tblTest;
@end
