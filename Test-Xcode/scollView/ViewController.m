//
//  ViewController.m
//  scollView
//
//  Created by Ty Votey on 5/21/14.
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
    
    UIButton *btnText = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnText.titleLabel.text = @"dafds";
    [btnText addTarget:self action:@selector(CustomFunctio:) forControlEvents:UIControlEventTouchDown];
    [btnText setBackgroundImage:[UIImage imageNamed:@"abc.png" ] forState:UIControlStateNormal];
    //[btnText setTitle:@"OK" forState:UIControlStateNormal];
    
    btnText.frame = CGRectMake(10.0, 10.0, 200.0, 150);
    
    [self.view addSubview:btnText];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)CustomFunctio: (id) sender{
    
    NSLog(@"Click Button");
}



- (IBAction)btn1:(id)sender {
    
    NSLog(@"HI");
}
@end
