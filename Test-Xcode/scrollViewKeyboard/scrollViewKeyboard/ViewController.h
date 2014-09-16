//
//  ViewController.h
//  scrollViewKeyboard
//
//  Created by Ty Votey on 7/15/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet TPKeyboardAvoidingScrollView *myscrollView;
//@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtPwd;
@property (strong, nonatomic) IBOutlet UITextField *txtDes;
@property (strong, nonatomic) IBOutlet UITextField *txttext1;
@property (strong, nonatomic) IBOutlet UITextField *txtTest;

@property (nonatomic,retain) UIToolbar * toolbar;

@end
