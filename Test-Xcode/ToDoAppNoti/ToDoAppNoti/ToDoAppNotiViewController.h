//
//  ToDoAppNotiViewController.h
//  ToDoAppNoti
//
//  Created by Ty Votey on 5/7/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToDoAppNotiViewController : UIViewController <UITextFieldDelegate>

-(IBAction)cancel:(id)sender;
-(IBAction)save:(id)sender;

@property (nonatomic,weak)IBOutlet UITextField *itemText;
@property (nonatomic,strong)IBOutlet UIDatePicker * view;



@end
