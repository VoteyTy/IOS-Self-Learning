//
//  TabBarThir.m
//  tabBar_position
//
//  Created by Ty Votey on 7/8/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "TabBarThir.h"

@interface TabBarThir ()

@end

@implementation TabBarThir

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"view3.png"] tag:2];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
