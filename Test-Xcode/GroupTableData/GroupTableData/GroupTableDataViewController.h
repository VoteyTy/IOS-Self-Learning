//
//  GroupTableDataViewController.h
//  GroupTableData
//
//  Created by Ty Votey on 5/6/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupTableDataViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) NSDictionary * tableData;
@property (nonatomic,strong) NSString * keys;
@property(nonatomic,strong) NSArray * arrays;

@end
