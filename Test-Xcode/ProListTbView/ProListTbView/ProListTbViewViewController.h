//
//  ProListTbViewViewController.h
//  ProListTbView
//
//  Created by Ty Votey on 5/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProListTbViewViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,retain) NSArray *tableData;
@property (nonatomic,retain) NSArray *thumbnails;
@property (nonatomic,retain) NSArray *prepTime;


@end
