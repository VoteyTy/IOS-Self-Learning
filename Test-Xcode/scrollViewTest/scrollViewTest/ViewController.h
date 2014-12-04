//
//  ViewController.h
//  scrollViewTest
//
//  Created by Ty Votey on 9/29/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scView;

@end
