//
//  ToDoListViewController.m
//  NotificationLocalData
//
//  Created by Ty Votey on 5/9/14.
//  Copyright (c) 2014 Ty Votey. All rights reserved.
//

#import "ToDoListViewController.h"
#import "ViewController.h"
#import "TaskDetailViewController.h"

@interface ToDoListViewController ()

- (void)reloadTable;

@end

@implementation ToDoListViewController

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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTable) name:@"reloadData" object:nil];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView

{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"row=%i", [[[UIApplication sharedApplication] scheduledLocalNotifications] count]);
//    NSLog [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
    return [[[UIApplication sharedApplication] scheduledLocalNotifications] count];
    

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    // Get list of local notifications
    NSArray *localNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
    UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
    
    // Display notification info
    [cell.textLabel setText:localNotification.alertBody];
    [cell.detailTextLabel setText:[localNotification.fireDate description]];
    
    return cell;
}




-(void)reloadTable
{
    [self.tblTask reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAdd:(id)sender {
    
    ViewController * vc = [[ViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

//   NSString * callselect = [[NSString alloc]initWithFormat:@"%@",[[UIApplication sharedApplication] scheduledLocalNotifications]];
//    NSArray *callselect = [[NSArray alloc]init];
//   
//    callselect= [[UIApplication sharedApplication] scheduledLocalNotifications];
//   
//    
//    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Detail Reminder" message:[NSString stringWithFormat:@"%@",callselect] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
//    
////    [[UIApplication sharedApplication] scheduledLocalNotifications],indexPath.row;
//    
//    [messageAlert show];
//    
//    UITableViewCell *cell1 = [tableView cellForRowAtIndexPath:indexPath];
//    
//    cell1.accessoryType = UITableViewCellAccessoryCheckmark;
    
    
    // Get list of local notifications
    NSArray *localNotifications = [[UIApplication sharedApplication] scheduledLocalNotifications];
    UILocalNotification *localNotification = [localNotifications objectAtIndex:indexPath.row];
    
    TaskDetailViewController *vcTaskDetail = [[TaskDetailViewController alloc] init];
    vcTaskDetail.localNotification = localNotification;
    
//    self.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
//    self.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vcTaskDetail animated:YES completion:nil];
}

@end
