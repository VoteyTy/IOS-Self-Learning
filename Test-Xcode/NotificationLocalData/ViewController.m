//
//  ViewController.m
//  NotificationLocalData
//
//  Created by Ty Votey on 5/9/14.
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
    
    self.txtItem.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Cancel:(id)sender {
    
    [super dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Save:(id)sender {
    
    [self.txtItem resignFirstResponder];
    
    NSDate *pickerDate = [self.datePicker date];
    
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = pickerDate;
    localNotification.alertBody = self.txtItem.text;
    localNotification.alertAction = @"Show me the item";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //NSLog(@"row=%i", [[[UIApplication sharedApplication] scheduledLocalNotifications] count]);
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    [self.txtItem resignFirstResponder];
    return NO;
}

@end
