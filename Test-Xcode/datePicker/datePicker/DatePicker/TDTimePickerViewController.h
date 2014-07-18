//
//  TDTimePickerViewController.h
//  Gift
//
//  Created by apple on 7/16/13.
//  Copyright (c) 2013 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import	"TDSemiModal.h"

@interface TDTimePickerViewController : TDSemiModalViewController{
    id delegate;
}

@property (nonatomic, strong) IBOutlet id delegate;
@property (nonatomic, strong) IBOutlet UIDatePicker* timePicker;

-(IBAction)saveDateEdit:(id)sender;
-(IBAction)clearDateEdit:(id)sender;
-(IBAction)cancelDateEdit:(id)sender;
@end

@interface NSObject (TDTimePickerControllerDelegate)
-(void)timePickerSetDate:(TDTimePickerViewController*)viewController;
-(void)timePickerClearDate:(TDTimePickerViewController*)viewController;
-(void)timePickerCancel:(TDTimePickerViewController*)viewController;
@end
