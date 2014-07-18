//
//  ViewController.h
//  datePicker
//
//  Created by Ty Votey on 7/16/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDDatePickerController.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtDOB;
@property (strong, nonatomic) IBOutlet TDDatePickerController *datePickerView;
- (IBAction)btnSave:(id)sender;

@end
