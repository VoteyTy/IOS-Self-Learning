//
//  ViewController.h
//  datePicker
//
//  Created by Ty Votey on 7/16/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDDatePickerController.h"

@interface ViewController : UIViewController<UIActionSheetDelegate,UITextFieldDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtDOB;
@property (strong, nonatomic) IBOutlet TDDatePickerController *datePickerView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIActionSheet *pickerViewPopup;
- (IBAction)btnSave:(id)sender;
<<<<<<< HEAD
@property (weak, nonatomic) IBOutlet UITextField *lbTitle;
=======
- (IBAction)btnDelete:(id)sender;
>>>>>>> master

@end
