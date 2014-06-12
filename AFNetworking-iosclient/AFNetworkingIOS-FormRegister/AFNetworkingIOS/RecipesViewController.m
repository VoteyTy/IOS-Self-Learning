//
//  RecipesViewController.m
//  AFNetworkingIOS
//
//  Created by Ty Votey on 6/11/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "RecipesViewController.h"
#import "APIClientIOS.h"
#import "DetailRecipes.h"

@interface RecipesViewController (){

    NSMutableArray * recordData;
}

@end


@implementation RecipesViewController

@synthesize txtname;
@synthesize txtgender;
@synthesize txtemail;
@synthesize txtdob;
@synthesize txtpwd;
@synthesize txtlocation;

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
 
    
    //[APIClientIOS  sharedClient]
    [[APIClientIOS sharedClient] GET:@"recipes.json" parameters:nil success:^(NSURLSessionDataTask *task, id JSON)
     {
         recordData = [[NSMutableArray alloc]init];
         [recordData addObject:[JSON objectForKey:@"recipes"]];
        NSLog(@"Data %@",recordData);

        // Get JSON data and output
        NSLog(@"First Line:%@", JSON);
        
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
    NSLog(@"Hi name1: %@",txtname.text);
    
    NSArray * arr = [[NSArray alloc] init];
    arr = @[txtname.text, txtgender.text, txtemail.text, txtdob.text, txtpwd.text, txtlocation.text];
    NSLog(@"Array: %@",arr);
    
//    NSArray * getArr = [ arr objectAtIndex:0];
//    NSLog(@"get Data:%@",getArr);
    
    DetailRecipes * arrData = [[DetailRecipes alloc]init];
    [self presentViewController:arrData animated:YES completion:nil];
    arrData.getData = arr;
    
    // Recipe is Model Name
    // name is field in database
    
//    NSDictionary *params = @{@"Recipe[name]": @"nono",
//                            @"Recipe[email]": @"ly@gmail.com",
//                            @"Recipe[password]": @"123"};
//    
//    [[APIClientIOS sharedClient] POST:@"recipes/11.json" parameters:params success:^(NSURLSessionDataTask *task, id responseObject)
//     {
//         // Get JSON data and output
//         NSLog(@"HI Json:%@", responseObject);
//         
//     } failure:^(NSURLSessionDataTask *task, NSError *error)
//     {
//         //output error message
//         NSLog(@"Error: %@", error);
//         
//     }];
    
   
    
    
  
    
}


@end
