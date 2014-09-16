//
//  ViewController.h
//  tableViewWithActionsheet
//
//  Created by Ty Votey on 8/26/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tblView;
@end
