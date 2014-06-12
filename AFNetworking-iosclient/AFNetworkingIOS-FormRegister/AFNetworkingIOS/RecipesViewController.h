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
@property (strong, nonatomic) IBOutlet UILabel *lblText;
@property (strong, nonatomic) IBOutlet UITextField *txtname;
@property (strong, nonatomic) IBOutlet UITextField *txtgender;
@property (strong, nonatomic) IBOutlet UITextField *txtemail;
@property (strong, nonatomic) IBOutlet UITextField *txtpwd;
@property (strong, nonatomic) IBOutlet UITextField *txtdob;
@property (strong, nonatomic) IBOutlet UITextField *txtlocation;

@end
