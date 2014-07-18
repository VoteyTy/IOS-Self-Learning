//
//  ViewController.m
//  webViewURL
//
//  Created by Ty Votey on 7/14/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webView;

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
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.topItem.title=@"";
    
    //NSString *fullURL = [NSString stringWithFormat:@"https://www.google.com"];
    //NSString *fullURL = [NSString stringWithFormat:@"https://www.pinterest.com/"];
    NSString *fullURL = [NSString stringWithFormat:@"http://gift-i.com/pages/help/"];
    NSURL *url = [NSURL URLWithString:fullURL];
    NSLog(@"URL:%@",url);
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    NSLog(@"URL request:%@",requestObj);
    [webView loadRequest:requestObj];
    
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
//    // Do any additional setup after loading the view from its nib.
//    AppDelegate *objAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    NSString *fullURL = [NSString stringWithFormat:@"%@?lang=%@", @"http://gift-i.com/pages/help", objAppDelegate.currentLanguage];
//    NSURL *url = [NSURL URLWithString:fullURL];
//    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
//    NSLog(@"URL request:%@",url);
//    [webView loadRequest:requestObj];
//    [self.navigationController setNavigationBarHidden:YES animated:NO];
//    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
