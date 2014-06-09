//
//  TaskDetailViewController.h
//  NotificationLocalData
//
//  Created by Ty Votey on 5/9/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
@property (strong, nonatomic) UILocalNotification *localNotification;
- (IBAction)goBack:(id)sender;
@end
