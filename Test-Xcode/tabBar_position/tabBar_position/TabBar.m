//
//  TabBar.m
//  tabBar_position
//
//  Created by Ty Votey on 7/7/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "TabBar.h"
#import "TabBarSecond.h"
#import "TabBarThir.h"

@interface TabBar ()

@end

@implementation TabBar

@synthesize tabBarIndex;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"view1.png"] tag:0];
        
//        [self.tabBarItem setImageInsets:UIEdgeInsetsMake(10, 0, 0, 0)];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /****************** First ways is not work because tabBar need to implement on file AppDelegate.m ********************/
    
//    UITabBarController * tabBars = [[UITabBarController alloc] init];
//    NSMutableArray *localViewControllersArray = [[NSMutableArray alloc] initWithCapacity:3];
//    
//    
//    TabBarSecond *homeTab = [[TabBarSecond alloc] init];
//    UINavigationController *homeNavBar=[[UINavigationController alloc]initWithRootViewController:homeTab];
//    //    homeNavBar.tabBarItem.title=@"Home";
//    //    homeNavBar.tabBarItem.image=[UIImage imageNamed:@"view1.png"];
//    //homeNavBar.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@"view1.png"] tag:0];
// 
//    
//    TabBarThir * news=[[TabBarThir alloc]initWithNibName:@"" bundle:nil];
//    UINavigationController * NavBar=[[UINavigationController alloc]initWithRootViewController:news];
//    //    NavBar.title=@"My Hospital";
//    //    NavBar.tabBarItem.image=[UIImage imageNamed:@"view2.png"];
//    NavBar.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"view2.png"] tag:1];
//    
//   
//    TabBar * camera=[[TabBar alloc]initWithNibName:@"" bundle:nil];
//    UINavigationController * tabcamera=[[UINavigationController alloc]initWithRootViewController:camera];
//    //    NavBar.title=@"My Hospital";
//    //    NavBar.tabBarItem.image=[UIImage imageNamed:@"view2.png"];
//    tabcamera.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"view3.png"] tag:2];
//    
//    [localViewControllersArray addObject:homeNavBar];
//    [localViewControllersArray addObject:NavBar];
//    [localViewControllersArray addObject:tabcamera];
// 
//    tabBars.viewControllers = localViewControllersArray;
//    //tabBars.view.autoresizingMask=(UIViewAutoresizingFlexibleHeight);
//    [self.view addSubview:tabBars.view];
    
    //*******second way is not work because tabBar need to implement on file AppDelegate.m ********//
    
    //    TabBar * first = [[TabBar alloc] init];
    //    TabBarSecond *second = [[TabBarSecond alloc]init];
    //    TabBarThir *third = [[TabBarThir alloc] init];
    //
    //    first.title = @"First";
    //    second.title = @"Second";
    
    //    first.tabBarItem.image = [UIImage imageNamed:@"view2.png"];
    //    second.tabBarItem.image = [UIImage imageNamed:@"view1.png"];
    //    third.tabBarItem.image = [UIImage imageNamed:@"view3.png"];
    //
    //    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    //    tabBarController.view.frame = CGRectMake(0, 20,320, 540);
    //
    //    [tabBarController setViewControllers:[NSArray arrayWithObjects: first,second,third,nil]];
    //
    //    [self.view addSubview:tabBarController.view];

    
}


//- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
//    NSLog(@"didSelectItem: %d", item.tag);
//    
//    [tabBar setSelectedItem:[tabBar.items objectAtIndex:item.tag]];
//}
//
//- (void)activateTab:(int)index {
//   
//}

//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//{
//    int index = [tabBarController.viewControllers indexOfObject:viewController];
//    tabBarIndex = index;
//
//    NSLog(@"Tab index = %i", tabBarIndex);
//
//}
//- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
//{
//    if (item.tag == 0)
//    {
//        NSLog(@"Home Page !");
//        
//    }
//    else if (item.tag == 1)
//    {
//        NSLog(@"Navigator Page !");
//    }
//    else NSLog(@"Erro");
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
