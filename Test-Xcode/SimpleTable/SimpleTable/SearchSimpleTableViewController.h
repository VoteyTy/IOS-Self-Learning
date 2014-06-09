//
//  SearchSimpleTableViewController.h
//  SimpleTable
//
//  Created by Ty Votey on 5/6/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#ifndef SimpleTable_SearchSimpleTableViewController_h
#define SimpleTable_SearchSimpleTableViewController_h

#import <UIKit/UIKit.h>

@interface SearchSimpleTableViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;

@end


#endif
