//
//  ViewController.h
//  implementWebView
//
//  Created by Ty Votey on 7/23/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)btnClick:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtFeedback;

@end
