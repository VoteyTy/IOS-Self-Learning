//
//  RecipesViewController.m
//  AFNetworkingIOS
//
//  Created by Ty Votey on 6/11/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "RecipesViewController.h"
#import "APIClientIOS.h"

@interface RecipesViewController ()

@end

@implementation RecipesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Recipe Title User";
    self.tabBarItem.title = @"New Users";
    
    NSLog(@"%@",self.title);
    
    //[APIClientIOS  sharedClient]
    [[APIClientIOS sharedClient] GET:@"recipes.json" parameters:nil success:^(NSURLSessionDataTask *task, id JSON)
     {
        // Get JSON data and output
        NSLog(@"HI Json:%@", JSON);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error)
    {
        //output error message
        NSLog(@"Error: %@", error);
        
    }];
  
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAdd:(id)sender {
    
    // Recipe is Model Name
    // name is field in database
    
    NSDictionary *params = @{@"Recipe[name]": @"nono",
                            @"Recipe[email]": @"ly@gmail.com",
                            @"Recipe[password]": @"123"};
    
    [[APIClientIOS sharedClient] POST:@"recipes/11.json" parameters:params success:^(NSURLSessionDataTask *task, id responseObject)
     {
         // Get JSON data and output
         NSLog(@"HI Json:%@", responseObject);
         
     } failure:^(NSURLSessionDataTask *task, NSError *error)
     {
         //output error message
         NSLog(@"Error: %@", error);
         
     }];
    
}
@end
