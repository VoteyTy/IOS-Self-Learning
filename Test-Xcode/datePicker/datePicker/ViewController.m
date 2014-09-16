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
@synthesize datePicker;
@synthesize pickerViewPopup;


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
    [textField resignFirstResponder];
    if (textField == txtDOB)
    {
        
        [self.view endEditing:YES];
        
        pickerViewPopup = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil];
        datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0,42, 320, 120)];
        datePicker.datePickerMode = UIDatePickerModeDate;
        datePicker.hidden = NO;
        
        UIToolbar *pickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        pickerToolbar.barStyle = UIBarStyleBlackOpaque;
        [pickerToolbar sizeToFit];
        
        NSMutableArray *barItems = [[NSMutableArray alloc] init];
        
        // add tabBar Button Cancel and Done in datePicker
        UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonPressed:)];
        [barItems addObject:cancelBtn];
        UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        [barItems addObject:flexSpace];
        UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(donePicker:)];
        [barItems addObject:doneBtn];
        
        [pickerToolbar setItems:barItems animated:YES];
        
        [pickerViewPopup addSubview:pickerToolbar];
        [pickerViewPopup addSubview:datePicker];
        [pickerViewPopup showInView:self.view];
        [pickerViewPopup setBounds:CGRectMake(0,0,320, 464)];
        
        return NO;
    }
    return YES;
}
-(void)donePicker:(id)sender
{
    NSDate * date = datePicker.date;
    NSDateFormatter * dateFormate = [[NSDateFormatter alloc] init];
    [dateFormate setDateFormat:@"yyyy-MM-dd"];
    NSString * dateString = [dateFormate stringFromDate:date];
    NSLog(@"DateFormat:%@",dateString);
    txtDOB.text = dateString;
    [pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
    
}
-(void)cancelButtonPressed:(id)sender{
    [pickerViewPopup dismissWithClickedButtonIndex:1 animated:YES];
}

//- (void)datePickerSetDate:(TDDatePickerController*)viewController
//{
//	[self dismissSemiModalViewController:datePickerView];
//    selectedDate = [[NSString stringWithFormat:@"%@", viewController.datePicker.date] substringToIndex:10] ;
//    txtDOB.text = selectedDate;
//    txtDOB.enabled = true;
//}
//
//- (void)datePickerClearDate:(TDDatePickerController*)viewController
//{
//	[self dismissSemiModalViewController:datePickerView];
//    txtDOB.enabled = true;
//	selectedDate = nil;
//}
//
//- (void)datePickerCancel:(TDDatePickerController*)viewController
//{
//	[self dismissSemiModalViewController:datePickerView];
//    txtDOB.enabled = true;
//}


- (IBAction)btnSave:(id)sender {
    NSLog(@"%@",txtDOB.text);
}
@end
