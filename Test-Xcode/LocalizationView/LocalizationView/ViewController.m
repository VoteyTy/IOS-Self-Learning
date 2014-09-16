//
//  ViewController.m
//  LocalizationView
//
//  Created by Ty Votey on 7/1/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize btnlocal;

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
    
//    //get localized string from appropriate strings file
//    NSString *localizedHelloString = NSLocalizedString(@"HelloKey", @"");
//    
//    //create label - set text property to localized string
//    CGRect localizedLabel_Frame = CGRectMake(20.0f, 40.0f, 280.0f, 44.0f);
//    UILabel *localizedLabel = [[UILabel alloc] initWithFrame:localizedLabel_Frame];
//    localizedLabel.text = localizedHelloString;
//    localizedLabel.font = [UIFont boldSystemFontOfSize:20.0f];
//    
//    //add label to view
//    [self.view addSubview:localizedLabel];
    
    [self.btnlocal setTitle:NSLocalizedString(@"Hello Key", @"")  forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
}
@end
