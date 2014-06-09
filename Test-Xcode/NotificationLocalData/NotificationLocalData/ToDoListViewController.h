//
//  ToDoListViewController.h
//  NotificationLocalData
//
//  Created by Ty Votey on 5/9/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

- (IBAction)btnAdd:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tblTask;


@end
