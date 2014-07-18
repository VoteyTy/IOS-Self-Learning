//
//  TabBar.h
//  tabBar_position
//
//  Created by Ty Votey on 7/7/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBar : UIViewController <UITabBarDelegate,UITabBarControllerDelegate>
@property (assign, nonatomic) int tabBarIndex;

@end
