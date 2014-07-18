//
//  ViewController.m
//  datePicker
//
//  Created by Ty Votey on 7/16/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSString * selectedDate;
}

@end

@implementation ViewController
@synthesize txtDOB;
@synthesize datePickerView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title =@"Date Picker";
        //self.txtDOB.inputView = datePickerView;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   // txtDOB.text =
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if (textField == txtDOB)
    {
        [self presentSemiModalViewController:datePickerView CurrentViewController:self];
        return NO;
        //return YES;
    }
    return YES;
}


- (void)datePickerSetDate:(TDDatePickerController*)viewController
{
	[self dismissSemiModalViewController:datePickerView];
    selectedDate = [[NSString stringWithFormat:@"%@", viewController.datePicker.date] substringToIndex:10] ;
    txtDOB.text = selectedDate;
    txtDOB.enabled = true;
}

- (void)datePickerClearDate:(TDDatePickerController*)viewController
{
	[self dismissSemiModalViewController:datePickerView];
    txtDOB.enabled = true;
	selectedDate = nil;
}

- (void)datePickerCancel:(TDDatePickerController*)viewController
{
	[self dismissSemiModalViewController:datePickerView];
    txtDOB.enabled = true;
}


- (IBAction)btnSave:(id)sender {
    NSLog(@"%@",txtDOB.text);
}
@end
