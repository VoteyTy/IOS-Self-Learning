//
//  ViewController.m
//  textFieldPaddingImage
//
//  Created by Ty Votey on 9/3/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    UITextField *myTextField = [[UITextField alloc]initWithFrame:CGRectMake(10, 50, 200, 50)];
    myTextField.delegate = self;
    myTextField.placeholder = @"Placeholder";
    [myTextField setFont:[UIFont systemFontOfSize:14]];
    myTextField.returnKeyType = UIReturnKeyDone;
    myTextField.keyboardType = UIKeyboardTypeDefault;
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    myTextField.leftView = paddingView;
    myTextField.leftViewMode = UITextFieldViewModeAlways;
    myTextField.background = [[UIImage imageNamed:@"test.jpg"] stretchableImageWithLeftCapWidth:7 topCapHeight:17];
    [self.view addSubview:myTextField];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
