//
//  RecipesViewController.h
//  AFNetworkingIOS
//
//  Created by Ty Votey on 6/11/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipesViewController : UIViewController
- (IBAction)btnAdd:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *tbleview;


@end
