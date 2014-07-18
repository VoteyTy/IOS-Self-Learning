//
//  AppDelegate.m
//  tabBar_position
//
//  Created by Ty Votey on 7/7/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "AppDelegate.h"
#import "TabBar.h"
#import "TabBarSecond.h"
#import "TabBarThir.h"

@implementation AppDelegate
@synthesize tabBarIndex;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.window.backgroundColor = [UIColor whiteColor];
    
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:1.0 green:91.0/255.0 blue:84.0/255.0 alpha:1.0]];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:1.0 green:91.0/255.0 blue:84.0/255.0 alpha:1.0]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    //tabBarController.view.frame = CGRectMake(0, 20,320, 540);
    
    TabBar * first = [[TabBar alloc] init];
    TabBarSecond *second = [[TabBarSecond alloc]init];
    TabBarThir *third = [[TabBarThir alloc] init];
    
//    third.title = @"third";
//    second.title = @"Second";
//    second.tabBarItem.image = [UIImage imageNamed:@"view1.png"];
//    third.tabBarItem.image = [UIImage imageNamed:@"view3.png"];
    
    [tabBarController setViewControllers:[NSArray arrayWithObjects: first,second,third,nil]];
    [self.window setRootViewController:tabBarController];
    
    
    NSInteger index = 1;
    
    for (UIViewController* controller in tabBarController.viewControllers) {
        
        // Set the image of the tab bar items.
        NSString* tabImageName = [NSString stringWithFormat:@"tab%d", index++];
        [controller.tabBarItem setImage:[[UIImage imageNamed:tabImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        
        // Apply the following insets so all tab images look vertically centered.
        UIEdgeInsets insets = UIEdgeInsetsMake(5.0, 20.0, -5.0, 20.0);
        [controller.tabBarItem setImageInsets:insets];
        
    }
    
    // Set the selection indicator image.
    [[tabBarController tabBar] setSelectionIndicatorImage:[[UIImage imageNamed:@"view1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    

    
    [self.window makeKeyAndVisible];
    return YES;
 
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//{
//    int index = [tabBarController.viewControllers indexOfObject:viewController];
//
//        tabBarIndex = index;
//        NSLog(@"Tab index = %i", tabBarIndex);
// 
//}
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    
//    int index = [tabBarController.viewControllers indexOfObject:viewController];
//    tabBarIndex = index;
    if (tabBarController.selectedIndex == 0) {
        
         NSLog(@"HI TabBar");
    }
    
   

}




@end
