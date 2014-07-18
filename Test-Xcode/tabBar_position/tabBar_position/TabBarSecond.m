//
//  TabBarSecond.m
//  tabBar_position
//
//  Created by Ty Votey on 7/8/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "TabBarSecond.h"

@interface TabBarSecond ()

@end

@implementation TabBarSecond
@synthesize lbtabBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"view2.png"] tag:1];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.lbtabBar.text =  @"TabBarSecond";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
