//
//  ViewController.h
//  NotificationLocalData
//
//  Created by Ty Votey on 5/9/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

- (IBAction)Cancel:(id)sender;
- (IBAction)Save:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *txtItem;

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end
