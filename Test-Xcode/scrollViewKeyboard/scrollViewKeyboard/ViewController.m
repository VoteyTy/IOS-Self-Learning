//
//  ViewController.m
//  scrollViewKeyboard
//
//  Created by Ty Votey on 7/15/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIButton * doneButton;

}
//@synthesize myscrollView;
@synthesize txtTest;
@synthesize txtDes;
@synthesize txtName;
@synthesize txtPwd;
@synthesize txttext1;
@synthesize myscrollView;
@synthesize toolbar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 44)];
    
//    UIBarButtonItem * doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:nil];
     UIBarButtonItem * spaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
     UIBarButtonItem * closeButton = [[UIBarButtonItem alloc] initWithTitle:@"Close" style:UIBarButtonItemStyleBordered target:self action:@selector(closeKeyboardTool:)];
    
    [toolbar setItems:[[NSArray alloc] initWithObjects: spaceButton,closeButton, nil]];
    
    txtName.inputAccessoryView = toolbar;
    txtPwd.inputAccessoryView = toolbar;
    txtDes.inputAccessoryView = toolbar;
    txtTest.inputAccessoryView = toolbar;
    txttext1.inputAccessoryView = toolbar;
    
   // [myscrollView adjustOffsetToIdealIfNeeded];
}

//- (void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    //[myscrollView adjustOffsetToIdealIfNeeded];
//    [self openKeyboardtxtField:textField];
//}
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//   // [myscrollView adjustOffsetToIdealIfNeeded];
//    [textField resignFirstResponder];
//    [self openKeyboardtxtField:textField];
//    //[self addButtonToKeyboard];
//    return YES;
//}
//
//- (void)openKeyboardtxtField:(UITextField *)textField
//{
//    UIBarButtonItem *btnNext = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Next", @"")  style:UIBarButtonItemStyleBordered target:self action:@selector(closeKeyboardTool:)];
//    
//    UIBarButtonItem *spaceButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    
//    UIBarButtonItem *myButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Close", @"")  style:UIBarButtonItemStyleBordered target:self action:@selector(closeKeyboardTool:)];
//    
//    UIToolbar *extraRow = [[UIToolbar alloc] init];
//    extraRow.barStyle = UIBarStyleBlack;
//    extraRow.translucent = YES;
//    extraRow.tintColor = [UIColor grayColor];
//    [extraRow sizeToFit];
//    NSArray *buttons = [NSArray arrayWithObjects: btnNext,spaceButton, myButton, nil];
//    [extraRow setItems:buttons animated:YES];
//    textField.inputAccessoryView = extraRow;
//}
- (void) closeKeyboardTool: (id) sender
{
    //Where current string is the string that you're appending to in whatever place you need to be keeping track of the current view's string.
    [self.view endEditing:YES];
}


//- (void)addButtonToKeyboard {
//    // create custom button
//    if (doneButton == nil) {
//        doneButton  = [[UIButton alloc] initWithFrame:CGRectMake(0, 163, 106, 53)];
//    }
//    else {
//        [doneButton setHidden:NO];
//    }
//    
//    [doneButton addTarget:self action:@selector(closeKeyboardTool:) forControlEvents:UIControlEventTouchUpInside];
//    // locate keyboard view
//    UIWindow* tempWindow = [[[UIApplication sharedApplication] windows] objectAtIndex:1];
//    UIView* keyboard = nil;
//    for(int i=0; i<[tempWindow.subviews count]; i++) {
//        keyboard = [tempWindow.subviews objectAtIndex:i];
//        // keyboard found, add the button
//        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.2) {
//            if([[keyboard description] hasPrefix:@"<UIPeripheralHost"] == YES)
//                [keyboard addSubview:doneButton];
//        } else {
//            if([[keyboard description] hasPrefix:@"<UIKeyboard"] == YES)
//                [keyboard addSubview:doneButton];
//        }
//    }
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
